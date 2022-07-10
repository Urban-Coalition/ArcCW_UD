$modelname "weapons\arccw\c_ud_glock.mdl"
 
$bodygroup "1" {
	studio "glock_frame.smd"
	studio "glock_frame_flared.smd"
	studio "glock_frame_g26.smd"
}

$bodygroup "2" {
	studio "glock_mag_17.smd"
	studio "glock_mag_10.smd"
	studio "glock_mag_33.smd"
	studio "glock_mag_100.smd"
}

$bodygroup "3" {
	blank
	studio "glock_rail_optic.smd"
}

$bodygroup "4" {
	studio "glock_slide.smd"
	studio "glock_slide_comp.smd"
	studio "glock_slide_lb.smd"
	studio "glock_slide_auto.smd"
	studio "glock_slide_carbine.smd"
	studio "glock_slide_fd917.smd"
	studio "glock_slide_cs.smd"
	studio "glock_slide_nytesyte.smd"
	studio "glock_slide_g26.smd"
}

$bodygroup "5" {
	studio "glock_9mm.smd"
}

$cdmaterials "models\weapons\arccw\ud_glock"
$cdmaterials "models\weapons\arccw\ud_m1014"
$cdmaterials "models\weapons\arccw\ud_common"

$texturegroup "skinfamilies"
{
    { "glock" "glock_slide" }
    { "glock_tan" "glock_slide" }
    { "glock_olive" "glock_slide" }
    { "glock_custom" "glock_slide_custom" }
}

$attachment "1" "glock_flash" 0 0 0 rotate -90 0 0
$attachment "2" "brass" 0 0 0 rotate -10 140 180
$attachment "3" "camera" 0 0 0 rotate 0 0 0
 
$surfaceprop "weapon"
 
$contents "solid"
 
$illumposition 0 0 0

$cbox 0 0 0 0 0 0

$poseparameter "sights" 0 1 loop 0

$sequence "WM" "anims\WM.smd" {
	fps 30
	"ACT_VM_IDLE" 1
	snap
}

$sequence "idle" "anims\idle.smd" {
	fps 30
	"ACT_VM_IDLE" 1
	loop
	snap
	node "Ready"
}

$sequence "idle_empty" "anims\idle_empty.smd" {
	fps 30
	"ACT_VM_IDLE" 1
	loop
	snap
	node "Ready"
}

$sequence "fire" {
	"anims\fire.smd"
	"anims\fire_iron.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.02
	fadeout 0.02
}

$sequence "fire_empty" {
	"anims\fire_empty.smd"
	"anims\fire_iron_empty.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.02
	fadeout 0.02
}

$sequence "fire_stock" {
	"anims\fire_stock.smd"
	"anims\fire_iron_stock.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.01
	fadeout 0.01
}

$sequence "fire_empty_stock" {
	"anims\fire_empty_stock.smd"
	"anims\fire_iron_empty_stock.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.01
	fadeout 0.01
}

$sequence "fire_cycle" {
	"anims\fire_cycle.smd"
	"anims\fire_iron_cycle.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.02
	fadeout 0.3
}

$sequence "cycle" "anims\jam_100.smd" {
	fps 30
	"ACT_VM_IDLE" 1
	fadein 0.3
	fadeout 0
}

$sequence "cycle_empty" "anims\jam_100_empty.smd" {
	fps 30
	"ACT_VM_IDLE" 1
	fadein 0.3
	fadeout 0
}

$sequence "draw" "anims\draw.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
	{ event 5004 0 "Starts" }
}

$sequence "draw_empty" "anims\draw_empty.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
	{ event 5004 0 "Starts" }
}

$sequence "holster" "anims\holster.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
}

$sequence "holster_empty" "anims\holster_empty.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
}

$sequence "fix" "anims\jam.smd" {
	fps 30
	"ACT_VM_IDLE" 1
	snap
}

$sequence "fix_empty" "anims\jam_empty.smd" {
	fps 30
	"ACT_VM_IDLE" 1
	snap
}

$sequence "fix_10" "anims\jam_10.smd" {
	fps 30
	"ACT_VM_IDLE" 1
	snap
}

$sequence "fix_empty_10" "anims\jam_10_empty.smd" {
	fps 30
	"ACT_VM_IDLE" 1
	snap
}

$sequence "fix_33" "anims\jam_33.smd" {
	fps 30
	"ACT_VM_IDLE" 1
	snap
}

$sequence "fix_empty_33" "anims\jam_33_empty.smd" {
	fps 30
	"ACT_VM_IDLE" 1
	snap
}

$sequence "fix_100" "anims\jam_100.smd" {
	fps 30
	"ACT_VM_IDLE" 1
	snap
}

$sequence "fix_empty_100" "anims\jam_100_empty.smd" {
	fps 30
	"ACT_VM_IDLE" 1
	snap
}

$sequence "reload" {
	"anims\reload.smd"
	"anims\reload_iron.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 14 "MagOut" }
	{ event 5004 28 "MagInFail" }
	{ event 5004 35 "MagIn" }
	{ event 5004 51 "Back2Idle" }
}

$sequence "reload_empty" {
	"anims\reload_empty.smd"
	"anims\reload_empty_iron.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 9 "MagOut" }
	{ event 5004 30 "MagInFail" }
	{ event 5004 36 "MagIn" }
	{ event 5004 50 "SlideCloses" }
	{ event 5004 61 "Back2Idle" }
}

$sequence "reload_empty_fesiug" {
	"anims_fesiug\reload_empty.smd"
	"anims_fesiug\reload_empty_iron.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 9 "MagOut" }
	{ event 5004 30 "MagInFail" }
	{ event 5004 36 "MagIn" }
	{ event 5004 50 "SlideCloses" }
	{ event 5004 61 "Back2Idle" }
}

$sequence "reload_10" {
	"anims\reload_10.smd"
	"anims\reload_iron_10.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 14 "MagOut" }
	{ event 5004 28 "MagInFail" }
	{ event 5004 35 "MagIn" }
	{ event 5004 51 "Back2Idle" }
}

$sequence "reload_empty_10" {
	"anims\reload_empty_10.smd"
	"anims\reload_empty_iron_10.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 9 "MagOut" }
	{ event 5004 30 "MagInFail" }
	{ event 5004 36 "MagIn" }
	{ event 5004 50 "SlideCloses" }
	{ event 5004 61 "Back2Idle" }
}

$sequence "reload_33" {
	"anims\reload_33.smd"
	"anims\reload_iron_33.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 14 "MagOut" }
	{ event 5004 31 "MagInFail" }
	{ event 5004 37 "MagIn" }
	{ event 5004 53 "Back2Idle" }
}

$sequence "reload_empty_33" {
	"anims\reload_empty_33.smd"
	"anims\reload_empty_iron_33.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 9 "MagOut" }
	{ event 5004 31 "MagInFail" }
	{ event 5004 37 "MagIn" }
	{ event 5004 52 "SlideCloses" }
	{ event 5004 63 "Back2Idle" }
}

$sequence "reload_100" {
	"anims\reload_100.smd"
	"anims\reload_iron_100.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 14 "MagOut" }
	{ event 5004 37 "MagInFail" }
	{ event 5004 43 "MagIn" }
	{ event 5004 54 "Back2Idle" }
}

$sequence "reload_empty_100" {
	"anims\reload_empty_100.smd"
	"anims\reload_empty_iron_100.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 8 "MagOut" }
	{ event 5004 31 "MagInFail" }
	{ event 5004 36 "MagIn" }
	{ event 5004 50 "SlidePull" }
	{ event 5004 59 "SlideCloses" }
	{ event 5004 71 "Back2Idle" }
}

$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_L_Clavicle"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "ValveBiped.Bip01_L_Forearm"
$bonemerge "ValveBiped.Bip01_L_Hand"
$bonemerge "ValveBiped.Bip01_L_Finger4"
$bonemerge "ValveBiped.Bip01_L_Finger41"
$bonemerge "ValveBiped.Bip01_L_Finger42"
$bonemerge "ValveBiped.Bip01_L_Finger3"
$bonemerge "ValveBiped.Bip01_L_Finger31"
$bonemerge "ValveBiped.Bip01_L_Finger32"
$bonemerge "ValveBiped.Bip01_L_Finger2"
$bonemerge "ValveBiped.Bip01_L_Finger21"
$bonemerge "ValveBiped.Bip01_L_Finger22"
$bonemerge "ValveBiped.Bip01_L_Finger1"
$bonemerge "ValveBiped.Bip01_L_Finger11"
$bonemerge "ValveBiped.Bip01_L_Finger12"
$bonemerge "ValveBiped.Bip01_L_Finger0"
$bonemerge "ValveBiped.Bip01_L_Finger01"
$bonemerge "ValveBiped.Bip01_L_Finger02"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Bip01_R_Wrist"
$bonemerge "ValveBiped.Bip01_R_Finger4"
$bonemerge "ValveBiped.Bip01_R_Finger41"
$bonemerge "ValveBiped.Bip01_R_Finger42"
$bonemerge "ValveBiped.Bip01_R_Finger3"
$bonemerge "ValveBiped.Bip01_R_Finger31"
$bonemerge "ValveBiped.Bip01_R_Finger32"
$bonemerge "ValveBiped.Bip01_R_Finger2"
$bonemerge "ValveBiped.Bip01_R_Finger21"
$bonemerge "ValveBiped.Bip01_R_Finger22"
$bonemerge "ValveBiped.Bip01_R_Finger1"
$bonemerge "ValveBiped.Bip01_R_Finger11"
$bonemerge "ValveBiped.Bip01_R_Finger12"
$bonemerge "ValveBiped.Bip01_R_Finger0"
$bonemerge "ValveBiped.Bip01_R_Finger01"
$bonemerge "ValveBiped.Bip01_R_Finger02"

$collisionmodel "glock_col.smd"
{
	$mass 3
}