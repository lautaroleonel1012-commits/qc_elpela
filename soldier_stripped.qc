$cdmaterials "models\zombie_04\"
$cdmaterials "models\zombie_04\facemap\"
$cdmaterials "models\zombie_04\flesh\"
$cdmaterials "models\zombie_04\mouth\"
$cdmaterials "models\zombie_04\sheet\"
$cdmaterials "models\zombie_04\skull\"
$cdmaterials "models\zombie_04\bodygroups\"

// Created by Crowbar 0.74

$modelname "soldier_stripped.mdl"

$model "studio" "C:\Program Files (x86)\Steam\steamapps\common\Half-Life 2\hl2\huevada\zombie_04_reference.smd"


$surfaceprop "default"

$contents "solid"

$illumposition -0.334 0.595 34.153


$texturegroup "skinfamilies"
{
	{
		"soldier_stripped_comp"
	}
}

$cbox 0 0 0 0 0 0

$bbox -9.779 -16.953 -3.63 8.588 16.284 71.936

$definebone "ValveBiped.Bip01" "" -0.000005 -0.533615 38.566917 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Pelvis" "ValveBiped.Bip01" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 3.890452 -0.000004 -0.000003 2.970156 -89.700792 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 17.848177 0 0 0 1.959516 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 16.525253 0 0 -2.336617 -61.400341 -1.599413 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 6.879454 0 0 -0.16908 -33.48211 -0.418216 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -3.890452 0.000004 0.000007 2.9705 -90.299349 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 17.848173 0 0 0 1.958771 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 16.525257 0 0 2.336464 -61.399992 2.212247 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 6.879455 0 0 -0.16908 -33.482106 -4.660065 0 0 0 0 0 0
$definebone "ValveBiped.Cod" "ValveBiped.Bip01_Pelvis" -0.044717 2.313936 4.661499 0 0 -2.250005 0 0 0 0 0 0
$definebone "ValveBiped.Pouch" "ValveBiped.Bip01_Pelvis" 4.041916 4.954661 -8.467939 -22.499996 0 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01" 0.000005 3.345128 -2.981901 4.944225 89.999982 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 4.018331 0 0 0 -1.675443 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 3.518565 0 0 0 5.74883 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 8.942642 0 0 0 11.120881 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 3.307271 0 0 0 22.945699 179.999855 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 3.593712 -0.000001 0 -0.000057 23.295721 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 2.033346 1.000768 1.93766 -84.501331 165.723161 94.337145 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 6.028142 0.000002 0 3.101707 4.280854 -90.299397 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 11.692554 0 -0.000001 0 -3.45906 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 11.481673 0 -0.000032 -6.108474 2.532072 90.136743 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 3.859703 -0.142404 -1.191974 8.719844 -50.413063 -27.452933 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 1.312561 0.000002 0.000001 0.553764 -25.194095 0.000008 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 0.729364 0 0.000001 0.28482 -13.997297 0.000009 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 3.942326 0.046773 -0.431443 4.201385 -46.446707 -8.881646 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 1.539093 -0.000003 0 0.255539 -14.197715 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 1.196322 -0.000002 0 0.421754 -24.683129 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 3.883688 -0.046769 0.431443 1.250767 -33.682296 4.921822 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 1.719574 0.000003 0 0.316044 -20.997639 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 1.209183 -0.000001 0 0.176701 -12.398801 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 3.85986 -0.137947 1.332466 -2.449394 -30.465198 20.308432 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.719429 0.000003 -0.000001 0.233422 -20.798884 -0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 1.099666 0.000001 0.000001 0.148739 -13.999131 -0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 0.806048 -0.348923 1.321258 -38.931791 -45.224018 -69.147647 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.789784 0.000001 0 0.423245 13.093407 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 1.206999 0.000001 0.000001 0.645552 20.790348 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 2.033353 1.000771 -1.93761 85.221718 154.884921 -109.168894 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 6.028142 0.000002 0 -4.029211 1.330752 94.327303 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 11.692552 0 -0.000002 0 -3.459061 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 11.481701 0 0.000003 6.108074 2.532072 -89.664285 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 3.859676 -0.132566 1.193108 -9.08396 -50.36534 27.452699 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 1.312562 0.000002 0.000001 -0.683652 -25.191351 0.000004 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 0.729364 0 0.000001 -0.35145 -13.995696 0.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 3.942296 0.05033 0.431043 -4.543843 -46.421323 8.880788 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 1.539097 0 0 -0.335409 -14.196229 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 1.196323 0 0 -0.553649 -24.680784 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 3.88366 -0.050327 -0.431043 -1.512838 -33.672443 -4.921994 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 1.719577 -0.000004 0 -0.456878 -20.995237 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 1.209182 0.000004 0 -0.255598 -12.397429 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 3.859832 -0.148933 -1.331282 2.209727 -30.481413 -20.306714 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.719425 0 0 -0.378899 -20.796647 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 1.099665 0.000001 0 -0.241276 -13.998046 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 0.806018 -0.359833 -1.318334 38.595473 -45.49033 68.995579 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.789784 0 0.000002 -0.361021 13.095231 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 1.207 0 0.000001 -0.551073 20.792921 0.000002 0 0 0 0 0 0


$sequence "autopsy" {
	"soldier_stripped_anims\autopsy.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}


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

