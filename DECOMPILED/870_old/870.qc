$modelname "weapons\arccw\c_ud_870.mdl"
 
$bodygroup "studio" {
	studio "shotgun.smd"
}

$bodygroup "1" {
	studio "shotgun_barrel.smd"
	studio "shotgun_barrel_long.smd"
	studio "shotgun_barrel_sawnoff.smd"
}

$bodygroup "2" {
	studio "shotgun_tube_6.smd"
	studio "shotgun_tube_8.smd"
	studio "shotgun_tube_4.smd"
}

$bodygroup "3" {
	blank
	studio "shotgun_rail_fg.smd"
}

$bodygroup "4" {
	studio "shotgun_stock.smd"
	studio "shotgun_stock_poly.smd"
	studio "shotgun_stock_sawnoff.smd"
}

$bodygroup "5" {
	blank
	studio "shotgun_tac_clamp.smd"
}

$bodygroup "6" {
	studio "shotgun_slide_wood.smd"
	studio "shotgun_slide_moe.smd"
	studio "shotgun_slide_long.smd"
}

$bodygroup "7" {
	studio "shotgun_supp_6.smd"
	studio "shotgun_supp_8.smd"
	blank
}

$bodygroup "8" {
	blank
	studio "shotgun_rs.smd"
	studio "shotgun_rail.smd"
}

$cdmaterials "models\weapons\arccw\ud_870"
$cdmaterials "models\weapons\arccw\ud_m1014"
$cdmaterials "models\weapons\arccw\ud_common"

$attachment "1" "870_flash" 0 0 0 rotate -90 0 0
$attachment "2" "brass" 0 0 0 rotate -10 140 180
$attachment "3" "camera" 0 0 0 rotate 0 0 0
 
$surfaceprop "default"
 
$contents "solid"
 
$illumposition 0 0 0

$bbox 0 0 0 0 0 0
 
$cbox 0 0 0 0 0 0

$poseparameter "sights" 0 1 loop 0

$sequence "idle" "anims\idle.smd" {
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
	fadeout 0.5
}

$sequence "cycle" {
	"anims\cycle.smd"
	"anims\cycle_iron.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0
}

$sequence "draw" "anims\draw.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 15 "StockHitsShoulder" }
}

$sequence "holster" "anims\holster.smd" {
	fps 30
	"ACT_VM_HOLSTER" 1
	snap
}

$sequence "sgreload_start" {
	"anims\sgreload_start.smd"
	"anims\sgreload_start_iron.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 10 "ReadjustsGun" }
}

$sequence "sgreload_insert" {
	"anims\sgreload_insert.smd"
	"anims\sgreload_insert_iron.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 7 "ShellBeginsInserting" }
	{ event 5004 10 "ShellInserted" }
}

$sequence "sgreload_finish" {
	"anims\sgreload_end.smd"
	"anims\sgreload_end_iron.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 6 "HandGrabsGrip" }
	{ event 5004 17 "StockHitsShoulder" }
}

$sequence "sgreload_finish_empty" {
	"anims\sgreload_end_empty.smd"
	"anims\sgreload_end_empty_iron.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 6 "HandGrabsGrip" }
	{ event 5004 17 "StockHitsShoulder" }
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