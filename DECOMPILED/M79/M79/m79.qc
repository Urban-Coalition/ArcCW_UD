$modelname "weapons\arccw\c_ud_m79.mdl"
 
$bodygroup "studio" {
	studio "m79_new.smd"
	studio "m79_pirategun.smd"
}

$bodygroup "1" {
	studio "m79_nade.smd"
	studio "m79_nade_1gaugeshell.smd"
	studio "m79_nade_1gaugeshell_empty.smd"
	studio "m79_nade_caseless.smd"
	studio "m79_nade_hornetnest.smd"
	studio "m79_nade_incendiary.smd"
}

$bodygroup "2" {
	studio "m79_stock_default.smd"
	blank
}

$bodygroup "3" {
	blank
	studio "m79_rail.smd"
}

$cdmaterials "models\weapons\arccw\ud_m79"
$cdmaterials "models\weapons\arccw\ud_m79\m79_new"
$cdmaterials "models\weapons\arccw\ud_m1014"
$cdmaterials "models\weapons\arccw\ud_m16"
$cdmaterials "models\weapons\arccw\ud_common"

$attachment "1" "m79_barrel" 0 0 0 rotate -90 0 0
$attachment "2" "camera" 0 0 0 rotate 0 0 0
 
$surfaceprop "weapon"
 
$contents "solid"
 
$illumposition -3.6 -20 -3.5

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
	fadein 0.02
	fadeout 0.02
}

$sequence "draw" "anims\draw.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
}

$sequence "holster" "anims\holster.smd" {
	fps 30
	"ACT_VM_HOLSTER" 1
	snap
}

$sequence "reload" {
	"anims\reload.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}

$sequence "reload_caseless" {
	"anims\reload_caseless.smd"
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

$collisionmodel "m79_col.smd"
{
	$mass 6
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}