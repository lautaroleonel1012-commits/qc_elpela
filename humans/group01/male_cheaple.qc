$cdmaterials "models\zombie_04\"
$cdmaterials "models\zombie_04\facemap\"
$cdmaterials "models\zombie_04\flesh\"
$cdmaterials "models\zombie_04\mouth\"
$cdmaterials "models\zombie_04\sheet\"
$cdmaterials "models\zombie_04\skull\"
$cdmaterials "models\zombie_04\bodygroups\"

// Created by Crowbar 0.74

$modelname "Humans\Group01\Male_Cheaple.mdl"

$model "studio" "..\..\zombie_04_reference.smd" {
    flexfile "..\..\male_04_reference.vta"
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

$illumposition 0.195 -0.858 36.113

$eyeposition 0 0 70


$texturegroup "skinfamilies"
{
	{
		"Male_cheaple_sheet"
	}
}

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hboxset "default"
$hbox 0 "ValveBiped.Bip01_Spine" -6.23 -4.81 -7.57 7.54 8.47 7.24
$hbox 0 "ValveBiped.Bip01_Spine2" -2.04 -3.02 -7.46 15.16 9.13 7.15
$hbox 0 "ValveBiped.Bip01_R_UpperArm" -1.75 -3.74 -2.18 14.55 3.28 3.32
$hbox 0 "ValveBiped.Bip01_R_Forearm" 0 -3.03 -2.02 18.450001 2.23 2.58
$hbox 0 "ValveBiped.Bip01_L_UpperArm" -2.26 -3.63 -3.87 12.08 2.86 2.24
$hbox 0 "ValveBiped.Bip01_L_Forearm" 0 -3.03 -3.04 18.450001 1.96 2.15
$hbox 0 "ValveBiped.Bip01_Head1" -1.28 -5.91 -3.66 8.4 3.77 3.64
$hbox 0 "ValveBiped.Bip01_L_Thigh" 0 -4.39 -3.92 18.33 5.99 3.8
$hbox 0 "ValveBiped.Bip01_L_Calf" 0 -4.14 -3.28 20.9 3.48 2.29
$hbox 0 "ValveBiped.Bip01_R_Thigh" 0 -4.21 -4.07 18.33 5.9 4.6
$hbox 0 "ValveBiped.Bip01_R_Calf" 0 -3.53 -2.96 20.9 3.49 3.23

$definebone "ValveBiped.Bip01" "" -0.000005 -0.533615 38.566917 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01" 0.000005 3.345128 -2.981901 4.944225 89.999982 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine" 7.536097 0 0 0 4.073386 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine2" 10.744785 1.374172 -1.93761 73.71203 179.739652 -95.596496 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 6.028143 0.000001 0 -0.46209 -33.623802 93.935236 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 11.692552 0 0.000002 -0.000004 -3.459061 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine2" 10.744779 1.374166 1.93766 -73.711859 179.740116 91.480542 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 6.028142 0.000001 0 2.738853 -33.527944 -90.505156 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 11.692555 0 0 -0.000002 -3.459061 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Spine2" 15.164795 2.650943 0 0 10.770862 179.413319 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01" 3.890452 -0.000004 -0.000003 2.970156 -89.700792 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 17.848177 0 0 0 1.959516 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 16.525253 0 0 -2.33658 -61.400389 -1.599412 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01" -3.890452 0.000004 0.000007 2.9705 -90.299349 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 17.848173 0 0 0 1.958771 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 16.525257 0 0 2.336464 -61.399992 2.212247 0 0 0 0 0 0


$poseparameter "move_yaw" -180 180 loop 360

$weightlist "weights_layer_crouch_run_holding" {
	 "ValveBiped.Bip01" 0
	 "ValveBiped.Bip01_Spine" 1
	 "ValveBiped.Bip01_Spine2" 1
	 "ValveBiped.Bip01_R_Clavicle" 1
	 "ValveBiped.Bip01_R_UpperArm" 1
	 "ValveBiped.Bip01_R_Forearm" 1
	 "ValveBiped.Bip01_L_Clavicle" 1
	 "ValveBiped.Bip01_L_UpperArm" 1
	 "ValveBiped.Bip01_L_Forearm" 1
	 "ValveBiped.Bip01_Head1" 1
	 "ValveBiped.Bip01_L_Thigh" 0
	 "ValveBiped.Bip01_L_Calf" 0
	 "ValveBiped.Bip01_L_Foot" 0
	 "ValveBiped.Bip01_R_Thigh" 0
	 "ValveBiped.Bip01_R_Calf" 0
	 "ValveBiped.Bip01_R_Foot" 0
}

$animation "a_WalkS" "male_cheaple_anims\a_WalkS.smd" {
	fps 30
	loop
	walkframe 28 LX LY
}

$animation "a_WalkSE" "male_cheaple_anims\a_WalkSE.smd" {
	fps 30
	loop
	walkframe 28 LX LY
}

$animation "a_WalkE" "male_cheaple_anims\a_WalkE.smd" {
	fps 30
	loop
	walkframe 26 LX LY
}

$animation "a_WalkNE" "male_cheaple_anims\a_WalkNE.smd" {
	fps 30
	loop
	walkframe 26 LX LY
}

$animation "a_WalkN" "male_cheaple_anims\a_WalkN.smd" {
	fps 30
	loop
	walkframe 30 LX LY
}

$animation "a_WalkNW" "male_cheaple_anims\a_WalkNW.smd" {
	fps 30
	loop
	walkframe 26 LX LY
}

$animation "a_WalkW" "male_cheaple_anims\a_WalkW.smd" {
	fps 30
	loop
	walkframe 26 LX LY
}

$animation "a_WalkSW" "male_cheaple_anims\a_WalkSW.smd" {
	fps 30
	loop
	walkframe 28 LX LY
}

$animation "a_RunS" "male_cheaple_anims\a_RunS.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_RunSE" "male_cheaple_anims\a_RunSE.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_RunE" "male_cheaple_anims\a_RunE.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_RunNE" "male_cheaple_anims\a_RunNE.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_RunN" "male_cheaple_anims\a_RunN.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_RunNW" "male_cheaple_anims\a_RunNW.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_RunW" "male_cheaple_anims\a_RunW.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_RunSW" "male_cheaple_anims\a_RunSW.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_Crouch_walkS_aim" "male_cheaple_anims\a_Crouch_walkS_aim.smd" {
	fps 30
	loop
	walkframe 24 LX LY
}

$animation "a_Crouch_walkSE_aim" "male_cheaple_anims\a_Crouch_walkSE_aim.smd" {
	fps 30
	loop
	walkframe 24 LX LY
}

$animation "a_Crouch_walkE_aim" "male_cheaple_anims\a_Crouch_walkE_aim.smd" {
	fps 30
	loop
	walkframe 24 LX LY
}

$animation "a_Crouch_walkNE_aim" "male_cheaple_anims\a_Crouch_walkNE_aim.smd" {
	fps 35
	loop
	walkframe 35 LX LY
}

$animation "a_Crouch_walkN_aim" "male_cheaple_anims\a_Crouch_walkN_aim.smd" {
	fps 35
	loop
	walkframe 30 LX LY
}

$animation "a_Crouch_walkNW_aim" "male_cheaple_anims\a_Crouch_walkNW_aim.smd" {
	fps 35
	loop
	walkframe 35 LX LY
}

$animation "a_Crouch_walkW_aim" "male_cheaple_anims\a_Crouch_walkW_aim.smd" {
	fps 30
	loop
	walkframe 24 LX LY
}

$animation "a_Crouch_walkSW_aim" "male_cheaple_anims\a_Crouch_walkSW_aim.smd" {
	fps 30
	loop
	walkframe 24 LX LY
}

$animation "a_Crouch_runN_smg1" "male_cheaple_anims\a_Crouch_runN_smg1.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$sequence "idle_angry" {
	"male_cheaple_anims\idle_angry.smd"
	activity "ACT_IDLE_ANGRY" 1
	fadein 0.2
	fadeout 0.2
	node "standing"
	fps 30
	loop
}

$sequence "idle_subtle" {
	"male_cheaple_anims\idle_subtle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "standing"
	fps 30
	loop
}

$sequence "idle01" {
	"male_cheaple_anims\idle01.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "standing"
	fps 30
	loop
}

$sequence "Idle02" {
	"male_cheaple_anims\Idle02.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "standing"
	fps 30
	loop
}

$sequence "Idle03" {
	"male_cheaple_anims\Idle03.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "standing"
	fps 30
	loop
}

$sequence "Crouch_idleA1" {
	"male_cheaple_anims\Crouch_idleA1.smd"
	activity "ACT_COVER_LOW" -1
	fadein 0.2
	fadeout 0.2
	node "crouchingA"
	fps 30
	loop
}

$sequence "Crouch_idleB1" {
	"male_cheaple_anims\Crouch_idleB1.smd"
	activity "ACT_COVER_LOW" -1
	fadein 0.2
	fadeout 0.2
	node "crouchingB"
	fps 30
	loop
}

$sequence "Crouch_idleC1" {
	"male_cheaple_anims\Crouch_idleC1.smd"
	activity "ACT_COVER_LOW" -1
	fadein 0.2
	fadeout 0.2
	node "crouchingC"
	fps 30
	loop
}

$sequence "Crouch_idleC2" {
	"male_cheaple_anims\Crouch_idleC2.smd"
	activity "ACT_COVER_LOW" -1
	fadein 0.2
	fadeout 0.2
	node "crouchingC"
	fps 30
	loop
}

$sequence "Crouch_idleC3" {
	"male_cheaple_anims\Crouch_idleC3.smd"
	activity "ACT_COVER_LOW" -1
	fadein 0.2
	fadeout 0.2
	node "crouchingC"
	fps 30
	loop
}

$sequence "layer_crouch_run_holding" {
	"male_cheaple_anims\layer_crouch_run_holding.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_layer_crouch_run_holding"
}

$sequence "layer_crouch_walk_no_weapon" {
	"male_cheaple_anims\layer_crouch_walk_no_weapon.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_layer_crouch_run_holding"
}

$sequence "layer_crouch_walk_holding" {
	"male_cheaple_anims\layer_crouch_walk_holding.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_layer_crouch_run_holding"
}

$sequence "layer_crouch_run_no_weapon" {
	"male_cheaple_anims\layer_crouch_run_no_weapon.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_layer_crouch_run_holding"
}

$sequence "layer_run_holding" {
	"male_cheaple_anims\layer_run_holding.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_layer_crouch_run_holding"
}

$sequence "walk_all" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_WalkN"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	activity "ACT_WALK" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 2051 9 "" }
	{ event 2050 23 "" }
	fadein 0.2
	fadeout 0.2
	node "walking"
}

$sequence "run_all" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_RunN"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
	node "running"
}

$sequence "Crouch_walk_all" {
	"a_Crouch_walkS_aim"
	"a_Crouch_walkSE_aim"
	"a_Crouch_walkE_aim"
	"a_Crouch_walkNE_aim"
	"a_Crouch_walkN_aim"
	"a_Crouch_walkNW_aim"
	"a_Crouch_walkW_aim"
	"a_Crouch_walkSW_aim"
	"a_Crouch_walkS_aim"
	activity "ACT_WALK_CROUCH" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
	addlayer "layer_crouch_walk_no_weapon"
	node "walk_crouching"
}

$sequence "Crouch_run_all" {
	"a_Crouch_walkS_aim"
	"a_Crouch_walkSE_aim"
	"a_Crouch_walkE_aim"
	"a_Crouch_walkNW_aim"
	"a_Crouch_runN_smg1"
	"a_Crouch_walkNE_aim"
	"a_Crouch_walkW_aim"
	"a_Crouch_walkSW_aim"
	"a_Crouch_walkS_aim"
	activity "ACT_RUN_CROUCH" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
	addlayer "layer_crouch_run_no_weapon"
	node "run_crouching"
}

$sequence "Startle_behind" {
	"male_cheaple_anims\Startle_behind.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Cover_R" {
	"male_cheaple_anims\Cover_R.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Cover_L" {
	"male_cheaple_anims\Cover_L.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "CoverLow_R" {
	"male_cheaple_anims\CoverLow_R.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "CoverLow_L" {
	"male_cheaple_anims\CoverLow_L.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "ThrowItem" {
	"male_cheaple_anims\ThrowItem.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "DuckUnder" {
	"male_cheaple_anims\DuckUnder.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 62 LX
}

$sequence "spreadwallidle" {
	"male_cheaple_anims\spreadwallidle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "crouchidlehide" {
	"male_cheaple_anims\crouchidlehide.smd"
	fadein 0.2
	fadeout 0.2
	node "crouchhide"
	fps 30
	loop
}

$sequence "standtocrouchhide" {
	"male_cheaple_anims\standtocrouchhide.smd"
	fadein 0.2
	fadeout 0.2
	transition "standing" "crouchhide"
	fps 30
}

$sequence "crouchhidetostand" {
	"male_cheaple_anims\crouchhidetostand.smd"
	fadein 0.2
	fadeout 0.2
	transition "crouchhide" "standing"
	fps 30
}

$sequence "scaredidle" {
	"male_cheaple_anims\scaredidle.smd"
	fadein 0.2
	fadeout 0.2
	node "standing"
	fps 30
	loop
}

$sequence "preSkewer" {
	"male_cheaple_anims\preSkewer.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "ragdoll" {
	"male_cheaple_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionjoints "..\..\male_04_physics.smd"
{
	$mass 90
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
	$rootbone "valvebiped.bip01"


	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -48 48 1
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -25 25 1
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -25 50 1

	$jointconstrain "ValveBiped.Bip01_L_UpperArm" x limit -30 30 1
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" y limit -95 84 1
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" z limit -86 26 1

	$jointconstrain "ValveBiped.Bip01_L_Forearm" x limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_L_Forearm" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_L_Forearm" z limit -149 4 1

	$jointconstrain "ValveBiped.Bip01_R_UpperArm" x limit -39 39 1
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" y limit -79 95 1
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" z limit -93 23 1

	$jointconstrain "ValveBiped.Bip01_Head1" x limit -20 20 1
	$jointconstrain "ValveBiped.Bip01_Head1" y limit -25 25 1
	$jointconstrain "ValveBiped.Bip01_Head1" z limit -13 30 1

	$jointconstrain "ValveBiped.Bip01_R_Thigh" x limit -12 12 1
	$jointconstrain "ValveBiped.Bip01_R_Thigh" y limit -8 75 1
	$jointconstrain "ValveBiped.Bip01_R_Thigh" z limit -97 32 1

	$jointconstrain "ValveBiped.Bip01_R_Calf" x limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Calf" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Calf" z limit -12 126 1

	$jointconstrain "ValveBiped.Bip01_R_Forearm" x limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Forearm" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Forearm" z limit -149 4 1

	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -12 12 1
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -73 6 1
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -93 30 1

	$jointconstrain "ValveBiped.Bip01_L_Calf" x limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_L_Calf" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit -8 126 1

	$jointconstrain "ValveBiped.Bip01_L_Foot" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" y limit -19 19 1
	$jointconstrain "ValveBiped.Bip01_L_Foot" z limit -15 35 1

	$jointconstrain "ValveBiped.Bip01_R_Foot" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" y limit -25 6 1
	$jointconstrain "ValveBiped.Bip01_R_Foot" z limit -15 35 1

	$jointcollide "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_L_Thigh"
	$jointcollide "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_Spine2"
	$jointcollide "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_Spine2"
	$jointcollide "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01"
	$jointcollide "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01"
}




