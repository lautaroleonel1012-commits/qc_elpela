$cdmaterials "models\zombie_04\"
$cdmaterials "models\zombie_04\facemap\"
$cdmaterials "models\zombie_04\flesh\"
$cdmaterials "models\zombie_04\mouth\"
$cdmaterials "models\zombie_04\sheet\"
$cdmaterials "models\zombie_04\skull\"
$cdmaterials "models\zombie_04\bodygroups\"

// Created by Crowbar 0.74

$modelname "Zombie/Poison.mdl"

$model "studio" "..\zombie_04_reference.smd"

$surfaceprop "flesh"

$contents "solid"

$illumposition -1.928 -15.883 27.606

$eyeposition 0 0 64


$texturegroup "skinfamilies"
{
	

flexfile "male_04_reference.vta"
{
	defaultflex frame 0
	flexpair "AU12" 1 frame 1
	flexpair "AU12" 1 frame 2
	flex "AU12AU25" frame 3
	flexpair "AU15" 1 frame 4
	flexpair "AU17" 1 frame 5
	flexpair "AU10" 1 frame 6
	flex "AU16" frame 7
	flexpair "AU25" 1 frame 8
	flexpair "AU18" 1 frame 9
	flexpair "AU18" 1 frame 10
	flexpair "AU22" 1 frame 11
	flexpair "AU20" 1 frame 12
	flex "AU32" frame 13
	flex "AU24" frame 14
	flex "AU31" frame 15
	flexpair "AU26" 1 frame 16
	flexpair "AU27" 1 frame 17
	flexpair "AU26Z" 1 frame 18

	// Already in eyelid lines: flex "upper_left" frame 19
	// Already in eyelid lines: flex "upper_left" frame 20
	// Already in eyelid lines: flex "lower_left" frame 21
	// Already in eyelid lines: flex "lower_left" frame 22

	flex "AU42" frame 23
	flexpair "AU1" 1 frame 24
	flexpair "AU2" 1 frame 25
	flexpair "AU4" 1 frame 26
	flexpair "AU1AU2" 1 frame 27
	flexpair "AU6" 1 frame 28
	flexpair "AU9" 1 frame 29

	// Already in eyelid lines: flex "upper_right" frame 30
	// Already in eyelid lines: flex "upper_right" frame 31
	// Already in eyelid lines: flex "lower_right" frame 32
	// Already in eyelid lines: flex "lower_right" frame 33

	flex "AU38" frame 34
	flex "the_rock" frame 35
}

flexcontroller eyelid range 0 1 "right_lid_raiser"
flexcontroller eyelid range 0 1 "left_lid_raiser"
flexcontroller eyelid range 0 1 "right_lid_tightener"
flexcontroller eyelid range 0 1 "left_lid_tightener"
flexcontroller eyelid range 0 1 "right_lid_droop"
flexcontroller eyelid range 0 1 "left_lid_droop"
flexcontroller eyelid range 0 1 "right_lid_closer"
flexcontroller eyelid range 0 1 "left_lid_closer"
flexcontroller eyelid range 0 1 "half_closed"
flexcontroller eyelid range 0 1 "blink"

flexcontroller brow range 0 1 "right_inner_raiser"
flexcontroller brow range 0 1 "left_inner_raiser"
flexcontroller brow range 0 1 "right_outer_raiser"
flexcontroller brow range 0 1 "left_outer_raiser"
flexcontroller brow range 0 1 "right_lowerer"
flexcontroller brow range 0 1 "left_lowerer"

flexcontroller nose range 0 1 "right_cheek_raiser"
flexcontroller nose range 0 1 "left_cheek_raiser"
flexcontroller nose range 0 1 "wrinkler"
flexcontroller nose range 0 1 "dilator"

flexcontroller mouth range 0 1 "right_upper_raiser"
flexcontroller mouth range 0 1 "left_upper_raiser"
flexcontroller mouth range 0 1 "right_corner_puller"
flexcontroller mouth range 0 1 "left_corner_puller"
flexcontroller mouth range 0 1 "right_corner_depressor"
flexcontroller mouth range 0 1 "left_corner_depressor"
flexcontroller mouth range 0 1 "chin_raiser"

flexcontroller phoneme range 0 1 "right_part"
flexcontroller phoneme range 0 1 "left_part"
flexcontroller phoneme range 0 1 "right_puckerer"
flexcontroller phoneme range 0 1 "left_puckerer"
flexcontroller phoneme range 0 1 "right_funneler"
flexcontroller phoneme range 0 1 "left_funneler"
flexcontroller phoneme range 0 1 "right_stretcher"
flexcontroller phoneme range 0 1 "left_stretcher"
flexcontroller phoneme range 0 1 "bite"
flexcontroller phoneme range 0 1 "presser"
flexcontroller phoneme range 0 1 "tightener"
flexcontroller phoneme range 0 1 "jaw_clencher"
flexcontroller phoneme range 0 1 "jaw_drop"
flexcontroller phoneme range 0 1 "right_mouth_drop"
flexcontroller phoneme range 0 1 "left_mouth_drop"

flexcontroller mouth range 0 1 "smile"
flexcontroller mouth range 0 1 "lower_lip"

flexcontroller head range -30 30 "head_rightleft"
flexcontroller head range -15 15 "head_updown"
flexcontroller head range -15 15 "head_tilt"
flexcontroller eyes range -30 30 "eyes_updown"
flexcontroller eyes range -30 30 "eyes_rightleft"
flexcontroller body range -30 30 "body_rightleft"
flexcontroller chest range -30 30 "chest_rightleft"
flexcontroller head range -0.2 0.2 "head_forwardback"
flexcontroller gesture range -1 1 "gesture_updown"
flexcontroller gesture range -1 1 "gesture_rightleft"

flexcontroller custom range 0 1 "the_rock"

localvar right_open
localvar left_open
localvar right_lip_suppressor
localvar left_lip_suppressor
localvar right_depressor_suppressor
localvar left_depressor_suppressor
localvar right_corner_suppressor
localvar left_corner_suppressor
localvar right_drop_suppressor
localvar left_drop_suppressor
localvar right_drop
localvar left_drop

%the_rock = the_rock

%upper_right_raiser = right_lid_raiser * (1 - right_lid_droop * 0.8) * (1 - right_lid_closer) * (1 - blink)
%upper_right_neutral = (1 - right_lid_droop * 0.8) * (1 - right_lid_raiser) * (1 - right_lid_closer) * (1 - blink)
%upper_right_lowerer = right_lid_closer + blink * (1 - right_lid_closer)

%upper_left_raiser = left_lid_raiser * (1 - left_lid_droop * 0.8) * (1 - left_lid_closer) * (1 - blink)
%upper_left_neutral = (1 - left_lid_droop * 0.8) * (1 - left_lid_raiser) * (1 - left_lid_closer) * (1 - blink)
%upper_left_lowerer = left_lid_closer + blink * (1 - left_lid_closer)

%lower_right_raiser = right_lid_closer + blink * 0.5 * (1 - right_lid_closer)
%lower_right_neutral = (1 - right_lid_closer) * (1 - 0.5 * blink) * (1 - right_lid_tightener * 0.5) * (1 - right_cheek_raiser * 0.25)
%lower_right_lowerer = 0

%lower_left_raiser = left_lid_closer + blink * 0.5 * (1 - left_lid_closer)
%lower_left_neutral = (1 - left_lid_closer) * (1 - 0.5 * blink) * (1 - left_lid_tightener * 0.5) * (1 - left_cheek_raiser * 0.25)
%lower_left_lowerer = 0

%AU1R = right_inner_raiser * (1 - right_outer_raiser) * (1 - right_lowerer)
%AU1L = left_inner_raiser * (1 - left_outer_raiser) * (1 - left_lowerer)
%AU2R = right_outer_raiser * (1 - right_inner_raiser) * (1 - right_lowerer)
%AU2L = left_outer_raiser * (1 - left_inner_raiser) * (1 - left_lowerer)
%AU1AU2R = right_inner_raiser * right_outer_raiser * (1 - right_lowerer)
%AU1AU2L = left_inner_raiser * left_outer_raiser * (1 - left_lowerer)

%AU4R = right_lowerer
%AU4L = left_lowerer
%AU6R = right_cheek_raiser
%AU6L = left_cheek_raiser
%AU9R = wrinkler
%AU9L = wrinkler
%AU38 = dilator

%right_open = smile + right_part * (1 - smile) + right_puckerer + right_funneler + right_upper_raiser * 0.5 + lower_lip * 0.5
%left_open = smile + left_part * (1 - smile) + left_puckerer + left_funneler + left_upper_raiser * 0.5 + lower_lip * 0.5

%right_lip_suppressor = 1 / %right_open * (1 - presser) * (1 - bite)
%left_lip_suppressor = 1 / %left_open * (1 - presser) * (1 - bite)

%AU10R = right_upper_raiser * right_upper_raiser * 0.5 * %right_lip_suppressor
%AU10L = left_upper_raiser * left_upper_raiser * 0.5 * %left_lip_suppressor

%AU25R = right_part * right_part * %right_lip_suppressor * (1 - smile)
%AU25L = left_part * left_part * %left_lip_suppressor * (1 - smile)

%AU12AU25 = smile * smile * 0.5 * (%right_lip_suppressor + %left_lip_suppressor)

%AU18R = right_puckerer * right_puckerer * %right_lip_suppressor
%AU18L = left_puckerer * left_puckerer * %left_lip_suppressor

%AU22R = right_funneler * right_funneler * %right_lip_suppressor
%AU22L = left_funneler * left_funneler * %left_lip_suppressor

%AU17R = chin_raiser * (1 - jaw_drop * 0.5) * (1 - bite) * (1 - 0.6 * (%AU25R + %AU18R + %AU22R)) * (1 - smile)
%AU17L = chin_raiser * (1 - jaw_drop * 0.5) * (1 - bite) * (1 - 0.6 * (%AU25L + %AU18L + %AU22L)) * (1 - smile)

%right_depressor_suppressor = 1 / (%AU18R * 0.8 + %AU22R * 0.8 + %AU17R + bite + right_corner_puller + right_stretcher + right_corner_depressor) * (1 - jaw_drop * 0.5) * (1 - smile * 0.5)
%left_depressor_suppressor = 1 / (%AU18L * 0.8 + %AU22L * 0.8 + %AU17L + bite + left_corner_puller + left_stretcher + left_corner_depressor) * (1 - jaw_drop * 0.5) * (1 - smile * 0.5)

%AU15R = right_corner_depressor * right_corner_depressor * %right_depressor_suppressor
%AU15L = left_corner_depressor * left_corner_depressor * %left_depressor_suppressor

%right_corner_suppressor = 1 / (%AU18R * 0.8 + %AU22R * 0.8 + %AU17R + bite + right_corner_puller + right_stretcher + right_corner_depressor) * (1 - jaw_drop * 0.5) * (1 - smile)
%left_corner_suppressor = 1 / (%AU18L * 0.8 + %AU22L * 0.8 + %AU17L + bite + left_corner_puller + left_stretcher + left_corner_depressor) * (1 - jaw_drop * 0.5) * (1 - smile)

%AU12R = right_corner_puller * right_corner_puller * %right_corner_suppressor
%AU12L = left_corner_puller * left_corner_puller * %left_corner_suppressor

%AU20R = right_stretcher * right_stretcher * %right_corner_suppressor
%AU20L = left_stretcher * left_stretcher * %left_corner_suppressor

%AU32 = bite
%AU24 = presser + (1 - presser) * tightener
%AU31 = jaw_clencher * jaw_clencher / (jaw_clencher + jaw_drop)

%right_drop_suppressor = 1 / (0.5 * %right_open + right_mouth_drop) * (1 - presser) * (1 - bite)
%left_drop_suppressor = 1 / (0.5 * %left_open + left_mouth_drop) * (1 - presser) * (1 - bite)

%right_drop = right_mouth_drop * right_mouth_drop * %right_drop_suppressor
%left_drop = left_mouth_drop * left_mouth_drop * %left_drop_suppressor

%AU26R = jaw_drop * (1 - %right_drop) * jaw_drop / (jaw_clencher + jaw_drop)
%AU26L = jaw_drop * (1 - %left_drop) * jaw_drop / (jaw_clencher + jaw_drop)

%AU27R = jaw_drop * %right_drop * jaw_drop / (jaw_clencher + jaw_drop)
%AU27L = jaw_drop * %left_drop * jaw_drop / (jaw_clencher + jaw_drop)

%AU16 = lower_lip * lower_lip * 0.25 * (%right_lip_suppressor + %left_lip_suppressor) * (1 - 0.5 * (%AU27R + %AU27L))

%mouth = %AU27R * 0.5 + %AU27L * 0.5 + %AU22R * 0.35 + %AU22L * 0.35 + %AU18R * 0.25 + %AU18L * 0.25 + %AU25R * 0.35 + %AU25L * 0.35 + %AU32 * 0.5 + %AU12AU25 + %AU16 * 0.4

}

	{
		"PoisonZombie_sheet"
		"Blackcrab_sheet"
	}
}

$attachment "eyes" "ValveBiped.Bip01_Spine4" 10 0 0 rotate 0 0 180
$attachment "head" "ValveBiped.Bip01_Spine4" 10 0 0 rotate 0 0 180
$attachment "chest" "ValveBiped.Bip01_Spine4" -6 0 4 rotate 0 0 0
$attachment "headcrab1" "ValveBiped.Headcrab_Cube1" 0 0 0 rotate 0 0 0
$attachment "headcrab2" "ValveBiped.Headcrab_Cube2" 0 0 0 rotate 0 0 0
$attachment "headcrab3" "ValveBiped.Headcrab_Cube3" 0 0 0 rotate 0 0 0
$attachment "headcrab4" "ValveBiped.Headcrab_Cube4" 0 0 0 rotate 0 0 0
$attachment "headcrab5" "ValveBiped.HC5_Bodybox" 0 0 0 rotate 0 0 0
$attachment "Blood_Left" "ValveBiped.Bip01_L_Finger2" 0 0 0 rotate 0 0 0
$attachment "Blood_Right" "ValveBiped.Bip01_R_Finger2" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -11.219 -25.386 -5.666 42.985 21.53 60.878

$hboxset "default"
$hbox 0 "ValveBiped.Bip01_Spine2" -13.27 -16.85 -5.66 12.15 16.950001 5.2
$hbox 0 "ValveBiped.Bip01_L_UpperArm" 0 -3.58 -4.05 14.78 3.41 3.53
$hbox 0 "ValveBiped.Bip01_L_Forearm" -4.9 -4.1 -2.47 12.87 2.17 3.53
$hbox 0 "ValveBiped.Bip01_L_Hand" 0 -1.18 -3.47 6.03 1.71 2.35
$hbox 0 "ValveBiped.Bip01_R_UpperArm" -0.21 -2.87 -3.32 14.78 4 3.16
$hbox 0 "ValveBiped.Bip01_R_Forearm" -2.24 -2.14 -2.47 13.98 3.49 3.48
$hbox 0 "ValveBiped.Bip01_R_Hand" -0.49 -1.91 -2.06 6.52 1.59 3.39
$hbox 0 "ValveBiped.Bip01_Pelvis" -3.89 -0.55 0 3.89 1.02 4.02
$hbox 0 "ValveBiped.Bip01_L_Thigh" -6.85 -6.06 -7.08 21.559999 7.15 5.17
$hbox 0 "ValveBiped.Bip01_L_Calf" -2.88 -6.92 -4.61 21.51 3.9 4.14
$hbox 0 "ValveBiped.Bip01_L_Foot" -3.92 -4.2 -3.45 9.46 4.09 3.41
$hbox 0 "ValveBiped.Bip01_R_Thigh" -6.16 -6 -5.73 21.68 5.63 6.48
$hbox 0 "ValveBiped.Bip01_R_Calf" -4.24 -4.17 -5.02 21.959999 6.11 4.18
$hbox 0 "ValveBiped.Bip01_R_Foot" -1.1 -4.27 -2.72 9.38 4.02 3.47
$hbox 1 "ValveBiped.Headcrab_Cube1" -9.19 -8.7 -7.19 7.83 7.24 3.19

$definebone "ValveBiped.Bip01" "" -3.606493 0.942271 36.701271 0 -6.867759 112.499978 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01" 0.000005 3.345125 -2.981987 -24.869518 100.440186 7.185693 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 4.126702 0 -0.000001 -17.999983 0.391159 -3.150007 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 3.613 0 0.000002 -17.099985 -11.602853 1.350003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 9.183998 0 0.000002 -8.138238 -1.376987 -0.405139 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 1.667105 -2.621271 1.204555 -9.170304 -104.126883 9.61876 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 6.028141 0 0.000001 -49.152217 29.436111 -137.855989 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 12.693 0 0.000001 0 -72.241149 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 11.575998 0 0.000001 34.496355 20.094953 -78.677591 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 5.591134 0.133427 -1.86505 9.7 -3.450005 11.700022 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 5.293 0.000001 -0.000001 -0.358096 46.381448 -4.215558 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 3.079114 0.000001 0 -0.392472 38.25381 0.399811 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 5.739709 0.047596 -0.612883 -1.245496 20.064811 -8.376821 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 5.652499 0 0 -0.3479 31.088805 -3.881536 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 3.325017 0 -0.000001 -0.380211 72.464093 0.535027 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 5.562208 0.32735 0.48644 -20.312554 44.389502 -18.899991 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 5.158499 0.000001 0 -0.325434 24.804032 -4.026881 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 3.325999 -0.000001 0 -0.423412 80.664384 0.509078 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 1.659054 2.569644 1.216365 2.098458 91.936587 -9.486465 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 6.028141 0 -0.000001 -42.844066 -10.490289 95.355117 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 12.693002 0.000002 0 -0.000001 55.794111 -0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 11.598285 -0.138268 0.107485 2.543245 7.504023 -36.137544 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 5.900463 -0.635063 1.689933 -6.105321 10.827466 24.3 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 5.248501 0 0 0.000002 27.678273 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 3.151 0 0 0.000002 30.026201 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 6.189648 -0.664553 0.434984 1.677221 23.398618 11.70003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 5.511 0 0 0 48.410694 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 3.325018 0 0 0.000001 30.033711 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 5.928186 -0.24967 -0.698117 8.982888 29.349989 22.499997 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 5.074001 0 0 0.000003 46.799999 -0.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 3.326001 0 0 -0.000051 63.899971 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Pelvis" "ValveBiped.Bip01" 0 0.000002 0 0 8.516903 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 3.890452 -0.000007 -0.00009 -50.60982 -86.776003 -99.569979 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 17.590998 -0.000001 0 0 31.49308 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 17.699577 0 0 -22.330795 -49.20248 1.465749 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 6.879455 0 0 -0.169252 -33.486345 -4.918217 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -3.890442 -0.000009 -0.000089 -40.555788 -95.988139 67.054795 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 17.590998 0 0 0.000001 -41.711842 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 17.699577 0 0 9.05356 79.705377 3.183762 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 6.879455 0 0 0.216634 35.689542 -5.550668 0 0 0 0 0 0
$definebone "ValveBiped.Headcrab_Cube1" "ValveBiped.Bip01_Spine4" 12.937188 -0.910214 -3.577372 -8.898954 -84.451908 -88.982024 0 0 0 0 0 0
$definebone "ValveBiped.Headcrab_Cube2" "ValveBiped.Bip01_Spine2" 10.589315 -10.435698 -4.978876 -21.76741 -141.866185 -51.453441 0 0 0 0 0 0
$definebone "ValveBiped.Headcrab_Cube4" "ValveBiped.Bip01_Spine2" 7.514539 7.672323 -6.630682 16.889591 -59.708394 -72.073222 0 0 0 0 0 0
$definebone "ValveBiped.Headcrab_Cube3" "ValveBiped.Bip01_Spine" 3.889216 -3.15976 -7.620186 -8.022725 -104.375952 -44.98601 0 0 0 0 0 0
$definebone "ValveBiped.HC5_Bodybox" "" 28.675329 -0.39476 10.933533 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.HCB_hipsFront" "ValveBiped.HC5_Bodybox" -0.002712 -0.820693 3.883316 0 0 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.bone" "ValveBiped.HCB_hipsFront" 4.068216 0.21849 -2.249109 0 1.675787 -179.999978 0 0 0 0 0 0
$definebone "ValveBiped.bone1" "ValveBiped.bone" 3.090774 0 0 -3.530451 73.280785 76.06238 0 0 0 0 0 0
$definebone "ValveBiped.bone2" "ValveBiped.bone1" 10.185577 -0.000001 0.000001 0.000002 37.011115 0 0 0 0 0 0 0
$definebone "ValveBiped.bone3" "ValveBiped.HCB_hipsFront" -4.067999 0.21849 -2.249109 -2.498929 178.322715 90.073127 0 0 0 0 0 0
$definebone "ValveBiped.bone4" "ValveBiped.bone3" 3.090994 0 0 72.812166 -15.226638 1.714462 0 0 0 0 0 0
$definebone "ValveBiped.bone5" "ValveBiped.bone4" 10.185578 0 0.000001 0.000002 -37.400729 0 0 0 0 0 0 0
$definebone "ValveBiped.bone8" "ValveBiped.HC5_Bodybox" -3.891819 -0.049854 -3.208424 61.836892 -175.650158 -173.604025 0 0 0 0 0 0
$definebone "ValveBiped.bone9" "ValveBiped.bone8" 14.659636 0 0 0.000001 -59.582281 0 0 0 0 0 0 0
$definebone "ValveBiped.bone6" "ValveBiped.HC5_Bodybox" 3.886286 0.33984 -3.208175 61.697789 -7.550463 -9.257413 0 0 0 0 0 0
$definebone "ValveBiped.bone7" "ValveBiped.bone6" 14.678965 0 0.000001 -0.000001 -58.063602 0.000001 0 0 0 0 0 0

$bonesaveframe "ValveBiped.Bip01" position rotation
$bonesaveframe "ValveBiped.Bip01_Spine" rotation
$bonesaveframe "ValveBiped.Bip01_Spine1" rotation
$bonesaveframe "ValveBiped.Bip01_Spine2" rotation
$bonesaveframe "ValveBiped.Bip01_Spine4" rotation
$bonesaveframe "ValveBiped.Bip01_L_Clavicle" rotation
$bonesaveframe "ValveBiped.Bip01_L_UpperArm" rotation
$bonesaveframe "ValveBiped.Bip01_L_Forearm" rotation
$bonesaveframe "ValveBiped.Bip01_L_Hand" rotation
$bonesaveframe "ValveBiped.Bip01_R_Clavicle" rotation
$bonesaveframe "ValveBiped.Bip01_R_UpperArm" rotation
$bonesaveframe "ValveBiped.Bip01_R_Forearm" rotation
$bonesaveframe "ValveBiped.Bip01_R_Hand" rotation
$bonesaveframe "ValveBiped.Bip01_Pelvis" rotation
$bonesaveframe "ValveBiped.Bip01_L_Thigh" rotation
$bonesaveframe "ValveBiped.Bip01_L_Calf" rotation
$bonesaveframe "ValveBiped.Bip01_L_Foot" rotation
$bonesaveframe "ValveBiped.Bip01_L_Toe0" rotation
$bonesaveframe "ValveBiped.Bip01_R_Thigh" rotation
$bonesaveframe "ValveBiped.Bip01_R_Calf" rotation
$bonesaveframe "ValveBiped.Bip01_R_Foot" rotation
$bonesaveframe "ValveBiped.Bip01_R_Toe0" rotation
$bonesaveframe "ValveBiped.Headcrab_Cube1" position rotation
$bonesaveframe "ValveBiped.Headcrab_Cube2" position rotation
$bonesaveframe "ValveBiped.Headcrab_Cube4" position rotation
$bonesaveframe "ValveBiped.Headcrab_Cube3" position rotation
$bonesaveframe "ValveBiped.HC5_Bodybox" position rotation
$bonesaveframe "ValveBiped.HCB_hipsFront" position rotation
$bonesaveframe "ValveBiped.bone" rotation
$bonesaveframe "ValveBiped.bone1" rotation
$bonesaveframe "ValveBiped.bone2" rotation
$bonesaveframe "ValveBiped.bone3" rotation
$bonesaveframe "ValveBiped.bone4" rotation
$bonesaveframe "ValveBiped.bone5" rotation
$bonesaveframe "ValveBiped.bone8" position rotation
$bonesaveframe "ValveBiped.bone9" rotation
$bonesaveframe "ValveBiped.bone6" position rotation
$bonesaveframe "ValveBiped.bone7" rotation

$sectionframes 30 120

$sequence "refpose" {
	"poison_anims\refpose.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 1 LX LY
}

$sequence "Idle01" {
	"poison_anims\Idle01.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "FireWalk" {
	"poison_anims\FireWalk.smd"
	activity "ACT_ZOM_WALK_ON_FIRE" 1
	{ event AE_ZOMBIE_STEP_LEFT 40 "" }
	{ event AE_ZOMBIE_STEP_RIGHT 10 "" }
	fadein 0.2
	fadeout 0.2
	fps 44
	loop
	walkframe 40 LX
}

$sequence "Walk" {
	"poison_anims\Walk.smd"
	activity "ACT_WALK" 1
	{ event AE_ZOMBIE_STEP_LEFT 40 "" }
	{ event AE_ZOMBIE_STEP_RIGHT 10 "" }
	fadein 0.2
	fadeout 0.2
	fps 40
	loop
	walkframe 40 LX
}

$sequence "Run" {
	"poison_anims\Run.smd"
	fadein 0.2
	fadeout 0.2
	fps 40
	loop
	walkframe 16 LX
}

$sequence "headcrab2Leap" {
	"poison_anims\headcrab2Leap.smd"
	activity "ACT_RANGE_ATTACK1" 1
	{ event AE_ZOMBIE_POISON_PICKUP_CRAB 4 "" }
	{ event AE_ZOMBIE_POISON_THROW_CRAB 68 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Throw" {
	"poison_anims\Throw.smd"
	activity "ACT_RANGE_ATTACK2" 1
	{ event AE_ZOMBIE_POISON_PICKUP_CRAB 23 "" }
	{ event AE_ZOMBIE_POISON_THROW_SOUND 30 "" }
	{ event AE_ZOMBIE_POISON_THROW_CRAB 39 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "melee_01" {
	"poison_anims\melee_01.smd"
	activity "ACT_MELEE_ATTACK1" 1
	{ event AE_ZOMBIE_ATTACK_SCREAM 5 "" }
	{ event AE_ZOMBIE_ATTACK_RIGHT 29 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 24 LX LY
	walkframe 37 LX LY
	walkframe 45 LX LY
}

$sequence "melee_02" {
	"poison_anims\melee_02.smd"
	activity "ACT_MELEE_ATTACK1" 1
	{ event AE_ZOMBIE_ATTACK_SCREAM 5 "" }
	{ event AE_ZOMBIE_ATTACK_RIGHT 29 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "melee_03" {
	"poison_anims\melee_03.smd"
	activity "ACT_MELEE_ATTACK1" 1
	{ event AE_ZOMBIE_ATTACK_SCREAM 5 "" }
	{ event AE_ZOMBIE_ATTACK_RIGHT 29 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "releasecrab" {
	"poison_anims\releasecrab.smd"
	activity "ACT_ZOM_RELEASECRAB" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "FlinchL" {
	"poison_anims\FlinchL.smd"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "FlinchR" {
	"poison_anims\FlinchR.smd"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "FlinchC" {
	"poison_anims\FlinchC.smd"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "ThrowWarning" {
	"poison_anims\ThrowWarning.smd"
	activity "ACT_ZOMBIE_POISON_THREAT" 1
	{ event AE_ZOMBIE_POISON_THROW_WARN_SOUND 1 "" }
	fadein 0.2
	fadeout 0.2
	fps 10
}

$sequence "slump_a" {
	"poison_anims\slump_a.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "slumprise_a" {
	"poison_anims\slumprise_a.smd"
	{ event AE_NPC_LEFTFOOT 15 "" }
	{ event AE_NPC_RIGHTFOOT 50 "" }
	{ event AE_ZOMBIE_GET_UP 80 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 68
	walkframe 120 LX LY
}

$sequence "ragdoll" {
	"poison_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionjoints "..\male_04_physics.smd"
{
	$mass 115
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
	$rootbone "valvebiped.bip01_pelvis"


	$jointconstrain "ValveBiped.Bip01_R_Thigh" x limit -28 30 1
	$jointconstrain "ValveBiped.Bip01_R_Thigh" y limit -46 10 1
	$jointconstrain "ValveBiped.Bip01_R_Thigh" z limit -59 59 1

	$jointconstrain "ValveBiped.Bip01_R_Calf" x limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Calf" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Calf" z limit -97 37 1

	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -37 30 1
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -64 19 1
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -50 61 1

	$jointconstrain "ValveBiped.Bip01_L_Calf" x limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_L_Calf" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit -35 111 1

	$jointconstrain "ValveBiped.Bip01_L_Foot" x limit -10 10 1
	$jointconstrain "ValveBiped.Bip01_L_Foot" y limit -17 17 1
	$jointconstrain "ValveBiped.Bip01_L_Foot" z limit -30 32 1

	$jointconstrain "ValveBiped.Bip01_Spine" x limit -32 32 1
	$jointconstrain "ValveBiped.Bip01_Spine" y limit -32 30 1
	$jointconstrain "ValveBiped.Bip01_Spine" z limit -46 32 1

	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -17 17 1
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -3 3 1
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -26 26 1

	$jointconstrain "ValveBiped.Bip01_R_UpperArm" x limit -41 77 1
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" y limit -48 70 1
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" z limit -61 77 1

	$jointconstrain "ValveBiped.Bip01_L_UpperArm" x limit -61 50 1
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" y limit -79 48 1
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" z limit -79 88 1

	$jointconstrain "ValveBiped.Bip01_L_Forearm" x limit 1 1 1
	$jointconstrain "ValveBiped.Bip01_L_Forearm" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_L_Forearm" z limit -73 77 1

	$jointmassbias "ValveBiped.Bip01_L_Hand" 0.2
	$jointconstrain "ValveBiped.Bip01_L_Hand" x limit -39 59 1
	$jointconstrain "ValveBiped.Bip01_L_Hand" y limit -19 19 1
	$jointconstrain "ValveBiped.Bip01_L_Hand" z limit -79 35 1

	$jointconstrain "ValveBiped.Bip01_R_Forearm" x limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Forearm" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" z limit -57 88 1

	$jointmassbias "ValveBiped.Bip01_R_Hand" 0.2
	$jointconstrain "ValveBiped.Bip01_R_Hand" x limit -44 12 1
	$jointconstrain "ValveBiped.Bip01_R_Hand" y limit -28 28 1
	$jointconstrain "ValveBiped.Bip01_R_Hand" z limit -55 59 1

	$jointconstrain "ValveBiped.Bip01_R_Foot" x limit -30 30 1
	$jointconstrain "ValveBiped.Bip01_R_Foot" y limit -28 28 1
	$jointconstrain "ValveBiped.Bip01_R_Foot" z limit -30 26 1
}
