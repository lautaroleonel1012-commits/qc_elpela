$cdmaterials "models\zombie_04\"
$cdmaterials "models\zombie_04\facemap\"
$cdmaterials "models\zombie_04\flesh\"
$cdmaterials "models\zombie_04\mouth\"
$cdmaterials "models\zombie_04\sheet\"
$cdmaterials "models\zombie_04\skull\"
$cdmaterials "models\zombie_04\bodygroups\"

// Created by Crowbar 0.74

$modelname "Combine_Super_Soldier.mdl"

$model "studio" "zombie_04_reference.smd"
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
}

$surfaceprop "flesh"

$contents "solid"

$illumposition 0.067 0.404 35.82

$eyeposition 0 0 73

$opaque


$texturegroup "skinfamilies"
{
	{
		"Combine_Elite"
	}
}

$attachment "lefthand" "ValveBiped.Bip01_L_Hand" 0 0 0 rotate 0 0 0
$attachment "zipline" "ValveBiped.Bip01_Spine4" 3 -4 0 rotate 0 0 0
$attachment "eyes" "ValveBiped.Bip01_Head1" 4.5 -5 0 rotate 0 -90 -90
$attachment "beam_damage" "ValveBiped.Bip01_Spine2" 0 0 0 rotate 0 0 0
$attachment "anim_attachment_RH" "ValveBiped.Anim_Attachment_RH" 0 0 0 rotate -90 -90 0
$attachment "anim_attachment_LH" "ValveBiped.Anim_Attachment_LH" 0 0 0 rotate -90 -90 0

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hboxset "default"
$hbox 2 "ValveBiped.Bip01_Spine" -1 -4.74 -7.22 7 8.27 6.78
$hbox 1 "ValveBiped.Bip01_Head1" -1.75 -8 -3.5 7.25 4 3.5
$hbox 4 "ValveBiped.Bip01_L_UpperArm" -2 -2.75 -2.75 12 2.75 2.75
$hbox 4 "ValveBiped.Bip01_L_Forearm" 0 -2.44 -2.15 10 2.06 2.35
$hbox 4 "ValveBiped.Bip01_L_Hand" 0.25 -1 -2 5.75 1 2
$hbox 5 "ValveBiped.Bip01_R_UpperArm" -2 -2.75 -2.75 12 2.75 2.75
$hbox 5 "ValveBiped.Bip01_R_Forearm" 0 -2.25 -2.25 10 2.25 2.25
$hbox 5 "ValveBiped.Bip01_R_Hand" 0.5 -0.96 -2.33 5.5 1.04 2.61
$hbox 6 "ValveBiped.Bip01_L_Thigh" 1.07 -3 -3 18.92 5 4
$hbox 6 "ValveBiped.Bip01_L_Calf" 0.5 -3.5 -2.8 15.5 3.5 3.2
$hbox 6 "ValveBiped.Bip01_L_Foot" -0.5 -1.5 -2 5.5 4.5 2.5
$hbox 6 "ValveBiped.Bip01_L_Toe0" -0.25 -1.75 -2.19 3.25 0.75 2.46
$hbox 7 "ValveBiped.Bip01_R_Thigh" 1 -5.5 -3.5 19 3.5 3.5
$hbox 7 "ValveBiped.Bip01_R_Calf" 0.5 -4.01 -2.57 15.5 3.99 2.93
$hbox 7 "ValveBiped.Bip01_R_Foot" -1.25 -4 -2.25 5.25 2 2.25
$hbox 7 "ValveBiped.Bip01_R_Toe0" -1 -0.75 -2.6 3 1.75 2.1
$hbox 0 "ValveBiped.Bip01_Pelvis" -7 -4.5 -8 7 4.5 5
$hbox 0 "ValveBiped.Bip01_Spine2" -1 -4.25 -7.25 13 8.25 7.25
$skipboneinbbox

$definebone "ValveBiped.Bip01_Pelvis" "" -0.000005 -0.533615 38.566917 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 3.890452 -0.000004 -0.000003 2.970156 -89.700792 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 17.848175 0 0 0 1.959516 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 16.525249 0 0 -2.336618 -61.400341 -1.599413 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 6.879453 0 0 -0.16908 -33.482117 -0.418216 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -3.890452 0.000004 0.000007 2.9705 -90.299349 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 17.848171 0 0 0 1.958771 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 16.525257 0 0 2.336464 -61.399992 2.212247 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 6.879454 0 0 -0.16908 -33.48211 -4.660066 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" 0.000005 3.345128 -2.981901 4.944224 89.999982 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 4.018331 0 0 0 -1.675443 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 3.518561 0 0 0 5.74883 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 8.942642 0 0 0 11.120881 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 3.307271 0 0 0 22.945699 179.999855 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 3.59371 -0.000003 0 -0.000057 23.295721 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 2.033346 1.000767 1.93766 -73.711859 168.619271 91.480542 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 6.028142 0.000002 0 2.738853 -33.527934 -90.505156 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 11.692556 0 -0.000001 -0.000002 -3.459061 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 11.481671 0 -0.000029 -6.108474 2.532072 90.136743 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 3.883691 -0.046771 0.431443 1.250767 -33.682289 4.921822 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 1.719575 0 0 0.316046 -20.997624 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 1.209183 -0.000001 0 0.176703 -12.398791 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 3.859861 -0.137948 1.332466 -2.449395 -30.465191 20.308432 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.719428 0.000001 0 0.233428 -20.798874 0.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 1.099667 0 0 0.148745 -13.99913 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 0.806048 -0.348922 1.321258 -38.931802 -45.224011 -69.147647 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.789783 0.000001 0.000001 0.423236 13.093406 -0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 1.207 0 0.000001 0.645544 20.79035 -0.000004 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 2.033354 1.000771 -1.93761 73.712037 168.618779 -95.596496 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 6.028142 0.000004 0 -0.462091 -33.623802 93.935243 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 11.692552 0 0.000002 0 -3.459061 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 11.481699 0 0.000004 6.108076 2.532072 -89.664285 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 3.883657 -0.050329 -0.431043 -1.512838 -33.67245 -4.921995 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 1.719576 0.000003 0 -0.456876 -20.995247 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 1.20918 -0.000001 0 -0.255595 -12.397443 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 3.85983 -0.148938 -1.331282 2.209726 -30.48142 -20.306714 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.719426 0 0 -0.378894 -20.796657 0.000009 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 1.099666 0 0 -0.241267 -13.998054 0.000007 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 0.806017 -0.359836 -1.318334 38.595466 -45.490334 68.995579 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.789784 0 -0.000001 -0.361026 13.095236 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 1.206998 0 0 -0.551076 20.792925 -0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Cod" "ValveBiped.Bip01_Pelvis" -0.044717 2.313936 4.661499 0 0 -2.250005 0 0 0 0 0 0
$definebone "ValveBiped.Anim_Attachment_LH" "ValveBiped.Bip01_L_Hand" 2.676088 -1.712442 0 -0.000019 90.00003 90.000023 0 0 0 0 0 0
$definebone "ValveBiped.Anim_Attachment_RH" "ValveBiped.Bip01_R_Hand" 2.676088 -1.712443 0 0 -89.999975 -89.999982 0 0 0 0 0 0

$bonemerge "ValveBiped.Bip01_Pelvis"
$bonemerge "ValveBiped.Bip01_Spine"
$bonemerge "ValveBiped.Bip01_Spine1"
$bonemerge "ValveBiped.Bip01_Spine2"
$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"


$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$ikautoplaylock "rfoot" 1 0.1
$ikautoplaylock "lfoot" 1 0.1

$sequence "ragdoll" {
	"combine_super_soldier_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 3
}

$includemodel "combine_soldier_anims.mdl"

$collisionjoints "male_04_physics.smd"
{
	$mass 100
	$inertia 2
	$damping 0.01
	$rotdamping 0.4
	$rootbone "valvebiped.bip01_pelvis"


	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -48 48 1
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -25 25 1
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -25 50 1

	$jointconstrain "ValveBiped.Bip01_R_UpperArm" x limit -50 57 1
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" y limit -19 102 1
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" z limit -93 30 1

	$jointconstrain "ValveBiped.Bip01_L_UpperArm" x limit -50 57 1
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" y limit -102 19 1
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" z limit -93 30 1

	$jointmassbias "ValveBiped.Bip01_L_Forearm" 2
	$jointconstrain "ValveBiped.Bip01_L_Forearm" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" z limit -120 4 1

	$jointmassbias "ValveBiped.Bip01_L_Hand" 4
	$jointconstrain "ValveBiped.Bip01_L_Hand" x limit -120 120 1
	$jointconstrain "ValveBiped.Bip01_L_Hand" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_L_Hand" z limit -57 70 1

	$jointmassbias "ValveBiped.Bip01_R_Forearm" 2
	$jointconstrain "ValveBiped.Bip01_R_Forearm" x limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Forearm" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Forearm" z limit -120 4 1

	$jointmassbias "ValveBiped.Bip01_R_Hand" 4
	$jointconstrain "ValveBiped.Bip01_R_Hand" x limit -120 120 1
	$jointconstrain "ValveBiped.Bip01_R_Hand" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" z limit -57 70 1

	$jointconstrain "ValveBiped.Bip01_R_Thigh" x limit -25 39 1
	$jointconstrain "ValveBiped.Bip01_R_Thigh" y limit -8 75 1
	$jointconstrain "ValveBiped.Bip01_R_Thigh" z limit -97 32 1

	$jointmassbias "ValveBiped.Bip01_R_Calf" 2
	$jointconstrain "ValveBiped.Bip01_R_Calf" x limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Calf" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Calf" z limit -12 126 1

	$jointmassbias "ValveBiped.Bip01_Head1" 2
	$jointconstrain "ValveBiped.Bip01_Head1" x limit -20 20 1
	$jointconstrain "ValveBiped.Bip01_Head1" y limit -25 25 1
	$jointconstrain "ValveBiped.Bip01_Head1" z limit -13 30 1

	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -25 20 1
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -73 6 1
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -93 30 1

	$jointmassbias "ValveBiped.Bip01_L_Calf" 2
	$jointconstrain "ValveBiped.Bip01_L_Calf" x limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_L_Calf" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit -8 126 1

	$jointmassbias "ValveBiped.Bip01_L_Foot" 4
	$jointconstrain "ValveBiped.Bip01_L_Foot" x limit -1 -1 1
	$jointconstrain "ValveBiped.Bip01_L_Foot" y limit -19 19 1
	$jointconstrain "ValveBiped.Bip01_L_Foot" z limit -15 35 1

	$jointmassbias "ValveBiped.Bip01_R_Foot" 4
	$jointconstrain "ValveBiped.Bip01_R_Foot" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" y limit -21 6 1
	$jointconstrain "ValveBiped.Bip01_R_Foot" z limit -15 35 1

	$jointcollide "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_Thigh"
	$jointcollide "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_L_Thigh"
	$jointcollide "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_R_Thigh"
	$jointcollide "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_Thigh"
	$jointcollide "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_L_Calf"
	$jointcollide "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_R_Calf"
	$jointcollide "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_R_Foot"
	$jointcollide "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_L_Calf"
	$jointcollide "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_L_Thigh"
	$jointcollide "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_Spine2"
	$jointcollide "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_Spine2"
	$jointcollide "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_Pelvis"
	$jointcollide "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_Pelvis"
}

$keyvalues
{
	physgun_interactions 
	{
		"onpickup" "boogie"
		"onlaunch" "spin_zaxis"
		"onfirstimpact" "bloodsplat"
	}
}



