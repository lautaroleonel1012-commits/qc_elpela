$cdmaterials "models\zombie_04\"
$cdmaterials "models\zombie_04\facemap\"
$cdmaterials "models\zombie_04\flesh\"
$cdmaterials "models\zombie_04\mouth\"
$cdmaterials "models\zombie_04\sheet\"
$cdmaterials "models\zombie_04\skull\"
$cdmaterials "models\zombie_04\bodygroups\"

// Created by Crowbar 0.74

$modelname "Zombie/Classic.mdl"

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

$illumposition -2.887 -4.81 33.483

$eyeposition 0 0 64

$mostlyopaque

$attachment "headcrab" "ValveBiped.HC_Rear_Bone" 0 0 0 rotate 0 0 0
$attachment "eyes" "ValveBiped.HC_Body_Bone" 0 0 0 rotate 0 0 -50
$attachment "head" "ValveBiped.HC_Body_Bone" 0 0 0 rotate 0 0 -50
$attachment "chest" "ValveBiped.Bip01_Spine4" -3 6 0 rotate 0 60 90
$attachment "maw" "ValveBiped.Bip01_Spine2" 0 8 0 rotate 0 90 90
$attachment "Blood_Left" "ValveBiped.Bip01_L_Finger2" 0 0 0 rotate 0 0 0
$attachment "Blood_Right" "ValveBiped.Bip01_R_Finger2" 0 0 0 rotate 0 0 0

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

$definebone "ValveBiped.Bip01_Pelvis" "" -0.000005 1.515989 38.353996 0 -0.000057 90.000037 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 3.890453 -0.000001 -0.000004 -6.298009 -90.530886 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 17.593168 0 0 0 16.008157 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 17.699579 0 0 -2.794963 -66.211956 -0.906613 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 6.879456 0 0 2.831041 -33.495514 -3.654004 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -3.890452 -0.000001 0.000007 -6.255897 -90.309895 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 17.593164 0 0 0 16.011995 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 17.699577 0 0 2.33062 -66.226587 2.220957 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 6.879456 0 0 -3.168915 -33.46875 -1.473704 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" 0.000002 3.345117 -2.981992 4.944339 89.999982 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 4.126705 0 0 0 5.074516 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 3.613468 0 0 0 7.43745 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 9.183786 0 0 0 20.151327 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 1.673226 1.247213 2.595464 -73.711914 168.587701 91.510847 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 6.028144 0.000002 0 -12.91292 -32.801775 -101.833749 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 11.692552 0 -0.000002 -0.000001 0.000001 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 12.075551 0 -0.000034 -7.742148 1.798745 -178.061242 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 5.564225 -0.55798 -0.100454 -51.159985 -75.906092 -14.492053 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 5.508581 0.000001 0.000001 -0.128403 -78.099989 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 3.800001 0.000001 0 4.526078 -66.592992 0.000004 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 5.744637 0.55798 0.100453 -61.369393 -58.71764 8.796274 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 6.052545 0 -0.000001 -23.542209 -84.10796 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 3.325016 -0.000002 0.000001 -2.203884 -59.043413 0.000004 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 5.613006 1.658157 0.708444 -70.499478 -87.096974 76.889618 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 5.643139 0.000001 0.000001 -51.519625 -88.553491 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 3.079117 -0.000003 0 -7.424503 -67.370787 0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 1.673228 1.247218 -2.595471 73.711914 168.587141 -95.626931 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 6.028143 -0.000001 -0.000001 15.946161 -31.150741 105.625228 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 11.692555 0 0 0.000002 0.000001 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 12.075577 0 -0.000002 3.975641 5.609831 -177.6521 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 5.943744 -0.602343 0.006442 74.957945 -83.501617 28.170793 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 5.043456 0.000001 0 -13.470006 -76.728501 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 3.384895 0.000001 0 -9.064307 -97.57958 -0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 6.213897 0.602343 -0.006442 74.259169 -34.667622 -19.526964 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 5.536302 0 0 65.687206 -54.304481 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 3.312718 0.000001 0 29.106206 -76.658198 -0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 5.899514 1.775719 -0.435098 84.408202 -51.263237 -93.161936 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 5.285242 0 0 68.230564 26.411804 0.000007 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 3.09885 0.000001 -0.000003 49.308976 76.043699 0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 4.015265 1.836178 -0.57813 61.681943 75.212404 147.088698 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 2.400002 -0.000001 0 -42.749987 0.000001 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 1.399998 0 0.000001 -52.875008 0.000002 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 3.420513 1.944044 0.267537 -56.41616 68.849393 -156.975915 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 2.524998 -0.000002 0 38.249975 -0.000005 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 1.582001 0.000001 0 48.374996 -0.000004 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.HC_Body_Bone" "ValveBiped.Bip01_Spine4" 7.856863 0.357139 2.41031 -9.085849 72.317298 154.900057 0 0 0 0 0 0
$definebone "ValveBiped.HC_Head_Bone" "ValveBiped.HC_Body_Bone" 3.738598 -2.965121 -0.136398 -4.500011 -4.50001 12.374975 0 0 0 0 0 0
$definebone "ValveBiped.HC_Rear_Bone" "ValveBiped.HC_Body_Bone" -7.842795 -1.678411 -0.934004 -0.000003 20.249984 29.250012 0 0 0 0 0 0
$definebone "ValveBiped.HC_ThighL_Bone" "ValveBiped.HC_Rear_Bone" -0.450934 -0.675704 -6.164912 -30.718472 -70.093396 -172.984649 0 0 0 0 0 0
$definebone "ValveBiped.HC_CalfL_Bone" "ValveBiped.HC_ThighL_Bone" 6.098811 -0.000001 0 -0.000002 -0.000006 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.HC_ThighR_Bone" "ValveBiped.HC_Rear_Bone" -0.450915 -0.675702 6.164912 -7.079966 -90.538652 174.066278 0 0 0 0 0 0
$definebone "ValveBiped.HC_CalfR_Bone" "ValveBiped.HC_ThighR_Bone" 6.09881 0 0 0.000002 -130.088644 -0.000005 0 0 0 0 0 0
$definebone "ValveBiped.HC_UpperArmL_Bone" "ValveBiped.HC_Body_Bone" 2.630715 -3.155085 -5.016712 17.05689 -28.796166 1.880337 0 0 0 0 0 0
$definebone "ValveBiped.HC_ForeArmL_Bone" "ValveBiped.HC_UpperArmL_Bone" 8.255678 0 0.000001 0.000006 -121.038766 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.HC_UpperArmR_Bone" "ValveBiped.HC_Body_Bone" 2.630416 -3.155087 5.016868 -4.143286 -63.369641 -131.616994 0 0 0 0 0 0
$definebone "ValveBiped.HC_ForeArmR_Bone" "ValveBiped.HC_UpperArmR_Bone" 8.255675 -0.000001 0 0.000012 110.674589 -0.000002 0 0 0 0 0 0

$bonesaveframe "ValveBiped.Bip01_Pelvis" position rotation
$bonesaveframe "ValveBiped.Bip01_L_Thigh" rotation
$bonesaveframe "ValveBiped.Bip01_L_Calf" rotation
$bonesaveframe "ValveBiped.Bip01_L_Foot" rotation
$bonesaveframe "ValveBiped.Bip01_R_Thigh" rotation
$bonesaveframe "ValveBiped.Bip01_R_Calf" rotation
$bonesaveframe "ValveBiped.Bip01_R_Foot" rotation
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
$bonesaveframe "ValveBiped.HC_Body_Bone" position rotation

//$sectionframes 30 119

$poseparameter "move_yaw" -180 180 loop 360

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$ikautoplaylock "rfoot" 1 0.1
$ikautoplaylock "lfoot" 1 0.1

$weightlist "weights_flinch_headinDelta" {
	 "ValveBiped.Bip01_Pelvis" 1
	 "ValveBiped.Bip01_L_Thigh" 0
	 "ValveBiped.Bip01_L_Calf" 0
	 "ValveBiped.Bip01_L_Foot" 0
	 "ValveBiped.Bip01_L_Toe0" 0
	 "ValveBiped.Bip01_R_Thigh" 0
	 "ValveBiped.Bip01_R_Calf" 0
	 "ValveBiped.Bip01_R_Foot" 0
	 "ValveBiped.Bip01_R_Toe0" 0
	 "ValveBiped.Bip01_Spine" 1
	 "ValveBiped.Bip01_Spine1" 1
	 "ValveBiped.Bip01_Spine2" 1
	 "ValveBiped.Bip01_Spine4" 1
	 "ValveBiped.Bip01_L_Clavicle" 1
	 "ValveBiped.Bip01_L_UpperArm" 1
	 "ValveBiped.Bip01_L_Forearm" 1
	 "ValveBiped.Bip01_L_Hand" 1
	 "ValveBiped.Bip01_L_Finger3" 1
	 "ValveBiped.Bip01_L_Finger31" 1
	 "ValveBiped.Bip01_L_Finger32" 1
	 "ValveBiped.Bip01_L_Finger2" 1
	 "ValveBiped.Bip01_L_Finger21" 1
	 "ValveBiped.Bip01_L_Finger22" 1
	 "ValveBiped.Bip01_L_Finger1" 1
	 "ValveBiped.Bip01_L_Finger11" 1
	 "ValveBiped.Bip01_L_Finger12" 1
	 "ValveBiped.Bip01_R_Clavicle" 1
	 "ValveBiped.Bip01_R_UpperArm" 1
	 "ValveBiped.Bip01_R_Forearm" 1
	 "ValveBiped.Bip01_R_Hand" 1
	 "ValveBiped.Bip01_R_Finger3" 1
	 "ValveBiped.Bip01_R_Finger31" 1
	 "ValveBiped.Bip01_R_Finger32" 1
	 "ValveBiped.Bip01_R_Finger2" 1
	 "ValveBiped.Bip01_R_Finger21" 1
	 "ValveBiped.Bip01_R_Finger22" 1
	 "ValveBiped.Bip01_R_Finger1" 1
	 "ValveBiped.Bip01_R_Finger11" 1
	 "ValveBiped.Bip01_R_Finger12" 1
	 "ValveBiped.Bip01_R_Finger0" 1
	 "ValveBiped.Bip01_R_Finger01" 1
	 "ValveBiped.Bip01_R_Finger02" 1
	 "ValveBiped.Bip01_L_Finger0" 1
	 "ValveBiped.Bip01_L_Finger01" 1
	 "ValveBiped.Bip01_L_Finger02" 1
	 "ValveBiped.HC_Body_Bone" 1
	 "ValveBiped.HC_Head_Bone" 1
	 "ValveBiped.HC_Rear_Bone" 1
	 "ValveBiped.HC_ThighL_Bone" 1
	 "ValveBiped.HC_CalfL_Bone" 1
	 "ValveBiped.HC_ThighR_Bone" 1
	 "ValveBiped.HC_CalfR_Bone" 1
	 "ValveBiped.HC_UpperArmL_Bone" 1
	 "ValveBiped.HC_ForeArmL_Bone" 1
	 "ValveBiped.HC_UpperArmR_Bone" 1
	 "ValveBiped.HC_ForeArmR_Bone" 1
}

$weightlist "weights_flinch_head" {
	 "ValveBiped.Bip01_Pelvis" 0
	 "ValveBiped.Bip01_L_Thigh" 0
	 "ValveBiped.Bip01_L_Calf" 0
	 "ValveBiped.Bip01_L_Foot" 0
	 "ValveBiped.Bip01_L_Toe0" 0
	 "ValveBiped.Bip01_R_Thigh" 0
	 "ValveBiped.Bip01_R_Calf" 0
	 "ValveBiped.Bip01_R_Foot" 0
	 "ValveBiped.Bip01_R_Toe0" 0
	 "ValveBiped.Bip01_Spine" 0
	 "ValveBiped.Bip01_Spine1" 0
	 "ValveBiped.Bip01_Spine2" 0
	 "ValveBiped.Bip01_Spine4" 0
	 "ValveBiped.Bip01_L_Clavicle" 0
	 "ValveBiped.Bip01_L_UpperArm" 0
	 "ValveBiped.Bip01_L_Forearm" 0
	 "ValveBiped.Bip01_L_Hand" 0
	 "ValveBiped.Bip01_L_Finger3" 0
	 "ValveBiped.Bip01_L_Finger31" 0
	 "ValveBiped.Bip01_L_Finger32" 0
	 "ValveBiped.Bip01_L_Finger2" 0
	 "ValveBiped.Bip01_L_Finger21" 0
	 "ValveBiped.Bip01_L_Finger22" 0
	 "ValveBiped.Bip01_L_Finger1" 0
	 "ValveBiped.Bip01_L_Finger11" 0
	 "ValveBiped.Bip01_L_Finger12" 0
	 "ValveBiped.Bip01_R_Clavicle" 0
	 "ValveBiped.Bip01_R_UpperArm" 0
	 "ValveBiped.Bip01_R_Forearm" 0
	 "ValveBiped.Bip01_R_Hand" 0
	 "ValveBiped.Bip01_R_Finger3" 0
	 "ValveBiped.Bip01_R_Finger31" 0
	 "ValveBiped.Bip01_R_Finger32" 0
	 "ValveBiped.Bip01_R_Finger2" 0
	 "ValveBiped.Bip01_R_Finger21" 0
	 "ValveBiped.Bip01_R_Finger22" 0
	 "ValveBiped.Bip01_R_Finger1" 0
	 "ValveBiped.Bip01_R_Finger11" 0
	 "ValveBiped.Bip01_R_Finger12" 0
	 "ValveBiped.Bip01_R_Finger0" 0
	 "ValveBiped.Bip01_R_Finger01" 0
	 "ValveBiped.Bip01_R_Finger02" 0
	 "ValveBiped.Bip01_L_Finger0" 0
	 "ValveBiped.Bip01_L_Finger01" 0
	 "ValveBiped.Bip01_L_Finger02" 0
	 "ValveBiped.HC_Body_Bone" 0
	 "ValveBiped.HC_Head_Bone" 0
	 "ValveBiped.HC_Rear_Bone" 0
	 "ValveBiped.HC_ThighL_Bone" 0
	 "ValveBiped.HC_CalfL_Bone" 0
	 "ValveBiped.HC_ThighR_Bone" 0
	 "ValveBiped.HC_CalfR_Bone" 0
	 "ValveBiped.HC_UpperArmL_Bone" 0
	 "ValveBiped.HC_ForeArmL_Bone" 0
	 "ValveBiped.HC_UpperArmR_Bone" 0
	 "ValveBiped.HC_ForeArmR_Bone" 0
}

$animation "@flinch_headinDelta_corrective_animation" "classic_anims\@flinch_headinDelta_corrective_animation.smd" {
}

$animation "@flinch_headCoreDelta_corrective_animation" "classic_anims\@flinch_headCoreDelta_corrective_animation.smd" {
}

$animation "@flinch_headoutDelta_corrective_animation" "classic_anims\@flinch_headoutDelta_corrective_animation.smd" {
}

$animation "@flinch_chestinDelta_corrective_animation" "classic_anims\@flinch_chestinDelta_corrective_animation.smd" {
}

$animation "@flinch_chestCoreDelta_corrective_animation" "classic_anims\@flinch_chestCoreDelta_corrective_animation.smd" {
}

$animation "@flinch_chestoutDelta_corrective_animation" "classic_anims\@flinch_chestoutDelta_corrective_animation.smd" {
}

$animation "@flinch_leftArminDelta_corrective_animation" "classic_anims\@flinch_leftArminDelta_corrective_animation.smd" {
}

$animation "@flinch_leftArmCoreDelta_corrective_animation" "classic_anims\@flinch_leftArmCoreDelta_corrective_animation.smd" {
}

$animation "@flinch_leftArmoutDelta_corrective_animation" "classic_anims\@flinch_leftArmoutDelta_corrective_animation.smd" {
}

$animation "@flinch_rightArminDelta_corrective_animation" "classic_anims\@flinch_rightArminDelta_corrective_animation.smd" {
}

$animation "@flinch_rightArmCoreDelta_corrective_animation" "classic_anims\@flinch_rightArmCoreDelta_corrective_animation.smd" {
}

$animation "@flinch_rightArmoutDelta_corrective_animation" "classic_anims\@flinch_rightArmoutDelta_corrective_animation.smd" {
}

$animation "a_walk1" "classic_anims\a_walk1.smd" {
	fps 24
	loop
	walkframe 46 LX LY
}

$animation "a_walk2" "classic_anims\a_walk2.smd" {
	fps 24
	loop
	walkframe 46 LX LY
}

$animation "a_walk3" "classic_anims\a_walk3.smd" {
	fps 24
	loop
	walkframe 50 LX LY
}

$animation "a_Walk4" "classic_anims\a_Walk4.smd" {
	fps 24
	loop
	walkframe 72 LX LY
}

$animation "a_WalkS" "classic_anims\a_WalkS.smd" {
	fps 24
	loop
	walkframe 45 LX LY
}

$animation "a_WalkSE" "classic_anims\a_WalkSE.smd" {
	fps 24
	loop
	walkframe 45 LX LY
}

$animation "a_WalkE" "classic_anims\a_WalkE.smd" {
	fps 24
	loop
	walkframe 45 LX LY
}

$animation "a_WalkNE" "classic_anims\a_WalkNE.smd" {
	fps 24
	loop
	walkframe 45 LX LY
}

$animation "a_WalkNW" "classic_anims\a_WalkNW.smd" {
	fps 24
	loop
	walkframe 45 LX LY
}

$animation "a_WalkW" "classic_anims\a_WalkW.smd" {
	fps 24
	loop
	walkframe 45 LX LY
}

$animation "a_WalkSW" "classic_anims\a_WalkSW.smd" {
	fps 24
	loop
	walkframe 45 LX LY
}

$sequence "Idle01" {
	"classic_anims\Idle01.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "walk" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_walk1"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	activity "ACT_WALK" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event AE_ZOMBIE_STEP_LEFT 5 "" }
	{ event AE_ZOMBIE_STEP_RIGHT 15 "" }
	{ event AE_ZOMBIE_SCUFF_LEFT 20 "" }
	{ event AE_ZOMBIE_STEP_LEFT 28 "" }
	{ event AE_ZOMBIE_STEP_RIGHT 38 "" }
	{ event AE_ZOMBIE_SCUFF_LEFT 40 "" }
	fadein 0.2
	fadeout 0.2
}

$sequence "walk2" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_walk2"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	activity "ACT_WALK" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event AE_ZOMBIE_STEP_LEFT 7 "" }
	{ event AE_ZOMBIE_SCUFF_RIGHT 10 "" }
	{ event AE_ZOMBIE_STEP_RIGHT 21 "" }
	{ event AE_ZOMBIE_STEP_LEFT 31 "" }
	{ event AE_ZOMBIE_SCUFF_RIGHT 34 "" }
	{ event AE_ZOMBIE_STEP_RIGHT 44 "" }
	fadein 0.2
	fadeout 0.2
}

$sequence "walk3" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_walk3"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	activity "ACT_WALK" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event AE_ZOMBIE_STEP_LEFT 7 "" }
	{ event AE_ZOMBIE_STEP_RIGHT 18 "" }
	{ event AE_ZOMBIE_SCUFF_LEFT 21 "" }
	{ event AE_ZOMBIE_STEP_LEFT 32 "" }
	{ event AE_ZOMBIE_STEP_RIGHT 40 "" }
	{ event AE_ZOMBIE_SCUFF_LEFT 44 "" }
	fadein 0.2
	fadeout 0.2
}

$sequence "walk4" {
	"a_Walk4"
	activity "ACT_WALK" 1
	{ event AE_ZOMBIE_STEP_LEFT 4 "" }
	{ event AE_ZOMBIE_STEP_RIGHT 16 "" }
	{ event AE_ZOMBIE_STEP_LEFT 22 "" }
	{ event AE_ZOMBIE_STEP_RIGHT 28 "" }
	{ event AE_ZOMBIE_STEP_LEFT 43 "" }
	{ event AE_ZOMBIE_STEP_RIGHT 49 "" }
	{ event AE_ZOMBIE_STEP_LEFT 58 "" }
	{ event AE_ZOMBIE_STEP_RIGHT 67 "" }
	fadein 0.2
	fadeout 0.2
}

$sequence "FireWalk" {
	"classic_anims\FireWalk.smd"
	activity "ACT_WALK_ON_FIRE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 30 LX LY
}

$sequence "FireIdle" {
	"classic_anims\FireIdle.smd"
	activity "ACT_IDLE_ON_FIRE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "attackA" {
	"classic_anims\attackA.smd"
	activity "ACT_MELEE_ATTACK1" 2
	{ event AE_ZOMBIE_ATTACK_SCREAM 5 "" }
	{ event AE_ZOMBIE_ATTACK_RIGHT 25 "" }
	{ event AE_NPC_ATTACK_BROADCAST 10 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 47 LX LY
}

$sequence "attackB" {
	"classic_anims\attackB.smd"
	activity "ACT_MELEE_ATTACK1" 2
	{ event AE_ZOMBIE_ATTACK_SCREAM 5 "" }
	{ event AE_ZOMBIE_ATTACK_RIGHT 25 "" }
	{ event AE_NPC_ATTACK_BROADCAST 10 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "attackC" {
	"classic_anims\attackC.smd"
	activity "ACT_MELEE_ATTACK1" 2
	{ event AE_ZOMBIE_ATTACK_SCREAM 5 "" }
	{ event AE_ZOMBIE_ATTACK_LEFT 25 "" }
	{ event AE_NPC_ATTACK_BROADCAST 10 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 47 LX LY
}

$sequence "attackD" {
	"classic_anims\attackD.smd"
	activity "ACT_MELEE_ATTACK1" 2
	{ event AE_ZOMBIE_ATTACK_SCREAM 5 "" }
	{ event AE_ZOMBIE_ATTACK_LEFT 25 "" }
	{ event AE_NPC_ATTACK_BROADCAST 10 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "attackE" {
	"classic_anims\attackE.smd"
	activity "ACT_MELEE_ATTACK1" 2
	{ event AE_ZOMBIE_ATTACK_SCREAM 5 "" }
	{ event AE_ZOMBIE_ATTACK_BOTH 25 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "attackF" {
	"classic_anims\attackF.smd"
	activity "ACT_MELEE_ATTACK1" 2
	{ event AE_ZOMBIE_ATTACK_SCREAM 5 "" }
	{ event AE_ZOMBIE_ATTACK_BOTH 25 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "swatleftmid" {
	"classic_anims\swatleftmid.smd"
	activity "ACT_ZOM_SWATLEFTMID" 1
	{ event AE_ZOMBIE_STARTSWAT 1 "" }
	{ event AE_ZOMBIE_SWATITEM 9 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "swatrightmid" {
	"classic_anims\swatrightmid.smd"
	activity "ACT_ZOM_SWATRIGHTMID" 1
	{ event AE_ZOMBIE_STARTSWAT 1 "" }
	{ event AE_ZOMBIE_SWATITEM 9 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "swatleftlow" {
	"classic_anims\swatleftlow.smd"
	activity "ACT_ZOM_SWATLEFTLOW" 1
	{ event AE_ZOMBIE_STARTSWAT 1 "" }
	{ event AE_ZOMBIE_SWATITEM 15 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 36 LX LY
}

$sequence "swatrightlow" {
	"classic_anims\swatrightlow.smd"
	activity "ACT_ZOM_SWATRIGHTLOW" 1
	{ event AE_ZOMBIE_STARTSWAT 1 "" }
	{ event AE_ZOMBIE_SWATITEM 18 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 38 LX LY
}

$sequence "releasecrab" {
	"classic_anims\releasecrab.smd"
	activity "ACT_ZOM_RELEASECRAB" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "physflinch1" {
	"classic_anims\physflinch1.smd"
	activity "ACT_FLINCH_PHYSICS" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "physflinch2" {
	"classic_anims\physflinch2.smd"
	activity "ACT_FLINCH_PHYSICS" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "physflinch3" {
	"classic_anims\physflinch3.smd"
	activity "ACT_FLINCH_PHYSICS" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "smashfall64" {
	"classic_anims\smashfall64.smd"
	{ event AE_NPC_BODYDROP_HEAVY 10 "" }
	{ event AE_NPC_BODYDROP_HEAVY 27 "" }
	{ event AE_NPC_BODYDROP_HEAVY 37 "" }
	{ event AE_ZOMBIE_GET_UP 75 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "slump_a" {
	"classic_anims\slump_a.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "slumprise_a" {
	"classic_anims\slumprise_a.smd"
	{ event AE_ZOMBIE_ALERTSOUND 1 "" }
	{ event AE_NPC_LEFTFOOT 15 "" }
	{ event AE_NPC_RIGHTFOOT 50 "" }
	{ event AE_ZOMBIE_GET_UP 80 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 68
	walkframe 127 LX LY
}

$sequence "slumprise_a_attack" {
	"classic_anims\slumprise_a_attack.smd"
	{ event AE_ZOMBIE_ALERTSOUND 1 "" }
	{ event AE_NPC_LEFTFOOT 15 "" }
	{ event AE_NPC_RIGHTFOOT 50 "" }
	{ event AE_ZOMBIE_GET_UP 80 "" }
	{ event AE_ZOMBIE_ATTACK_SCREAM 16 "" }
	{ event AE_ZOMBIE_ATTACK_RIGHT 36 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 68
	walkframe 127 LX LY
}

$sequence "slumprise_a2" {
	"classic_anims\slumprise_a2.smd"
	{ event AE_ZOMBIE_ALERTSOUND 1 "" }
	{ event AE_NPC_RIGHTFOOT 16 "" }
	{ event AE_NPC_RIGHTFOOT 22 "" }
	{ event AE_ZOMBIE_GET_UP 24 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 68 LX LY
}

$sequence "slump_b" {
	"classic_anims\slump_b.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "slumprise_b" {
	"classic_anims\slumprise_b.smd"
	{ event AE_ZOMBIE_ALERTSOUND 1 "" }
	{ event AE_NPC_LEFTFOOT 13 "" }
	{ event AE_NPC_RIGHTFOOT 27 "" }
	{ event AE_ZOMBIE_GET_UP 57 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 101 LX LY
}

$sequence "Breakthrough" {
	"classic_anims\Breakthrough.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 54 LX LY
}

$sequence "canal5await" {
	"classic_anims\canal5await.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "canal5aattack" {
	"classic_anims\canal5aattack.smd"
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "flinch_headinDelta" {
	"classic_anims\flinch_headinDelta.smd"
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@flinch_headinDelta_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_flinch_headinDelta"
}

$sequence "flinch_headinFrame" {
	"classic_anims\flinch_headinFrame.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_flinch_headinDelta"
}

$sequence "flinch_headCoreDelta" {
	"classic_anims\flinch_headCoreDelta.smd"
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@flinch_headCoreDelta_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_flinch_headinDelta"
}

$sequence "flinch_headOutFrame" {
	"classic_anims\flinch_headOutFrame.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_flinch_headinDelta"
}

$sequence "flinch_headoutDelta" {
	"classic_anims\flinch_headoutDelta.smd"
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@flinch_headoutDelta_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_flinch_headinDelta"
}

$sequence "flinch_head" {
	"classic_anims\flinch_head.smd"
	activity "ACT_GESTURE_FLINCH_HEAD" 1
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0
	blendlayer "flinch_headinFrame" 0 2 2 3 xfade spline
	blendlayer "flinch_headOutFrame" 2 3 3 35 spline
	blendlayer "flinch_headinDelta" 0 0 2 2
	blendlayer "flinch_headCoreDelta" 2 2 3 3
	blendlayer "flinch_headoutDelta" 3 3 35 35
	fps 30
	weightlist "weights_flinch_head"
}

$sequence "flinch_chestinDelta" {
	"classic_anims\flinch_chestinDelta.smd"
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@flinch_chestinDelta_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_flinch_headinDelta"
}

$sequence "flinch_chestinFrame" {
	"classic_anims\flinch_chestinFrame.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_flinch_headinDelta"
}

$sequence "flinch_chestCoreDelta" {
	"classic_anims\flinch_chestCoreDelta.smd"
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@flinch_chestCoreDelta_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_flinch_headinDelta"
}

$sequence "flinch_chestOutFrame" {
	"classic_anims\flinch_chestOutFrame.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_flinch_headinDelta"
}

$sequence "flinch_chestoutDelta" {
	"classic_anims\flinch_chestoutDelta.smd"
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@flinch_chestoutDelta_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_flinch_headinDelta"
}

$sequence "flinch_chest" {
	"classic_anims\flinch_chest.smd"
	activity "ACT_GESTURE_FLINCH_CHEST" 1
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0
	blendlayer "flinch_chestinFrame" 0 5 5 18 xfade spline
	blendlayer "flinch_chestOutFrame" 5 18 18 25 spline
	blendlayer "flinch_chestinDelta" 0 0 5 5
	blendlayer "flinch_chestCoreDelta" 5 5 18 18
	blendlayer "flinch_chestoutDelta" 18 18 25 25
	fps 30
	weightlist "weights_flinch_head"
}

$sequence "flinch_leftArminDelta" {
	"classic_anims\flinch_leftArminDelta.smd"
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@flinch_leftArminDelta_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_flinch_headinDelta"
}

$sequence "flinch_leftArminFrame" {
	"classic_anims\flinch_leftArminFrame.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_flinch_headinDelta"
}

$sequence "flinch_leftArmCoreDelta" {
	"classic_anims\flinch_leftArmCoreDelta.smd"
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@flinch_leftArmCoreDelta_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_flinch_headinDelta"
}

$sequence "flinch_leftArmOutFrame" {
	"classic_anims\flinch_leftArmOutFrame.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_flinch_headinDelta"
}

$sequence "flinch_leftArmoutDelta" {
	"classic_anims\flinch_leftArmoutDelta.smd"
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@flinch_leftArmoutDelta_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_flinch_headinDelta"
}

$sequence "flinch_leftArm" {
	"classic_anims\flinch_leftArm.smd"
	activity "ACT_GESTURE_FLINCH_LEFTARM" 1
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0
	blendlayer "flinch_leftArminFrame" 0 1 1 3 xfade spline
	blendlayer "flinch_leftArmOutFrame" 1 3 3 30 spline
	blendlayer "flinch_leftArminDelta" 0 0 1 1
	blendlayer "flinch_leftArmCoreDelta" 1 1 3 3
	blendlayer "flinch_leftArmoutDelta" 3 3 30 30
	fps 30
	weightlist "weights_flinch_head"
}

$sequence "flinch_rightArminDelta" {
	"classic_anims\flinch_rightArminDelta.smd"
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@flinch_rightArminDelta_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_flinch_headinDelta"
}

$sequence "flinch_rightArminFrame" {
	"classic_anims\flinch_rightArminFrame.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_flinch_headinDelta"
}

$sequence "flinch_rightArmCoreDelta" {
	"classic_anims\flinch_rightArmCoreDelta.smd"
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@flinch_rightArmCoreDelta_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_flinch_headinDelta"
}

$sequence "flinch_rightArmOutFrame" {
	"classic_anims\flinch_rightArmOutFrame.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_flinch_headinDelta"
}

$sequence "flinch_rightArmoutDelta" {
	"classic_anims\flinch_rightArmoutDelta.smd"
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@flinch_rightArmoutDelta_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_flinch_headinDelta"
}

$sequence "flinch_rightArm" {
	"classic_anims\flinch_rightArm.smd"
	activity "ACT_GESTURE_FLINCH_RIGHTARM" 1
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0
	blendlayer "flinch_rightArminFrame" 0 1 1 3 xfade spline
	blendlayer "flinch_rightArmOutFrame" 1 3 3 40 spline
	blendlayer "flinch_rightArminDelta" 0 0 1 1
	blendlayer "flinch_rightArmCoreDelta" 1 1 3 3
	blendlayer "flinch_rightArmoutDelta" 3 3 40 40
	fps 30
	weightlist "weights_flinch_head"
}

$sequence "flinch_leftLeg" {
	"classic_anims\flinch_leftLeg.smd"
	activity "ACT_FLINCH_LEFTLEG" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "flinch_rightLeg" {
	"classic_anims\flinch_rightLeg.smd"
	activity "ACT_FLINCH_RIGHTLEG" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "alyx_zombie_fight1" {
	"classic_anims\alyx_zombie_fight1.smd"
	activity "ACT_DI_ALYX_ZOMBIE_MELEE" 1
	{ event AE_CL_PLAYSOUND 10 "Zombie.Alert" }
	{ event AE_CL_PLAYSOUND 36 "Zombie.Pain" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 66 LX LY
}

$sequence "alyx_zombie_fight2" {
	"classic_anims\alyx_zombie_fight2.smd"
	activity "ACT_DI_ALYX_ZOMBIE_MELEE" 1
	{ event AE_ZOMBIE_ALERTSOUND 4 "" }
	{ event AE_CL_PLAYSOUND 38 "Zombie.Pain" }
	{ event AE_ZOMBIE_POPHEADCRAB 76 "ValveBiped.Bip01_R_hand 1000" }
	{ event AE_NPC_SET_INTERACTION_CANTDIE 50 "0" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "alyx_zombie_shotgun_fight1" {
	"classic_anims\alyx_zombie_shotgun_fight1.smd"
	activity "ACT_DI_ALYX_ZOMBIE_SHOTGUN64" 1
	{ event AE_ZOMBIE_ALERTSOUND 4 "" }
	{ event AE_CL_PLAYSOUND 23 "Zombie.Pain" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "alyx_zombie_shotgun_fight2" {
	"classic_anims\alyx_zombie_shotgun_fight2.smd"
	activity "ACT_DI_ALYX_ZOMBIE_SHOTGUN64" 1
	{ event AE_ZOMBIE_ALERTSOUND 4 "" }
	{ event AE_CL_PLAYSOUND 23 "Zombie.Pain" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "alyx_zombie_shotgun_fight3" {
	"classic_anims\alyx_zombie_shotgun_fight3.smd"
	activity "ACT_DI_ALYX_ZOMBIE_SHOTGUN26" 1
	{ event AE_ZOMBIE_ALERTSOUND 4 "" }
	{ event AE_CL_PLAYSOUND 17 "Zombie.Pain" }
	{ event AE_ZOMBIE_POPHEADCRAB 17 "ValveBiped.Bip01_R_hand 800" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "alyx_zombie_shotgun_fight4" {
	"classic_anims\alyx_zombie_shotgun_fight4.smd"
	activity "ACT_DI_ALYX_ZOMBIE_SHOTGUN26" 1
	{ event AE_ZOMBIE_ALERTSOUND 4 "" }
	{ event AE_CL_PLAYSOUND 15 "Zombie.Die" }
	{ event AE_CL_PLAYSOUND 45 "Zombie.Pain" }
	{ event AE_NPC_HURT_INTERACTION_PARTNER 48 "ME 200" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "alyx_zombie_kick1" {
	"classic_anims\alyx_zombie_kick1.smd"
	activity "ACT_DI_ALYX_ZOMBIE_MELEE" 1
	{ event AE_ZOMBIE_POPHEADCRAB 22 "ValveBiped.Bip01_R_Foot 1500" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "alyx_zombie_grab" {
	"classic_anims\alyx_zombie_grab.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 29 LX LY
}

$sequence "alyx_zombie_grab_PI" {
	"classic_anims\alyx_zombie_grab_PI.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "alyx_zombie_grab_exit" {
	"classic_anims\alyx_zombie_grab_exit.smd"
	{ event AE_NPC_HURT_INTERACTION_PARTNER 20 "ME 100" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 18 LX LY
}

$sequence "alyx_zombie_elbow_45L" {
	"classic_anims\alyx_zombie_elbow_45L.smd"
	{ event AE_NPC_HURT_INTERACTION_PARTNER 43 "ME 100" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "vort_zombie_attack02" {
	"classic_anims\vort_zombie_attack02.smd"
	{ event AE_ZOMBIE_POPHEADCRAB 78 "ValveBiped.Bip01_R_Foot 2500" }
	{ event AE_NPC_HURT_INTERACTION_PARTNER 80 "ME 200" }
	{ event AE_CL_PLAYSOUND 20 "NPC_FastZombie.Pain" }
	{ event AE_CL_PLAYSOUND 51 "Flesh.ImpactHard" }
	{ event AE_CL_PLAYSOUND 78 "GrenadeSpit.Hit" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "vort_zombie_attack" {
	"classic_anims\vort_zombie_attack.smd"
	{ event AE_ZOMBIE_ALERTSOUND 4 "" }
	{ event AE_CL_PLAYSOUND 12 "Zombie.AttackMiss" }
	{ event AE_CL_PLAYSOUND 16 "Zombie.AttackMiss" }
	{ event AE_CL_PLAYSOUND 19 "Zombie.Idle" }
	{ event AE_CL_PLAYSOUND 26 "Zombie.AttackMiss" }
	{ event AE_CL_PLAYSOUND 37 "Zombie.Pain" }
	{ event AE_CL_PLAYSOUND 60 "Flesh_Bloody.ImpactHard" }
	{ event AE_ZOMBIE_POPHEADCRAB 62 "ValveBiped.cleaver_attachment 1800" }
	{ event AE_NPC_HURT_INTERACTION_PARTNER 73 "ME 200" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Tantrum" {
	"classic_anims\Tantrum.smd"
	activity "ACT_ZOMBIE_TANTRUM" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "WallPound" {
	"classic_anims\WallPound.smd"
	activity "ACT_ZOMBIE_WALLPOUND" 1
	{ event AE_ZOMBIE_POUND 14 "" }
	{ event AE_ZOMBIE_POUND 35 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "ragdoll" {
	"classic_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

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



