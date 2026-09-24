$cdmaterials "models\zombie_04\"
$cdmaterials "models\zombie_04\facemap\"
$cdmaterials "models\zombie_04\flesh\"
$cdmaterials "models\zombie_04\mouth\"
$cdmaterials "models\zombie_04\sheet\"
$cdmaterials "models\zombie_04\skull\"
$cdmaterials "models\zombie_04\bodygroups\"

// Created by Crowbar 0.74

$modelname "Zombie/Fast.mdl"

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

$surfaceprop "flesh"

$contents "solid"

$illumposition 2.144 -2.626 26.526

$eyeposition 0 0 64

$attachment "headcrab" "ValveBiped.HC_BodyCube" 0 -1.5 0 rotate 0 0 70
$attachment "head" "ValveBiped.HC_BodyCube" 0 0 0 rotate 0 0 0
$attachment "chest" "ValveBiped.Bip01_Spine4" -4 0 3 rotate -70 0 -180
$attachment "Blood_Left" "ValveBiped.Bip01_L_Finger2" 0 0 0 rotate 0 0 0
$attachment "Blood_Right" "ValveBiped.Bip01_R_Finger2" 0 0 0 rotate 0 0 0
$attachment "Cable1a" "ValveBiped.Bip01_L_Forearm" 0 0 0 rotate 0 0 0
$attachment "Cable1b" "ValveBiped.Bip01_L_Hand" 0 0 0 rotate 0 0 0
$attachment "Cable2a" "ValveBiped.Bip01_R_Forearm" 0 0 0 rotate 0 0 0
$attachment "Cable2b" "ValveBiped.Bip01_R_Hand" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hboxset "default"
$hbox 0 "ValveBiped.Bip01_L_UpperArm" -4.65 -4.15 -2.87 14.95 3.12 2.13
$hbox 0 "ValveBiped.Bip01_L_Forearm" -2.5 -2.61 -1.73 12.71 1.55 2.13
$hbox 0 "ValveBiped.Bip01_L_Hand" -2.46 -1.3 -4.35 6.74 1.97 2.31
$hbox 0 "ValveBiped.Bip01_R_UpperArm" -3.37 -3.01 -2.85 14.89 3.63 2.16
$hbox 0 "ValveBiped.Bip01_R_Forearm" -2.26 -1.52 -1.69 12.99 2.87 2.16
$hbox 0 "ValveBiped.Bip01_R_Hand" -2.35 -1.44 -2.36 6.91 1.8 4.27
$hbox 0 "ValveBiped.Bip01_L_Thigh" -2 -5.33 -5.61 18 6.27 3.51
$hbox 0 "ValveBiped.Bip01_L_Calf" -3.88 -6.17 -4.63 22.02 4.23 4.24
$hbox 0 "ValveBiped.Bip01_R_Thigh" -2 -6.27 -5.61 18 5.33 3.51
$hbox 0 "ValveBiped.Bip01_R_Calf" -3.88 -4.23 -4.63 22.02 6.17 4.24
$hbox 1 "ValveBiped.HC_BodyCube" -6.25 -5.95 -5.48 6.03 8.21 4.94
$hbox 0 "ValveBiped.Bip01_Spine2" -2 -8 -4 18 8 8
$hbox 0 "ValveBiped.Bip01" -8 -4.5 -6 8 10.5 6

$definebone "ValveBiped.Bip01" "" 0 1.516078 38.353989 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Pelvis" "ValveBiped.Bip01" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 3.890447 0 0 -3.134709 -83.193056 -90.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 17.591 0 0 0 8.817992 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 17.699581 0 0 1.263166 -62.10314 -7.021982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -3.890447 0 0 -3.134709 -96.806969 -90.000023 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 17.590998 0 0 0 8.817992 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 17.699581 0 0 -1.263143 -62.103126 7.634777 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01" 0 3.345132 -2.981898 3.030546 89.999982 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 4.126621 0 0 0 -6.300129 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 3.612873 0 0 0 9.000307 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 9.183975 0 0 0 9.938355 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 3.138083 0 0 0 -53.661333 179.999964 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 1.707666 0.000001 0 0 -23.096614 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 1.663039 1.21051 2.595493 -73.711859 169.261336 90.864274 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 6.028141 0.000002 0 -3.233429 -33.942997 -89.993623 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 12.693002 0 0.000001 0.000001 -43.708484 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 11.575974 0.000001 -0.000031 -0.152233 2.188072 66.004332 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 5.562233 -0.288268 -0.510574 11.370637 -0.288829 -175.42106 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 5.1585 -0.000001 -0.000001 -0.325442 0.504031 -4.026878 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 3.326002 -0.000001 0 -0.423419 0.564364 0.509073 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 5.591166 -0.27902 1.848881 -6.139756 0.26803 -175.484608 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 5.292999 0.000001 -0.000002 -0.3581 0.4814 -4.215556 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 3.079116 -0.000001 0.000002 -0.392477 0.453783 0.399808 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 5.739738 -0.095433 0.607274 1.464941 -1.052525 -175.509634 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 5.652501 -0.000001 0 -0.347904 0.488849 -3.881531 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 3.325017 0 -0.000002 -0.380218 0.464097 0.535027 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 1.66305 1.210515 -2.595442 73.455003 168.779602 -95.441805 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 6.028141 -0.000001 0 3.847067 -33.25505 93.511751 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 12.693002 0 0.000003 -0.000004 -46.506642 0.000006 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 11.599607 0.000002 0.000001 -6.102462 1.63843 -66.743331 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 5.928185 0.378912 0.637283 -10.707781 6.136659 168.772622 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 5.074002 0.000001 -0.000001 0.000001 0.000005 -0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 3.325999 0.000001 0.000002 -0.000057 0.000006 -0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 6.189647 0.5688 -0.554352 -0.783921 4.738873 168.977514 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 5.511002 0.000002 0.000001 -0.000001 0.7107 -0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 3.325017 -0.000001 -0.000001 -0.000003 -0.566309 -0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 5.90046 0.2992 -1.780354 7.365085 5.871209 168.939183 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 5.248501 0.000003 -0.000001 0 0.678272 -0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 3.151001 0.000001 -0.000001 0 -0.573814 -0.000003 0 0 0 0 0 0
$definebone "ValveBiped.HC_BodyCube" "ValveBiped.Bip01_Spine4" 7.600445 -0.908441 0.636362 -89.999982 170.392033 0 0 0 0 0 0 0
$definebone "ValveBiped.HC_HeadCube" "ValveBiped.HC_BodyCube" 0.051795 -3.221541 -2.149795 -0.227178 -179.024162 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.HC_BoneLF" "ValveBiped.HC_HeadCube" -3.929418 0.000003 0 34.419294 -144.015809 26.145384 0 0 0 0 0 0
$definebone "ValveBiped.HC_BoneLF1" "ValveBiped.HC_BoneLF" 13.106231 0.000003 0 0 116.133679 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.HC_BoneRF" "ValveBiped.HC_HeadCube" 3.929418 -0.000002 0 30.834414 -33.423039 -23.567301 0 0 0 0 0 0
$definebone "ValveBiped.HC_BoneRF1" "ValveBiped.HC_BoneRF" 13.106231 0.000002 0 -0.000001 -118.266296 -0.000002 0 0 0 0 0 0
$definebone "ValveBiped.HC_BoneLB" "ValveBiped.HC_BodyCube" 3.007646 4.34452 0.542817 -15.513807 40.457246 75.722387 0 0 0 0 0 0
$definebone "ValveBiped.HC_BoneLB1" "ValveBiped.HC_BoneLB" 10.074753 -0.000005 -0.000001 -0.000001 -93.416422 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.HC_BoneLB2" "ValveBiped.HC_BoneLB1" 10.292003 -0.000002 0 -0.000001 -24.396715 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.HC_BoneRB" "ValveBiped.HC_BodyCube" -2.753414 4.323161 0.558394 -12.847948 130.549176 110.68284 0 0 0 0 0 0
$definebone "ValveBiped.HC_BoneRB1" "ValveBiped.HC_BoneRB" 10.074757 0.000002 0 0 -91.912742 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.HC_BoneRB2" "ValveBiped.HC_BoneRB1" 10.292 -0.000001 -0.000001 0 -23.266271 0.000002 0 0 0 0 0 0

$bonesaveframe "ValveBiped.Bip01" position rotation
$bonesaveframe "ValveBiped.Bip01_Pelvis" rotation
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
$bonesaveframe "ValveBiped.Bip01_Neck1" rotation
$bonesaveframe "ValveBiped.Bip01_Head1" rotation
$bonesaveframe "ValveBiped.Bip01_L_Clavicle" rotation
$bonesaveframe "ValveBiped.Bip01_L_UpperArm" rotation
$bonesaveframe "ValveBiped.Bip01_L_Forearm" rotation
$bonesaveframe "ValveBiped.Bip01_L_Hand" rotation
$bonesaveframe "ValveBiped.Bip01_R_Clavicle" rotation
$bonesaveframe "ValveBiped.Bip01_R_UpperArm" rotation
$bonesaveframe "ValveBiped.Bip01_R_Forearm" rotation
$bonesaveframe "ValveBiped.Bip01_R_Hand" rotation
$bonesaveframe "ValveBiped.HC_BodyCube" position rotation
$bonesaveframe "ValveBiped.HC_HeadCube" position rotation
$bonesaveframe "ValveBiped.HC_BoneLF" rotation
$bonesaveframe "ValveBiped.HC_BoneLF1" rotation
$bonesaveframe "ValveBiped.HC_BoneRF" rotation
$bonesaveframe "ValveBiped.HC_BoneRF1" rotation
$bonesaveframe "ValveBiped.HC_BoneLB" rotation
$bonesaveframe "ValveBiped.HC_BoneLB1" rotation
$bonesaveframe "ValveBiped.HC_BoneRB" rotation
$bonesaveframe "ValveBiped.HC_BoneRB1" rotation

$poseparameter "move_yaw" -180 180 loop 0
$poseparameter "lean_lateral" -1 1 loop 0
$poseparameter "lean_vertical" -1 1 loop 0

$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.806 -0.592 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.779 -0.627 0
$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.75 0.661 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.779 0.628 0
$ikchain "zombie_right_foot" "ValveBiped.Bip01_R_Foot" knee 0.806 -0.592 0
$ikchain "zombie_left_foot" "ValveBiped.Bip01_L_Foot" knee 0.779 -0.627 0
$ikchain "zombie_right_hand" "ValveBiped.Bip01_R_Hand" knee 0.75 0.661 0
$ikchain "zombie_left_hand" "ValveBiped.Bip01_L_Hand" knee 0.779 0.628 0

$animation "vehicle_idle_lean_left_corrective_animation" "fast_anims\vehicle_idle_lean_left_corrective_animation.smd" {
}

$animation "vehicle_idle_lean_center_corrective_animation" "fast_anims\vehicle_idle_lean_center_corrective_animation.smd" {
}

$animation "vehicle_idle_lean_right_corrective_animation" "fast_anims\vehicle_idle_lean_right_corrective_animation.smd" {
}

$animation "vehicle_idle_lean_up_corrective_animation" "fast_anims\vehicle_idle_lean_up_corrective_animation.smd" {
}

$animation "vehicle_idle_lean_down_corrective_animation" "fast_anims\vehicle_idle_lean_down_corrective_animation.smd" {
}

$animation "climblanding" "fast_anims\climblanding.smd" {
	fps 30
}

$animation "a_Walks" "fast_anims\a_Walks.smd" {
	fps 30
	loop
	walkframe 20 LX LY
}

$animation "a_WalksE" "fast_anims\a_WalksE.smd" {
	fps 30
	loop
	walkframe 20 LX LY
}

$animation "a_WalkE" "fast_anims\a_WalkE.smd" {
	fps 30
	loop
	walkframe 20 LX LY
}

$animation "a_WalkNE" "fast_anims\a_WalkNE.smd" {
	fps 30
	loop
	walkframe 20 LX LY
}

$animation "a_WalkN" "fast_anims\a_WalkN.smd" {
	fps 30
	loop
	walkframe 20 LX LY
}

$animation "a_WalkNW" "fast_anims\a_WalkNW.smd" {
	fps 30
	loop
	walkframe 20 LX LY
}

$animation "a_WalkW" "fast_anims\a_WalkW.smd" {
	fps 30
	loop
	walkframe 20 LX LY
}

$animation "a_WalkSW" "fast_anims\a_WalkSW.smd" {
	fps 30
	loop
	walkframe 20 LX LY
}

$animation "vehicle_idle_lean_neutral" "fast_anims\vehicle_idle_lean_neutral.smd" {
	fps 30
}

$animation "vehicle_idle_lean_center" "fast_anims\vehicle_idle_lean_center.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "vehicle_idle_lean_center_corrective_animation" 0
}

$animation "vehicle_idle_lean_right" "fast_anims\vehicle_idle_lean_right.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "vehicle_idle_lean_right_corrective_animation" 0
}

$animation "vehicle_idle_lean_left" "fast_anims\vehicle_idle_lean_left.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "vehicle_idle_lean_left_corrective_animation" 0
}

$animation "vehicle_idle_lean_up" "fast_anims\vehicle_idle_lean_up.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "vehicle_idle_lean_up_corrective_animation" 0
}

$animation "vehicle_idle_lean_down" "fast_anims\vehicle_idle_lean_down.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "vehicle_idle_lean_down_corrective_animation" 0
}

$sequence "idle" {
	"fast_anims\idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "idle_angry" {
	"fast_anims\idle_angry.smd"
	activity "ACT_IDLE_ANGRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "idle_onfire" {
	"fast_anims\idle_onfire.smd"
	activity "ACT_IDLE_ON_FIRE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Run" {
	"fast_anims\Run.smd"
	activity "ACT_RUN" 1
	{ event AE_FASTZOMBIE_GALLOP_LEFT 5 "" }
	{ event AE_FASTZOMBIE_GALLOP_RIGHT 9 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 14 LX
}

$sequence "Leap" {
	"fast_anims\Leap.smd"
	activity "ACT_RANGE_ATTACK1" 1
	{ event AE_FASTZOMBIE_LEAP 8 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 1 LX LY LZ
}

$sequence "LeapStrike" {
	"fast_anims\LeapStrike.smd"
	activity "ACT_FASTZOMBIE_LEAP_STRIKE" 1
	fadein 0.2
	fadeout 0.2
	fps 26
	loop
	walkframe 11 LX LY LZ
}

$sequence "LandRight" {
	"fast_anims\LandRight.smd"
	activity "ACT_FASTZOMBIE_LAND_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 24 LX LY
}

$sequence "LandLeft" {
	"fast_anims\LandLeft.smd"
	activity "ACT_FASTZOMBIE_LAND_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 30 LX LY
}

$sequence "Melee" {
	"fast_anims\Melee.smd"
	activity "ACT_MELEE_ATTACK1" 1
	{ event AE_ZOMBIE_ATTACK_RIGHT 3 "" }
	{ event AE_ZOMBIE_ATTACK_LEFT 7 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 14 LX LY LZ
}

$sequence "climbmount" {
	"fast_anims\climbmount.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 21 LX LY LZ
}

$sequence "climbloop" {
	"fast_anims\climbloop.smd"
	activity "ACT_CLIMB_UP" 1
	{ event AE_FASTZOMBIE_CLIMB_LEFT 5 "" }
	{ event AE_FASTZOMBIE_CLIMB_RIGHT 12 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 14 LZ
}

$sequence "climbdismount" {
	"fast_anims\climbdismount.smd"
	activity "ACT_CLIMB_DISMOUNT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 33 LZ
	walkframe 52 LX
}

$sequence "JumpNavMove" {
	"fast_anims\JumpNavMove.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 43
}

$sequence "leap_start" {
	"fast_anims\leap_start.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 4
}

$sequence "leap_loop" {
	"fast_anims\leap_loop.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 30
}

$sequence "leap_land" {
	"fast_anims\leap_land.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 9
}

$sequence "BR2_Roar" {
	"fast_anims\BR2_Roar.smd"
	activity "ACT_FASTZOMBIE_FRENZY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 40 LX LY
}

$sequence "BR2_Attack" {
	"fast_anims\BR2_Attack.smd"
	activity "ACT_FASTZOMBIE_BIG_SLASH" 1
	{ event AE_ZOMBIE_ATTACK_RIGHT 18 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 25 LX LY
}

$sequence "walk_all" {
	"a_Walks"
	"a_WalksE"
	"a_WalkE"
	"a_WalkNE"
	"a_WalkN"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_Walks"
	activity "ACT_WALK" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event AE_ZOMBIE_STEP_RIGHT 7 "" }
	{ event AE_ZOMBIE_STEP_LEFT 16 "" }
	fadein 0.2
	fadeout 0.2
}

$sequence "vehicle_lean_all" {
	"vehicle_idle_lean_left"
	"vehicle_idle_lean_center"
	"vehicle_idle_lean_right"
	blend "lean_lateral" -1 1
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	iklock "zombie_right_foot" 1 0
	iklock "zombie_left_foot" 1 0
	iklock "zombie_right_hand" 1 0
	iklock "zombie_left_hand" 1 0
}

$sequence "vehicle_lean_vertical" {
	"vehicle_idle_lean_up"
	"vehicle_idle_lean_center"
	"vehicle_idle_lean_down"
	blend "lean_vertical" -1 1
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	iklock "zombie_right_foot" 1 0
	iklock "zombie_left_foot" 1 0
	iklock "zombie_right_hand" 1 0
	iklock "zombie_left_hand" 1 0
}

$sequence "vehicle_idle" {
	"fast_anims\vehicle_idle.smd"
	activity "ACT_PASSENGER_IDLE" 1
	fadein 0.2
	fadeout 0.2
	addlayer "vehicle_lean_all"
	addlayer "vehicle_lean_vertical"
	fps 30
	loop
}

$sequence "vehicle_idle_right" {
	"fast_anims\vehicle_idle_right.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "vehicle_idle_left" {
	"fast_anims\vehicle_idle_left.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "buggy_jumpdown_preidle" {
	"fast_anims\buggy_jumpdown_preidle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 3 LX LY LZ
	walkframe 6 LX LY LZ
	walkframe 10 LX LY LZ
	walkframe 17 LX LY LZ
	walkframe 23 LX LY LZ
}

$sequence "buggy_preidle" {
	"fast_anims\buggy_preidle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "buggy_preidle_leap" {
	"fast_anims\buggy_preidle_leap.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 6 LX LY LZ
	walkframe 15 LX LY LZ
}

$sequence "buggy_postidle_leap" {
	"fast_anims\buggy_postidle_leap.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "buggy_enter1" {
	"fast_anims\buggy_enter1.smd"
	{ event AE_PASSENGER_PHYSICS_PUSH 8 "150000" }
	fadein 0.2
	fadeout 0.2
	keyvalues
	{
		entryexit_blend 
		{
			"origin"			 
			{
				"startframe" "0"
				"endframe" "5"
			}
			"angles"			 
			{
				"startframe" "0"
				"endframe" "5"
			}
		}
	}
	fps 30
}

$sequence "buggy_enter_right" {
	"fast_anims\buggy_enter_right.smd"
	{ event AE_PASSENGER_PHYSICS_PUSH 6 "300000" }
	fadein 0.2
	fadeout 0.2
	keyvalues
	{
		entryexit_blend 
		{
			"origin"			 
			{
				"startframe" "0"
				"endframe" "5"
			}
			"angles"			 
			{
				"startframe" "0"
				"endframe" "5"
			}
		}
	}
	fps 30
	walkframe 15 LX LY LZ LZR
}

$sequence "buggy_enter_left" {
	"fast_anims\buggy_enter_left.smd"
	{ event AE_PASSENGER_PHYSICS_PUSH 6 "400000" }
	fadein 0.2
	fadeout 0.2
	keyvalues
	{
		entryexit_blend 
		{
			"origin"			 
			{
				"startframe" "0"
				"endframe" "5"
			}
			"angles"			 
			{
				"startframe" "0"
				"endframe" "5"
			}
		}
	}
	fps 30
	walkframe 15 LX LY LZ LZR
}

$sequence "buggy_enter_front_left" {
	"fast_anims\buggy_enter_front_left.smd"
	{ event 1008 45 "NPC_FastZombie.CarScream" }
	{ event AE_PASSENGER_PHYSICS_PUSH 8 "300000" }
	fadein 0.2
	fadeout 0.2
	keyvalues
	{
		entryexit_blend 
		{
			"origin"			 
			{
				"startframe" "0"
				"endframe" "5"
			}
			"angles"			 
			{
				"startframe" "0"
				"endframe" "5"
			}
		}
	}
	fps 30
	walkframe 77 LX LY LZ
}

$sequence "buggy_enter_front_right" {
	"fast_anims\buggy_enter_front_right.smd"
	{ event AE_PASSENGER_PHYSICS_PUSH 8 "300000" }
	fadein 0.2
	fadeout 0.2
	keyvalues
	{
		entryexit_blend 
		{
			"origin"			 
			{
				"startframe" "0"
				"endframe" "5"
			}
			"angles"			 
			{
				"startframe" "0"
				"endframe" "5"
			}
		}
	}
	fps 30
	walkframe 24 LX LY LZ
}

$sequence "buggy_enter_back_left" {
	"fast_anims\buggy_enter_back_left.smd"
	{ event AE_PASSENGER_PHYSICS_PUSH 6 "400000" }
	fadein 0.2
	fadeout 0.2
	keyvalues
	{
		entryexit_blend 
		{
			"origin"			 
			{
				"startframe" "0"
				"endframe" "5"
			}
			"angles"			 
			{
				"startframe" "0"
				"endframe" "5"
			}
		}
	}
	fps 30
	walkframe 40 LX LY LZ LZR
}

$sequence "buggy_enter_back_right" {
	"fast_anims\buggy_enter_back_right.smd"
	{ event AE_PASSENGER_PHYSICS_PUSH 6 "300000" }
	fadein 0.2
	fadeout 0.2
	keyvalues
	{
		entryexit_blend 
		{
			"origin"			 
			{
				"startframe" "0"
				"endframe" "5"
			}
			"angles"			 
			{
				"startframe" "0"
				"endframe" "5"
			}
		}
	}
	fps 30
	walkframe 40 LX LY LZ LZR
}

$sequence "buggy_dismount" {
	"fast_anims\buggy_dismount.smd"
	fadein 0.2
	fadeout 0.2
	keyvalues
	{
		entryexit_blend 
		{
			"origin"			 
			{
				"startframe" "0"
				"endframe" "1"
			}
			"angles"			 
			{
				"startframe" "0"
				"endframe" "1"
			}
		}
	}
	fps 30
	walkframe 3 LX LY LZ
}

$sequence "vehicle_bump" {
	"fast_anims\vehicle_bump.smd"
	activity "ACT_PASSENGER_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "vehicle_melee1" {
	"fast_anims\vehicle_melee1.smd"
	activity "ACT_PASSENGER_MELEE_ATTACK1" 1
	{ event AE_ZOMBIE_ATTACK_LEFT 8 "" }
	fadein 0.2
	fadeout 0.2
	addlayer "vehicle_lean_all"
	addlayer "vehicle_lean_vertical"
	fps 30
}

$sequence "vehicle_melee2" {
	"fast_anims\vehicle_melee2.smd"
	activity "ACT_PASSENGER_MELEE_ATTACK1" 1
	{ event AE_ZOMBIE_ATTACK_LEFT 8 "" }
	fadein 0.2
	fadeout 0.2
	addlayer "vehicle_lean_all"
	addlayer "vehicle_lean_vertical"
	fps 30
}

$sequence "vehicle_pass_melee1" {
	"fast_anims\vehicle_pass_melee1.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "vehicle_driver_melee1" {
	"fast_anims\vehicle_driver_melee1.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "vehicle_roar" {
	"fast_anims\vehicle_roar.smd"
	activity "ACT_PASSENGER_THREATEN" 1
	{ event 1008 6 "NPC_FastZombie.CarScream" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "vehicle_leap" {
	"fast_anims\vehicle_leap.smd"
	activity "ACT_PASSENGER_RANGE_ATTACK1" 1
	{ event AE_FASTZOMBIE_VEHICLE_LEAP 8 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 1 LX LY LZ
}

$sequence "vehicle_leap_loop" {
	"fast_anims\vehicle_leap_loop.smd"
	activity "ACT_PASSENGER_ZOMBIE_LEAP_LOOP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 11 LX LY LZ
}

$sequence "ragdoll" {
	"fast_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "buggy_fast_dynamic01" {
	"fast_anims\buggy_fast_dynamic01.smd"
	{ event 1008 4 "NPC_FastZombie.CarEnter1" }
	{ event 1008 21 "NPC_FastZombie.CarEnter2" }
	{ event 1008 30 "NPC_FastZombie.CarEnter3" }
	{ event 1008 45 "NPC_FastZombie.CarEnter4" }
	{ event AE_SV_PLAYSOUND 60 "NPC_FastZombie.CarScream" }
	{ event AE_PASSENGER_PHYSICS_PUSH 8 "300000" }
	{ event AE_FASTZOMBIE_VEHICLE_SS_DIE 95 "" }
	fadein 0.2
	fadeout 0.2
	keyvalues
	{
		entryexit_blend 
		{
			"origin"			 
			{
				"startframe" "0"
				"endframe" "5"
			}
			"angles"			 
			{
				"startframe" "0"
				"endframe" "5"
			}
		}
	}
	fps 30
}

$sequence "slump_a" {
	"fast_anims\slump_a.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "slumprise_a" {
	"fast_anims\slumprise_a.smd"
	{ event AE_ZOMBIE_ALERTSOUND 1 "" }
	{ event AE_ZOMBIE_GET_UP 16 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "slump_b" {
	"fast_anims\slump_b.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "slumprise_b" {
	"fast_anims\slumprise_b.smd"
	{ event AE_ZOMBIE_ALERTSOUND 1 "" }
	{ event AE_ZOMBIE_ATTACK_SCREAM 5 "" }
	{ event AE_ZOMBIE_GET_UP 10 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "slumprise_c" {
	"fast_anims\slumprise_c.smd"
	{ event AE_ZOMBIE_ALERTSOUND 1 "" }
	{ event AE_ZOMBIE_ATTACK_SCREAM 20 "" }
	{ event AE_ZOMBIE_GET_UP 10 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionjoints "..\male_04_physics.smd"
{
	$mass 95
	$inertia 2
	$damping 0.01
	$rotdamping 0.4
	$rootbone "valvebiped.bip01_pelvis"


	$jointconstrain "ValveBiped.Bip01_Spine" x limit -32 32 1
	$jointconstrain "ValveBiped.Bip01_Spine" y limit -39 39 1
	$jointconstrain "ValveBiped.Bip01_Spine" z limit -15 40 1

	$jointconstrain "ValveBiped.Bip01_Spine2" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -41 41 1

	$jointconstrain "ValveBiped.Bip01_L_UpperArm" x limit -30 61 1
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" y limit -90 48 1
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" z limit -106 68 1

	$jointmassbias "ValveBiped.Bip01_L_Forearm" 2
	$jointconstrain "ValveBiped.Bip01_L_Forearm" x limit 1 1 1
	$jointconstrain "ValveBiped.Bip01_L_Forearm" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_L_Forearm" z limit -102 44 1

	$jointmassbias "ValveBiped.Bip01_L_Hand" 2
	$jointconstrain "ValveBiped.Bip01_L_Hand" x limit -39 39 1
	$jointconstrain "ValveBiped.Bip01_L_Hand" y limit -19 19 1
	$jointconstrain "ValveBiped.Bip01_L_Hand" z limit -64 26 1

	$jointconstrain "ValveBiped.Bip01_R_UpperArm" x limit -41 37 1
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" y limit -44 90 1
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" z limit -106 68 1

	$jointmassbias "ValveBiped.Bip01_R_Forearm" 2
	$jointconstrain "ValveBiped.Bip01_R_Forearm" x limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Forearm" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" z limit -41 93 1

	$jointconstrain "ValveBiped.Bip01_R_Thigh" x limit -28 30 1
	$jointconstrain "ValveBiped.Bip01_R_Thigh" y limit -37 26 1
	$jointconstrain "ValveBiped.Bip01_R_Thigh" z limit -82 44 1

	$jointmassbias "ValveBiped.Bip01_R_Calf" 2
	$jointconstrain "ValveBiped.Bip01_R_Calf" x limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Calf" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Calf" z limit -8 130 1

	$jointmassbias "ValveBiped.Bip01_R_Foot" 2
	$jointconstrain "ValveBiped.Bip01_R_Foot" x limit -30 30 1
	$jointconstrain "ValveBiped.Bip01_R_Foot" y limit -28 28 1
	$jointconstrain "ValveBiped.Bip01_R_Foot" z limit -30 26 1

	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -37 30 1
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -30 19 1
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -75 39 1

	$jointmassbias "ValveBiped.Bip01_L_Calf" 2
	$jointconstrain "ValveBiped.Bip01_L_Calf" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit -8 130 1

	$jointmassbias "ValveBiped.Bip01_L_Foot" 2
	$jointconstrain "ValveBiped.Bip01_L_Foot" x limit -10 10 1
	$jointconstrain "ValveBiped.Bip01_L_Foot" y limit -17 17 1
	$jointconstrain "ValveBiped.Bip01_L_Foot" z limit -21 39 1

	$jointmassbias "ValveBiped.Bip01_R_Hand" 2
	$jointconstrain "ValveBiped.Bip01_R_Hand" x limit -58 58 1
	$jointconstrain "ValveBiped.Bip01_R_Hand" y limit -28 28 1
	$jointconstrain "ValveBiped.Bip01_R_Hand" z limit -35 46 1
}

$keyvalues
{
	Cables 
	{
		"Cable"		 
		{
			"StartAttachment" "Cable1a"
			"EndAttachment" "Cable1b"
			"Width" ".3"
			"Material" "cable/cable_lit"
			"NumSegments" "5"
			"Length" "115"
		}
		"Cable"		 
		{
			"StartAttachment" "Cable2a"
			"EndAttachment" "Cable2b"
			"Width" ".3"
			"Material" "cable/cable_lit"
			"NumSegments" "5"
			"Length" "115"
		}
	}
}




