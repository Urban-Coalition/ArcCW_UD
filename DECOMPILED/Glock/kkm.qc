$modelname "weapons/arccw/atts/uc_kkm_brake.mdl"

$bodygroup "body"
{
	studio "kkm brake.smd"
}


$surfaceprop "weapon"

$contents "solid"


$cdmaterials "models\weapons\arccw\ud_glock"



$sequence "idle" {
	"kkm brake.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "kkm brake.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone "root"
}
