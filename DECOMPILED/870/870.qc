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
	studio "shotgun_stock_polyshort.smd"
	studio "shotgun_stock_polyshort_wood.smd"
}

$bodygroup "5" {
	blank
	studio "shotgun_tac_clamp.smd"
}

$bodygroup "6" {
	studio "shotgun_slide_wood.smd"
	studio "shotgun_slide_moe.smd"
	studio "shotgun_slide_long.smd"
	studio "shotgun_slide_poly.smd"
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

$texturegroup "skinfamilies"
{
	{ "870" }
	{ "870_clean" }
	{ "870_custom" }
}


$attachment "1" "870_flash" 0 0 0 rotate -90 0 0
$attachment "2" "brass" 0 0 0 rotate -10 140 180
$attachment "3" "camera" 0 0 0 rotate 0 0 0
 
$surfaceprop "weapon"
 
$contents "solid"
 
$illumposition 0 0 0

$cbox 0 0 0 0 0 0

$poseparameter "sights" 0 1 loop 0

$sequence "idle"{
	"anims\idle.smd"
	fps 30
	"ACT_VM_IDLE" 1
	loop
	// snap
	node "Ready"
}

$sequence "fire" {
	"anims\fire.smd"
	"anims\fireADS.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.007
	fadeout 0.5
}

$sequence "cycle" {
	"anims\cycle.smd"
	"anims\cycleADS.smd"
	blend "sights" 0 1
	fps 30
	fadein 0.2
	fadeout 0
	// snap
}

$sequence "fix" {
	"anims\Jam.smd"
	"anims\JamADS.smd"
	blend "sights" 0 1
	fps 30
	snap
}

$sequence "draw" {
	"anims\Draw.smd"
	fps 30
	snap
}
$sequence "holster" {
	"anims\Holster.smd"
	fps 30
	snap
}

$sequence "sgreload_start" {
	"anims\reloadstart.smd"
	"anims\reloadstartADS.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}

$sequence "sgreload_insert" {
	"anims\reloadinsert.smd"
	"anims\reloadinsertADS.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}

$sequence "sgreload_finish" {
	"anims\reloadend.smd"
	"anims\reloadendADS.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}

$sequence "sgreload_finish_empty" {
	"anims\reloadendCycle.smd"
	"anims\reloadendCycleADS.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_RELOAD" 1
	snap
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

$collisionmodel "870_col.smd"
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}