#!/usr/bin/env python3
"""
Limpia las reglas de párpados direccionales que no pueden existir en ciertos QC.

Problema:
El sistema flex común contiene estas 12 reglas:
    %upper_right_raiser
    %upper_right_neutral
    %upper_right_lowerer
    %upper_left_raiser
    %upper_left_neutral
    %upper_left_lowerer
    %lower_right_raiser
    %lower_right_neutral
    %lower_right_lowerer
    %lower_left_raiser
    %lower_left_neutral
    %lower_left_lowerer

Esas reglas dependen de que el QC tenga $eyelid direccionales
(upper_right, upper_left, lower_right, lower_left).

Los QC sin $eyelid, y los Vortigaunt que usan $eyelid upper/lower,
no generan esos flexes, por lo que StudioMDL reporta:
    Rule for unknown flex upper_right_raiser

Este script NO modifica:
- $model
- rutas
- $eyelid
- flexfile
- flexcontrollers
- localvars
- ninguna expresión que no sea una de esas 12 reglas

Solo elimina las 12 reglas direccionales cuando el QC NO tiene
ningún $eyelid direccional.

Uso:
    py limpiar_reglas_parpados.py --check
    py limpiar_reglas_parpados.py --repair
"""

from __future__ import annotations

import argparse
import re
import sys
from collections import Counter
from pathlib import Path

TARGET_RULES = {
    "upper_right": ("raiser", "neutral", "lowerer"),
    "upper_left": ("raiser", "neutral", "lowerer"),
    "lower_right": ("raiser", "neutral", "lowerer"),
    "lower_left": ("raiser", "neutral", "lowerer"),
}

RULE_RE = re.compile(
    r'^\s*%(upper_right|upper_left|lower_right|lower_left)_(raiser|neutral|lowerer)\s*=',
    re.IGNORECASE,
)

# Solo reconoce las cuatro formas direccionales que generan
# los nombres usados por nuestras reglas.
DIRECTIONAL_EYELID_RE = re.compile(
    r'^\s*eyelid\s+(upper_right|upper_left|lower_right|lower_left)\b',
    re.IGNORECASE,
)

ANY_EYELID_RE = re.compile(
    r'^\s*eyelid\b',
    re.IGNORECASE,
)

BOM = "\ufeff"


def load_text(path: Path) -> tuple[str, bool, str]:
    raw = path.read_bytes()
    has_bom = raw.startswith(b"\xef\xbb\xbf")
    if has_bom:
        raw = raw[3:]

    text = raw.decode("utf-8", errors="strict")

    if "\r\n" in text:
        newline = "\r\n"
    elif "\r" in text:
        newline = "\r"
    else:
        newline = "\n"

    return text, has_bom, newline


def save_text(path: Path, text: str, has_bom: bool) -> None:
    raw = text.encode("utf-8")
    if has_bom:
        raw = b"\xef\xbb\xbf" + raw
    path.write_bytes(raw)


def strip_comments(line: str) -> str:
    # Suficiente para nuestros QC: no toca // dentro de comillas.
    in_quote = False
    escaped = False
    out = []

    i = 0
    while i < len(line):
        ch = line[i]

        if ch == '"' and not escaped:
            in_quote = not in_quote

        if not in_quote and ch == "/" and i + 1 < len(line) and line[i + 1] == "/":
            break

        out.append(ch)
        escaped = (ch == "\\") and not escaped
        if ch != "\\":
            escaped = False

        i += 1

    return "".join(out)


def count_braces(text: str) -> tuple[int, int]:
    depth = 0
    bad_closes = 0

    for raw in text.splitlines():
        line = strip_comments(raw)
        in_quote = False
        escaped = False

        for ch in line:
            if ch == '"' and not escaped:
                in_quote = not in_quote
                continue

            if in_quote:
                escaped = (ch == "\\") and not escaped
                if ch != "\\":
                    escaped = False
                continue

            if ch == "{":
                depth += 1
            elif ch == "}":
                depth -= 1
                if depth < 0:
                    bad_closes += 1
                    depth = 0

    return depth, bad_closes


def analyze(path: Path) -> dict:
    text, has_bom, newline = load_text(path)
    lines = text.splitlines(keepends=True)

    has_any_eyelid = False
    has_directional_eyelid = False

    rule_lines = []
    for idx, line in enumerate(lines):
        clean = strip_comments(line)
        if ANY_EYELID_RE.match(clean):
            has_any_eyelid = True
        if DIRECTIONAL_EYELID_RE.match(clean):
            has_directional_eyelid = True

        if RULE_RE.match(clean):
            rule_lines.append(idx)

    needs_fix = bool(rule_lines) and not has_directional_eyelid

    if has_directional_eyelid:
        reason = "tiene $eyelid direccionales"
    elif has_any_eyelid:
        reason = "usa $eyelid no direccionales (ej. upper/lower)"
    else:
        reason = "no tiene $eyelid"

    return {
        "path": path,
        "text": text,
        "has_bom": has_bom,
        "newline": newline,
        "rule_lines": rule_lines,
        "has_any_eyelid": has_any_eyelid,
        "has_directional_eyelid": has_directional_eyelid,
        "needs_fix": needs_fix,
        "reason": reason,
    }


def repair(info: dict) -> tuple[str, int]:
    lines = info["text"].splitlines(keepends=True)

    remove = set(info["rule_lines"])
    new_lines = [line for i, line in enumerate(lines) if i not in remove]
    new_text = "".join(new_lines)

    depth, bad_closes = count_braces(new_text)
    if depth != 0 or bad_closes != 0:
        raise RuntimeError(
            f"validación de llaves falló: depth={depth}, bad_closes={bad_closes}"
        )

    # Validación específica: no deben quedar las 12 reglas objetivo.
    remaining = [
        line.strip()
        for line in new_text.splitlines()
        if RULE_RE.match(strip_comments(line))
    ]
    if remaining:
        raise RuntimeError(
            f"quedaron reglas de párpado direccionales: {remaining[:3]}"
        )

    return new_text, len(remove)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--check",
        action="store_true",
        help="solo diagnostica; no modifica archivos",
    )
    parser.add_argument(
        "--repair",
        action="store_true",
        help="modifica los QC y crea respaldo .eyelidfix.bak",
    )
    args = parser.parse_args()

    if args.check == args.repair:
        print("Uso: py limpiar_reglas_parpados.py --check")
        print("     py limpiar_reglas_parpados.py --repair")
        return 2

    root = Path(__file__).resolve().parent
    qcs = sorted(
        p for p in root.rglob("*.qc")
        if not p.name.endswith(".bak")
    )

    print(f"Raíz : {root}")
    print(f"QCs  : {len(qcs)}")
    print(f"Modo : {'CHECK' if args.check else 'REPAIR'}")
    print()

    counts = Counter()
    modified = 0

    for path in qcs:
        try:
            info = analyze(path)
        except Exception as exc:
            print(f"[ERROR] {path.relative_to(root)}")
            print(f"  -> no se pudo leer: {exc}")
            counts["ERROR"] += 1
            continue

        rel = path.relative_to(root)

        if not info["needs_fix"]:
            if info["rule_lines"] and info["has_directional_eyelid"]:
                print(f"[OK                  ] {rel}")
                print("  -> tiene $eyelid direccionales; se conservan las 12 reglas")
            else:
                print(f"[OK                  ] {rel}")
                print("  -> no hay reglas direccionales incompatibles")
            counts["OK"] += 1
            continue

        count = len(info["rule_lines"])
        print(f"[FIX                 ] {rel}")
        print(f"  -> {count} reglas de párpados direccionales incompatibles; razón: {info['reason']}")

        if args.check:
            counts["FIX"] += 1
            continue

        backup = path.with_name(path.name + ".eyelidfix.bak")
        try:
            original = info["text"]

            if not backup.exists():
                save_text(backup, original, info["has_bom"])

            new_text, removed = repair(info)
            save_text(path, new_text, info["has_bom"])

            # Confirmación leyendo de nuevo el archivo escrito.
            verify_text, _, _ = load_text(path)
            if RULE_RE.search(verify_text):
                raise RuntimeError("todavía queda una regla direccional")
            depth, bad_closes = count_braces(verify_text)
            if depth != 0 or bad_closes != 0:
                raise RuntimeError(
                    f"llaves inválidas tras escritura: depth={depth}, bad_closes={bad_closes}"
                )

            modified += 1
            counts["REPAIRED"] += 1
            print(f"  -> eliminadas {removed} reglas; respaldo: {backup.name}")

        except Exception as exc:
            try:
                save_text(path, original, info["has_bom"])
            except Exception:
                pass

            counts["ROLLBACK"] += 1
            print(f"  -> ROLLBACK: {exc}")

    print()
    print("===== RESUMEN =====")
    for key in ("OK", "FIX", "REPAIRED", "ROLLBACK", "ERROR"):
        if counts[key]:
            print(f"{key:<20} {counts[key]}")

    if args.repair:
        print()
        print(f"Modificados : {modified}")

    return 1 if counts["ERROR"] or counts["ROLLBACK"] else 0


if __name__ == "__main__":
    raise SystemExit(main())
