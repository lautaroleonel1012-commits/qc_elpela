$cdmaterials "models\zombie_04\"
$cdmaterials "models\zombie_04\facemap\"
$cdmaterials "models\zombie_04\flesh\"
$cdmaterials "models\zombie_04\mouth\"
$cdmaterials "models\zombie_04\sheet\"
$cdmaterials "models\zombie_04\skull\"
$cdmaterials "models\zombie_04\bodygroups\"

// Created by Crowbar 0.74

$modelname "stalker.mdl"

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

$illumposition -1.291 1.294 37.9

$eyeposition 0 0 73


$texturegroup "skinfamilies"
{
	{
		"stalker_sheet"
	}
}

$attachment "eyes" "ValveBiped.Bip01_Head1" 3.5 -5 0 rotate 0 -81 -90

$cbox 0 0 0 0 0 0

$bbox -8.451 -21.032 0.289 5.862 18.45 75.51

$definebone "ValveBiped.Bip01_Pelvis" "" 0 -0.238788 41.385315 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 3.890447 0 0 -3.265802 -90.417785 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 16.060532 0 0 0 5.436166 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 24.697289 0 0 -89.582213 177.82963 -90.000016 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -3.890447 0 0 -3.464275 -89.728694 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 16.389179 0 0 0 5.80962 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 24.698681 0 0 -89.728694 -2.345345 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" 0 3.517308 -0.740539 2.16091 89.999982 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 3.98485 0 0 0 -8.653153 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 3.761386 -0.000001 0 0.034263 6.940983 -0.115279 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 7.356753 0 0 -0.04853 7.253933 0.110065 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 3.322168 0 0 0 2.598535 179.999855 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 4.036569 0.000001 0 -0.374314 -2.830467 -1.549564 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 2.313689 2.687532 1.160912 -54.667239 -105.687048 7.07494 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 6.210386 0.000001 0.000003 -14.680342 -54.748392 -58.20149 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 10.950331 -0.000002 0.000001 -0.00003 -7.203806 -0.00001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 2.313689 2.687532 -1.170726 54.547718 -105.687048 -12.080071 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 6.192179 -0.000001 -0.000002 18.558172 -54.067313 61.083761 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 10.916072 0.000001 -0.000007 0.000035 -10.020397 -0.000013 0 0 0 0 0 0


$poseparameter "move_yaw" -180 180 loop 360

$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$sequence "ragdoll" {
	"stalker_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
}

$includemodel "Stalker_animations.mdl"

$collisionjoints "male_04_physics.smd"
{
	$mass 70
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
	$rootbone "valvebiped.bip01_pelvis"


	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -48 48 0
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -25 50 0

	$jointconstrain "ValveBiped.Bip01_L_UpperArm" x limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" y limit -95 84 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" z limit -86 26 0

	$jointconstrain "ValveBiped.Bip01_L_Forearm" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" z limit -149 4 0

	$jointconstrain "ValveBiped.Bip01_R_UpperArm" x limit -39 39 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" y limit -79 95 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" z limit -93 23 0

	$jointconstrain "ValveBiped.Bip01_Head1" x limit -20 20 0
	$jointconstrain "ValveBiped.Bip01_Head1" y limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_Head1" z limit -13 30 0

	$jointconstrain "ValveBiped.Bip01_R_Forearm" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" z limit -149 4 0

	$jointconstrain "ValveBiped.Bip01_R_Thigh" x limit -12 12 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" y limit -8 75 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" z limit -97 32 0

	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -12 12 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -73 6 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -93 30 0

	$jointconstrain "ValveBiped.Bip01_L_Calf" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit -8 126 0

	$jointconstrain "ValveBiped.Bip01_R_Calf" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" z limit -12 126 0

	$jointcollide "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_Thigh"
	$jointcollide "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_L_Thigh"
	$jointcollide "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_R_Thigh"
	$jointcollide "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_Thigh"
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



