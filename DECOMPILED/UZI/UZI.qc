$modelname "weapons\arccw\c_ud_uzi.mdl"
 
$bodygroup "studio" {
	studio "uzi.smd"
}

$bodygroup "1" {
	studio "uzi_body.smd"
	studio "uzi_body_carbine.smd"
	studio "uzi_body_mini.smd"
	studio "uzi_body_micro.smd"
	studio "uzi_body_civvy.smd"
}

$bodygroup "2" {
	studio "uzi_mag_32.smd"
	studio "uzi_mag_16.smd"
	studio "uzi_mag_41.smd"
	studio "uzi_mag_100.smd"
}

$bodygroup "3" {
	studio "uzi_stock_out.smd"
	studio "uzi_stock_in.smd"
	studio "uzi_stock_wood.smd"
	studio "uzi_stock_polymer.smd"
	blank
}

$bodygroup "4" {
	studio "uzi_rs.smd"
	studio "uzi_rs_micro.smd"
	studio "uzi_rail_optic.smd"
	studio "uzi_rail_optic_micro.smd"
}

$bodygroup "5" {
	blank
	studio "uzi_rail_fg.smd"
	studio "uzi_rail_fg_micro.smd"
}

$bodygroup "6" {
	blank
	studio "uzi_rail_tactical.smd"
}


$cdmaterials "models\weapons\arccw\ud_uzi"
$cdmaterials "models\weapons\arccw\ud_common"

$attachment "1" "uzi_barrel" 0 0 0 rotate -90 0 0
$attachment "2" "brass" 0 1 0 rotate -10 140 180
$attachment "3" "camera" 0 0 0 rotate -90 0 0
 
$surfaceprop "weapon"
 
$contents "solid"

$illumposition -3.5 -18.5 -6

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

$sequence "fix_micro" "anims\jam_micro.smd" {
	fps 30
	"ACT_VM_IDLE" 1
	snap
}

$sequence "fix_micro_empty" "anims\jam_micro_empty.smd" {
	fps 30
	"ACT_VM_IDLE" 1
	snap
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
	fadein 0.007
	fadeout 0.007
}

$sequence "fire_empty" {
	"anims\fire_empty.smd"
	"anims\fire_iron_empty.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.007
	fadeout 0.007
}

$sequence "draw" "anims\draw.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
}

$sequence "holster" "anims\holster.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
}

$sequence "draw_empty" "anims\draw_empty.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
}

$sequence "holster_empty" "anims\holster_empty.smd" {
	fps 30
	"ACT_VM_DRAW" 1
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
	{ event 5004 16 "MagOut" }
	{ event 5004 28 "MagInFail" }
	{ event 5004 37 "MagIn" }
	{ event 5004 59 "StockHitsShoulder" }
}

$sequence "reload_empty" {
	"anims\reload_empty.smd"
	"anims\reload_empty_iron.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 17 "MagOut" }
	{ event 5004 43 "MagInFail" }
	{ event 5004 53 "MagIn" }
	{ event 5004 62 "BoltBack" }
	{ event 5004 62 "BoltForward" }
	{ event 5004 84 "StockHitsShoulder" }
}

$sequence "reload_16" {
	"anims\reload_16.smd"
	"anims\reload_iron_16.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 16 "MagOut" }
	{ event 5004 28 "MagInFail" }
	{ event 5004 37 "MagIn" }
	{ event 5004 59 "StockHitsShoulder" }
}

$sequence "reload_empty_16" {
	"anims\reload_empty_16.smd"
	"anims\reload_empty_iron_16.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 17 "MagOut" }
	{ event 5004 43 "MagInFail" }
	{ event 5004 53 "MagIn" }
	{ event 5004 62 "BoltBack" }
	{ event 5004 62 "BoltForward" }
	{ event 5004 84 "StockHitsShoulder" }
}

$sequence "reload_41" {
	"anims\reload_41.smd"
	"anims\reload_iron_41.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 16 "MagOut" }
	{ event 5004 28 "MagInFail" }
	{ event 5004 37 "MagIn" }
	{ event 5004 59 "StockHitsShoulder" }
}

$sequence "reload_empty_41" {
	"anims\reload_empty_41.smd"
	"anims\reload_empty_iron_41.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 17 "MagOut" }
	{ event 5004 43 "MagInFail" }
	{ event 5004 53 "MagIn" }
	{ event 5004 62 "BoltBack" }
	{ event 5004 62 "BoltForward" }
	{ event 5004 84 "StockHitsShoulder" }
}

$sequence "reload_100" {
	"anims\reload_100.smd"
	"anims\reload_iron_100.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 16 "MagOut" }
	{ event 5004 52 "MagInFail" }
	{ event 5004 59 "MagIn" }
	{ event 5004 76 "StockHitsShoulder" }
}

$sequence "reload_empty_100" {
	"anims\reload_empty_100.smd"
	"anims\reload_empty_iron_100.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 17 "MagOut" }
	{ event 5004 44 "MagInFail" }
	{ event 5004 54 "MagIn" }
	{ event 5004 67 "BoltBack" }
	{ event 5004 73 "BoltForward" }
	{ event 5004 89 "StockHitsShoulder" }
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

$collisionmodel "uzi_col.smd"
{
	$mass 5
}