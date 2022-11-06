$modelname "weapons\arccw\c_ud_m1014.mdl"
 
$bodygroup "studio" {
	studio "autoshotgun_receiver.smd"
}

$bodygroup "1" {
	studio "autoshotgun_barrel.smd"
	studio "autoshotgun_barrel_short.smd"
	studio "autoshotgun_barrel_sport.smd"
}

$bodygroup "2" {
	studio "autoshotgun_mag_8.smd"
	studio "autoshotgun_mag_4.smd"
}

$bodygroup "3" {
	studio "autoshotgun_stock.smd"
	studio "autoshotgun_stock_retracted.smd"
	studio "autoshotgun_stock_buffer.smd"
	studio "autoshotgun_stock_sport.smd"
	blank
}

$bodygroup "4" {
	studio "autoshotgun_supp_8.smd"
	studio "autoshotgun_supp_4.smd"
	blank
}

$bodygroup "5" {
	studio "autoshotgun_handguard.smd"
	studio "autoshotgun_handguard_rail.smd"
	studio "autoshotgun_handguard_sport.smd"
	blank
}
$bodygroup "6" {
	studio "autoshotgun_grip.smd"
	blank
}

$cdmaterials "models\weapons\arccw\ud_common"
$cdmaterials "models\weapons\arccw\ud_m1014\"
$cdmaterials "models\weapons\arccw\ud_m1014\ue\"

$attachment "1" "1014_flash" 0 0 0 rotate -90 0 0
$attachment "2" "brass" 0 0 0 rotate -10 140 180
$attachment "3" "camera" 0 0 0 rotate -90 0 0
 
$surfaceprop "weapon"
 
$contents "solid"

$illumposition -3 -22 -5

$poseparameter "sights" 0 1 loop 0

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

$sequence "idle_jammed" "anims\idle_jammed.smd" {
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

$sequence "fire_jam" {
	"anims\fire_jam.smd"
	"anims\fire_iron_jam.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.007
	fadeout 0.007
}

$sequence "equip" "anims\equip.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
}

$sequence "equip_stock" "anims\equip_stock.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
}

$sequence "draw" "anims\draw.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
	// { event 5004 0 "Starts" }
	// { event 5004 15 "StockHitsShoulder" }
}

$sequence "draw_empty" "anims\draw_empty.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
	// { event 5004 0 "Starts" }
	// { event 5004 15 "StockHitsShoulder" }
}

$sequence "draw_jammed" "anims\draw_jammed.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
	// { event 5004 0 "Starts" }
	// { event 5004 15 "StockHitsShoulder" }
}

$sequence "holster" "anims\holster.smd" {
	fps 30
	"ACT_VM_HOLSTER" 1
	snap
}

$sequence "holster_empty" "anims\holster_empty.smd" {
	fps 30
	"ACT_VM_HOLSTER" 1
	snap
}

$sequence "holster_jammed" "anims\holster_jammed.smd" {
	fps 30
	"ACT_VM_HOLSTER" 1
	snap
}

$sequence "jam_fix" "anims\jam_fix.smd" {
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}

$sequence "jam_fix_empty" "anims\jam_fix_empty.smd" {
	fps 30
	"ACT_VM_RELOAD" 1
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

$sequence "sgreload_start_empty" {
	"anims\sgreload_start_empty.smd"
	"anims\sgreload_start_empty_iron.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	// { event 5004 0 "Starts" }
	// { event 5004 17 "ShellGoesInChamber" }
	// { event 5004 27 "BoltReleases" }
}

$sequence "sgreload_insert" {
	"anims\sgreload_insert.smd"
	"anims\sgreload_insert_iron.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	// { event 5004 7 "ShellBeginsInserting" }
	// { event 5004 10 "ShellInserted" }
}

$sequence "sgreload_finish" {
	"anims\sgreload_end.smd"
	"anims\sgreload_end_iron.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	// { event 5004 6 "HandGrabsGrip" }
	// { event 5004 17 "StockHitsShoulder" }
}

// stock animations start

$sequence "idle_stock" "anims\idle_stock.smd" {
	fps 30
	"ACT_VM_IDLE" 1
	loop
	snap
	node "Ready"
}

$sequence "idle_empty_stock" "anims\idle_empty_stock.smd" {
	fps 30
	"ACT_VM_IDLE" 1
	loop
	snap
	node "Ready"
}

$sequence "idle_jammed_stock" "anims\idle_jammed_stock.smd" {
	fps 30
	"ACT_VM_IDLE" 1
	loop
	snap
	node "Ready"
}

$sequence "fire_stock" {
	"anims\fire_stock.smd"
	"anims\fire_iron_stock.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.007
	fadeout 0.007
}

$sequence "fire_empty_stock" {
	"anims\fire_empty_stock.smd"
	"anims\fire_iron_empty_stock.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.007
	fadeout 0.007
}

$sequence "fire_jam_stock" {
	"anims\fire_jam_stock.smd"
	"anims\fire_iron_jam_stock.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.007
	fadeout 0.007
}

$sequence "draw_stock" "anims\draw_stock.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
	// { event 5004 0 "Starts" }
	// { event 5004 15 "StockHitsShoulder" }
}

$sequence "draw_empty_stock" "anims\draw_empty_stock.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
	// { event 5004 0 "Starts" }
	// { event 5004 15 "StockHitsShoulder" }
}

$sequence "draw_jammed_stock" "anims\draw_jammed_stock.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
	// { event 5004 0 "Starts" }
	// { event 5004 15 "StockHitsShoulder" }
}

$sequence "holster_stock" "anims\holster_stock.smd" {
	fps 30
	"ACT_VM_HOLSTER" 1
	snap
}

$sequence "holster_empty_stock" "anims\holster_empty_stock.smd" {
	fps 30
	"ACT_VM_HOLSTER" 1
	snap
}

$sequence "holster_jammed_stock" "anims\holster_jammed_stock.smd" {
	fps 30
	"ACT_VM_HOLSTER" 1
	snap
}

$sequence "jam_fix_stock" "anims\jam_fix_stock.smd" {
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}

$sequence "jam_fix_empty_stock" "anims\jam_fix_empty_stock.smd" {
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}

$sequence "sgreload_start_stock" {
	"anims\sgreload_start_stock.smd"
	"anims\sgreload_start_iron_stock.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	// { event 5004 0 "Starts" }
	// { event 5004 10 "ReadjustsGun" }
}

$sequence "sgreload_start_empty_stock" {
	"anims\sgreload_start_empty_stock.smd"
	"anims\sgreload_start_empty_iron_stock.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	// { event 5004 0 "Starts" }
	// { event 5004 17 "ShellGoesInChamber" }
	// { event 5004 27 "BoltReleases" }
}

$sequence "sgreload_finish_stock" {
	"anims\sgreload_end_stock.smd"
	"anims\sgreload_end_iron_stock.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	// { event 5004 6 "HandGrabsGrip" }
	// { event 5004 17 "StockHitsShoulder" }
}

// stock animations end

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

$collisionmodel "c_ud_m1014_physics.smd"
{
	$mass 5
	$masscenter 19.36 -2.22 -5.43
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}