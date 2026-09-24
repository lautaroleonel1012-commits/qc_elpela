$cdmaterials "models\zombie_04\"
$cdmaterials "models\zombie_04\facemap\"
$cdmaterials "models\zombie_04\flesh\"
$cdmaterials "models\zombie_04\mouth\"
$cdmaterials "models\zombie_04\sheet\"
$cdmaterials "models\zombie_04\skull\"
$cdmaterials "models\zombie_04\bodygroups\"

// Created by Crowbar 0.74

$modelname "Zombie/Zombie_Soldier.mdl"

$model "studio" "..\zombie_04_reference.smd" {
    flexfile "..\male_04_reference.vta"
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

$surfaceprop "zombieflesh"

$contents "solid"

$illumposition -0.099 1.246 35.512

$eyeposition 0 0 64

$mostlyopaque

$attachment "headcrab" "ValveBiped.HC_Rear_Bone" 0 0 0 rotate 0 0 0
$attachment "eyes" "ValveBiped.HC_Body_Bone" 0 0 0 rotate 0 0 -50
$attachment "head" "ValveBiped.HC_Body_Bone" 0 0 0 rotate 0 0 -50
$attachment "chest" "ValveBiped.Bip01_Spine4" -3 6 0 rotate 0 60 90
$attachment "maw" "ValveBiped.Bip01_Spine2" 0 8 0 rotate 0 90 90
$attachment "Blood_Left" "ValveBiped.Bip01_L_Finger2" 0 0 0 rotate 0 0 0
$attachment "Blood_Right" "ValveBiped.Bip01_R_Finger2" 0 0 0 rotate 0 0 0
$attachment "grenade_attachment" "ValveBiped.Bip01_L_Hand" 4.38 2.25 1.98 rotate -47.22 2.63 -97.91

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hboxset "default"
$hbox 2 "ValveBiped.Bip01_Spine1" -8.5 -3.84 -7.12 15.5 9.84 7.73
$hbox 4 "ValveBiped.Bip01_L_UpperArm" -1 -3.5 -2.5 11 3.5 2.5
$hbox 4 "ValveBiped.Bip01_L_Forearm" -0.5 -1.86 -1.9 10.5 3.11 2.36
$hbox 4 "ValveBiped.Bip01_L_Hand" 0 -1.78 -1 6 1.23 2
$hbox 5 "ValveBiped.Bip01_R_UpperArm" -1 -3.5 -2.5 11 3.5 2.5
$hbox 5 "ValveBiped.Bip01_R_Forearm" -0.5 -1.89 -1.6 10.5 3.09 2.66
$hbox 5 "ValveBiped.Bip01_R_Hand" 0 -1.78 -2.5 6 1.23 0.5
$hbox 6 "ValveBiped.Bip01_L_Thigh" 0 -4 -3.73 17.25 4 4.29
$hbox 6 "ValveBiped.Bip01_L_Calf" 0 -4.87 -3.54 17.25 3.18 2.63
$hbox 6 "ValveBiped.Bip01_L_Foot" -1.5 -2 -2.5 7.5 2 2.5
$hbox 7 "ValveBiped.Bip01_R_Thigh" 0 -4 -3.73 17.25 4 4.29
$hbox 7 "ValveBiped.Bip01_R_Calf" 0 -4.92 -3.12 17.25 3.25 2.65
$hbox 7 "ValveBiped.Bip01_R_Foot" -1.5 -2 -2.5 7.5 2 2.5
$hbox 1 "ValveBiped.HC_Body_Bone" -6.59 -5 -5.76 8.5 5 6.24

$definebone "ValveBiped.Bip01_Pelvis" "" -0.000005 1.516003 38.353996 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 3.890453 0 -0.000004 -6.298009 -90.530886 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 17.593166 0 0 0 16.008155 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 17.699577 0 0 -2.794963 -66.211908 -0.906668 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 6.879457 0 0 2.831042 -33.495514 -3.653923 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -3.890452 0 0.000007 -6.255897 -90.309895 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 17.593164 0 0 0 16.011995 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 17.699577 0 0 2.330621 -66.226587 2.220957 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 6.879457 0.000001 0 -3.168915 -33.46875 -1.473705 0 0 0 0 0 0
$definebone "ValveBiped.Cod_Bone" "ValveBiped.Bip01_Pelvis" 0.003197 1.916845 7.635197 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" 0.000002 3.345121 -2.981992 4.944283 89.999982 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 4.126709 0 0 0 5.074514 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 3.613471 0 0 0 7.43745 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 9.183791 0 0 0 20.151326 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 1.673225 1.247214 2.595464 -73.711914 168.587715 91.510847 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 6.028143 0.000002 0 -12.912923 -32.801775 -101.833749 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 11.692554 0 -0.000002 0.000003 0 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 12.07558 0 0.000001 -7.742148 1.798744 -178.061242 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 1.782817 1.657451 0.069281 -48.216464 72.036783 -69.320608 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 2.070879 -0.000001 0 0 -50.400003 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 1.180883 0 -0.000002 -0.000001 -29.700009 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 4.942482 -0.87483 0.248172 -17.95753 -6.592453 -88.934684 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 1.980929 -0.000002 0 -0.100785 -39.84996 -0.079471 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 1.731652 -0.000001 0 4.526137 -26.09301 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 5.040236 0.509704 0.130306 -9.293717 3.242997 -91.830807 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 2.156434 0.000003 0 -0.000001 -58.950017 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 2.243127 0 0 -0.000002 -38.474978 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 5.046515 1.425083 0.048105 -13.478376 13.535094 -102.595711 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 2.069265 -0.000002 0 -0.000001 -48.150009 -0.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 2.441578 0 0 -0.000004 -48.150003 -0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 1.673227 1.24722 -2.595471 73.711914 168.587141 -95.626931 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 6.028143 -0.000002 0.000001 15.946164 -31.150744 105.625228 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 11.692553 -0.000001 0.000002 -0.000007 -0.000001 0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 12.075578 0 0.000002 2.648433 2.781882 -87.398179 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 1.819735 -0.264272 -1.112211 39.081062 -74.64918 -87.270126 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 2.070878 0.000001 -0.000002 -0.000008 -50.40001 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 1.180886 0 0.000001 -0.000005 -29.700016 0.000004 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 4.958585 -0.225746 1.352891 -7.206952 -18.070749 1.005482 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 1.980932 0 0 0.100781 -39.84996 0.079469 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 1.73165 -0.000001 0 -4.526143 -26.09301 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 5.056063 -0.114651 -0.09717 2.26983 -9.311716 -2.856769 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 2.156434 0.000003 0 -0.000003 -58.950017 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 2.243123 0.000001 0 -0.000003 -38.474971 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 5.062343 -0.03664 -1.012916 13.092603 -13.908153 3.272963 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 2.069264 0.000002 0 -0.000001 -48.150003 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 2.441581 0 0 -0.000002 -48.150003 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.HC_Body_Bone" "ValveBiped.Bip01_Spine4" 7.856863 0.357141 2.41031 -9.085847 72.317298 154.900057 0 0 0 0 0 0
$definebone "ValveBiped.HC_Head_Bone" "ValveBiped.HC_Body_Bone" 3.738598 -2.965122 -0.136396 -4.50001 -4.50001 12.374979 0 0 0 0 0 0
$definebone "ValveBiped.HC_FangL_Bone1" "ValveBiped.HC_Head_Bone" 1.884796 0.22592 -3.244098 -7.359753 -99.621499 -49.057731 0 0 0 0 0 0
$definebone "ValveBiped.HC_FangL_Bone2" "ValveBiped.HC_FangL_Bone1" 3.698876 0.000001 0 0.000006 -38.081928 0 0 0 0 0 0 0
$definebone "ValveBiped.HC_FangR_Bone1" "ValveBiped.HC_Head_Bone" 1.884668 0.225914 3.247675 7.360105 -99.621205 -130.939945 0 0 0 0 0 0
$definebone "ValveBiped.HC_FangR_Bone2" "ValveBiped.HC_FangR_Bone1" 3.698875 0 0 0 38.081921 -0.000004 0 0 0 0 0 0
$definebone "ValveBiped.HC_HoleControlL" "ValveBiped.HC_Body_Bone" -1.92326 -4.279649 -3.138433 -0.000002 -0.000001 0.000007 0 0 0 0 0 0
$definebone "ValveBiped.HC_HoleControlR" "ValveBiped.HC_Body_Bone" -0.320879 -5.869144 3.247989 -0.000002 -0.000001 0.000007 0 0 0 0 0 0
$definebone "ValveBiped.HC_Rear_Bone" "ValveBiped.HC_Body_Bone" -7.842797 -1.678412 -0.934002 -0.000005 20.249986 29.250019 0 0 0 0 0 0
$definebone "ValveBiped.HC_ThighL_Bone" "ValveBiped.HC_Rear_Bone" -0.450934 -0.675699 -6.164912 -30.718458 -70.093416 -172.984649 0 0 0 0 0 0
$definebone "ValveBiped.HC_CalfL_Bone" "ValveBiped.HC_ThighL_Bone" 6.098816 -0.000001 0.000001 -0.000009 -0.000002 0 0 0 0 0 0 0
$definebone "ValveBiped.HC_ThighR_Bone" "ValveBiped.HC_Rear_Bone" -0.450914 -0.675697 6.164912 -7.079967 -90.538652 174.066278 0 0 0 0 0 0
$definebone "ValveBiped.HC_CalfR_Bone" "ValveBiped.HC_ThighR_Bone" 6.098813 -0.000001 0 0.000004 -130.088657 -0.000008 0 0 0 0 0 0
$definebone "ValveBiped.HC_UpperArmL_Bone" "ValveBiped.HC_Body_Bone" 2.630715 -3.155086 -5.01671 17.05689 -28.79617 1.880341 0 0 0 0 0 0
$definebone "ValveBiped.HC_ForeArmL_Bone" "ValveBiped.HC_UpperArmL_Bone" 8.255678 0.000003 0.000001 0.000011 -121.038766 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.HC_UpperArmR_Bone" "ValveBiped.HC_Body_Bone" 2.630416 -3.155085 5.016871 -4.143278 -63.369641 -131.616994 0 0 0 0 0 0
$definebone "ValveBiped.HC_ForeArmR_Bone" "ValveBiped.HC_UpperArmR_Bone" 8.255676 -0.000001 0 0.000013 110.674582 -0.000004 0 0 0 0 0 0


$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$ikautoplaylock "rfoot" 1 0.1
$ikautoplaylock "lfoot" 1 0.1

$sequence "refpose" {
	"zombie_soldier_anims\refpose.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 3
}

$sequence "ragdoll" {
	"zombie_soldier_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 3
}

$includemodel "zombie\zombie_soldier_animations.mdl"

$collisionjoints "..\male_04_physics.smd"
{
	$mass 100
	$inertia 10
	$damping 0.1
	$rotdamping 3
	$rootbone "valvebiped.bip01_pelvis"


	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -44 44 1
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -39 39 1
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -32 50 1

	$jointconstrain "ValveBiped.Bip01_R_Clavicle" x limit -30 30 1
	$jointconstrain "ValveBiped.Bip01_R_Clavicle" y limit -46 46 1
	$jointconstrain "ValveBiped.Bip01_R_Clavicle" z limit -26 48 1

	$jointconstrain "ValveBiped.Bip01_R_UpperArm" x limit -39 39 1
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" y limit -79 95 1
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" z limit -93 28 1

	$jointconstrain "ValveBiped.Bip01_L_Clavicle" x limit -30 30 1
	$jointconstrain "ValveBiped.Bip01_L_Clavicle" y limit -46 46 1
	$jointconstrain "ValveBiped.Bip01_L_Clavicle" z limit -26 48 1

	$jointconstrain "ValveBiped.Bip01_L_UpperArm" x limit -30 30 1
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" y limit -95 84 1
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" z limit -86 26 1

	$jointconstrain "ValveBiped.Bip01_L_Forearm" x limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_L_Forearm" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_L_Forearm" z limit -149 4 1

	$jointconstrain "ValveBiped.Bip01_L_Hand" x limit -55 55 1
	$jointconstrain "ValveBiped.Bip01_L_Hand" y limit -55 55 1
	$jointconstrain "ValveBiped.Bip01_L_Hand" z limit -55 55 1

	$jointconstrain "ValveBiped.Bip01_R_Forearm" x limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Forearm" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Forearm" z limit -149 4 1

	$jointconstrain "ValveBiped.Bip01_R_Thigh" x limit -12 12 1
	$jointconstrain "ValveBiped.Bip01_R_Thigh" y limit -8 75 1
	$jointconstrain "ValveBiped.Bip01_R_Thigh" z limit -97 32 1

	$jointconstrain "ValveBiped.Bip01_R_Calf" x limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Calf" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Calf" z limit -12 126 1

	$jointconstrain "ValveBiped.Bip01_R_Foot" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" y limit -25 6 1
	$jointconstrain "ValveBiped.Bip01_R_Foot" z limit -15 35 1

	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -12 12 1
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -73 6 1
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -93 30 1

	$jointconstrain "ValveBiped.Bip01_L_Calf" x limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_L_Calf" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit -8 126 1

	$jointconstrain "ValveBiped.Bip01_L_Foot" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" y limit -19 19 1
	$jointconstrain "ValveBiped.Bip01_L_Foot" z limit -15 35 1

	$jointconstrain "ValveBiped.Bip01_R_Hand" x limit -55 55 1
	$jointconstrain "ValveBiped.Bip01_R_Hand" y limit -55 55 1
	$jointconstrain "ValveBiped.Bip01_R_Hand" z limit -55 55 1

	$jointcollide "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_Thigh"
	$jointcollide "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_L_Thigh"
	$jointcollide "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_R_Thigh"
	$jointcollide "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_Thigh"
	$jointcollide "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_Pelvis"
	$jointcollide "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_Pelvis"
	$jointcollide "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_L_Calf"
	$jointcollide "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_R_Calf"
	$jointcollide "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_R_Foot"
	$jointcollide "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_L_Calf"
	$jointcollide "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_L_Thigh"
	$jointcollide "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_Spine2"
	$jointcollide "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_Spine2"
	$jointcollide "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_Spine2"
	$jointcollide "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_Spine2"
}




