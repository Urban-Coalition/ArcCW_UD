$modelname "weapons\arccw\c_ud_m16.mdl"
 
$bodygroup "studio" {
	studio "m16.smd"
	studio "m16_usas.smd"
	studio "m16_tosser.smd"
}

$bodygroup "1" {
	studio "m16_upper_ch.smd"
	studio "m16_upper_flat.smd"
	studio "m16_upper_usas.smd"
	studio "m16_upper_usas_flat.smd"
	studio "m16_upper_ch_tosser.smd"
	studio "m16_upper_flat_tosser.smd"
}

$bodygroup "2" {
	studio "m16_mag_30.smd"
	studio "m16_mag_20.smd"
	studio "m16_mag_40.smd"
	studio "m16_mag_60.smd"
	studio "m16_mag_100.smd"
	studio "m16_mag_9mm_20.smd"
	studio "m16_mag_usas_10.smd"
	studio "m16_mag_usas_20.smd"
	studio "m16_mag_9mm_32.smd"
}

$bodygroup "3" {
	blank
	studio "m16_rail_optic.smd"
	studio "m16_rail_flat_optic.smd"
	studio "rail_m16_dedicated.smd"
}

$bodygroup "4" {
	studio "m16_barrel.smd" //0
	studio "m16_barrel_m4.smd" //1
	studio "m16_barrel_cqbr.smd" //2
	studio "m16_barrel_fpw.smd" //3
	studio "m16_barrel_wood.smd" //4
	studio "m16_barrel_wood_short.smd" //5
	studio "m16_barrel_stub.smd" //6
	studio "m16_barrel_usas.smd" //7
	studio "m16_barrel_lmg.smd" //8
	studio "m16_barrel_sd.smd" //9
	studio "m16_barrel_exposed.smd" //10
	studio "m16_barrel_cursed.smd" //11
	studio "m16_barrel_tactical.smd" //12
	studio "m16_barrel_smg.smd" //13
	studio "m16_barrel_tactical_a4.smd" // 14
}

$bodygroup "5" {
	studio "m16_stock.smd"
	studio "m16_stock_m4.smd"
	studio "m16_stock_wood.smd"
	blank
	studio "m16_stock_polymer.smd"
	studio "m16_stock_usas.smd"
}

$bodygroup "6" {
	studio "m16_grip.smd"
	studio "m16_grip_ergo.smd"
	studio "m16_grip_skel.smd"
	studio "m16_grip_wood.smd"
}

$bodygroup "7" {
	blank
	studio "m16_rail_fg.smd"
	studio "m16_rail_fg_stub.smd"
	studio "m16_rail_fg_wood.smd"
	studio "m16_rail_fg_wood_short.smd"
}

$bodygroup "8" {
	blank
	studio "m16_clamp_fullsize.smd"
	studio "m16_clamp_stub.smd"
	studio "m16_clamp_short.smd"
}

$bodygroup "9" {
	blank
	studio "railcover_bottom"
	studio "railcover_left"
	studio "railcover_quad"
	studio "railcover_right"
	studio "railcover_top"
}

$bodygroup "10" {
	blank
	studio "m16_sights_m4a4.smd"
}

$cdmaterials "models\weapons\arccw\ud_m16"
$cdmaterials "models\weapons\arccw\ud_m1014"
$cdmaterials "models\weapons\arccw\ud_common"
$cdmaterials "models\weapons\arccw\ud_mini14"
$cdmaterials "models\weapons\arccw\ud_uzi"
// $cdmaterials "models\shells\12gauge"

$attachment "1" "m16_flash" 0 0 0 rotate -90 0 0
$attachment "2" "brass" 0 0 -1 rotate -10 140 180
$attachment "3" "camera" 0 0 0 rotate 0 0 0
$attachment "4" "m16_flash" 0 0 -4 rotate -90 0 0
$attachment "5" "m16_flash" 0 0 -10 rotate -90 0 0
 
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
	fadein 0.03
	fadeout 0.03
}

$sequence "fire_empty" {
	"anims\fire_empty.smd"
	"anims\fire_iron_empty.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.03
	fadeout 0.03
}

$sequence "fire_usas" {
	"anims\fire_usas.smd"
	"anims\fire_iron.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.03
	fadeout 0.03
}

$sequence "fire_empty_usas" {
	"anims\fire_empty_usas.smd"
	"anims\fire_iron_empty.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.03
	fadeout 0.03
}

$sequence "draw" "anims\draw.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 14 "StockHitsShoulder" }
}

$sequence "draw_empty" "anims\draw_empty.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 14 "StockHitsShoulder" }
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
	{ event 5004 13 "MagOut" }
	{ event 5004 29 "GunRaises" }
	{ event 5004 39 "MagInFail" }
	{ event 5004 47 "MagIn" }
	{ event 5004 65 "StockHitsShoulder" }
}

$sequence "reload_empty" {
	"anims\reload_empty.smd"
	"anims\reload_empty_iron.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 12 "MagOut" }
	{ event 5004 35 "GunRaises" }
	{ event 5004 39 "MagInFail" }
	{ event 5004 47 "MagIn" }
	{ event 5004 59 "BoltCloses" }
	{ event 5004 73 "StockHitsShoulder" }
}

$sequence "reload_20" {
	"anims\reload_20.smd"
	"anims\reload_iron_20.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 13 "MagOut" }
	{ event 5004 31 "GunRaises" }
	{ event 5004 39 "MagInFail" }
	{ event 5004 47 "MagIn" }
	{ event 5004 64 "StockHitsShoulder" }
}

$sequence "reload_empty_20" {
	"anims\reload_empty_20.smd"
	"anims\reload_empty_iron_20.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 12 "MagOut" }
	{ event 5004 28 "GunRaises" }
	{ event 5004 39 "MagInFail" }
	{ event 5004 47 "MagIn" }
	{ event 5004 59 "BoltCloses" }
	{ event 5004 73 "StockHitsShoulder" }
}

$sequence "reload_40" {
	"anims\reload_40.smd"
	"anims\reload_iron_40.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 13 "MagOut" }
	{ event 5004 31 "GunRaises" }
	{ event 5004 40 "MagInFail" }
	{ event 5004 50 "MagIn" }
	{ event 5004 68 "StockHitsShoulder" }
}

$sequence "reload_empty_40" {
	"anims\reload_empty_40.smd"
	"anims\reload_empty_iron_40.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 12 "MagOut" }
	{ event 5004 30 "GunRaises" }
	{ event 5004 39 "MagInFail" }
	{ event 5004 49 "MagIn" }
	{ event 5004 60 "BoltCloses" }
	{ event 5004 76 "StockHitsShoulder" }
}

$sequence "reload_60" {
	"anims\reload_60.smd"
	"anims\reload_iron_60.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 13 "MagOut" }
	{ event 5004 35 "GunRaises" }
	{ event 5004 43 "MagInFail" }
	{ event 5004 54 "MagIn" }
	{ event 5004 72 "StockHitsShoulder" }
}

$sequence "reload_empty_60" {
	"anims\reload_empty_60.smd"
	"anims\reload_empty_iron_60.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 14 "MagOut" }
	{ event 5004 33 "GunRaises" }
	{ event 5004 43 "MagInFail" }
	{ event 5004 54 "MagIn" }
	{ event 5004 64 "BoltCloses" }
	{ event 5004 80 "StockHitsShoulder" }
}

$sequence "reload_100" {
	"anims\reload_100.smd"
	"anims\reload_iron_100.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 13 "MagOut" }
	{ event 5004 35 "GunRaises" }
	{ event 5004 44 "MagInFail" }
	{ event 5004 54 "MagIn" }
	{ event 5004 64 "MagHit" }
	{ event 5004 84 "StockHitsShoulder" }
}

$sequence "reload_empty_100" {
	"anims\reload_empty_100.smd"
	"anims\reload_empty_iron_100.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 13 "MagOut" }
	{ event 5004 36 "GunRaises" }
	{ event 5004 44 "MagInFail" }
	{ event 5004 56 "MagIn" }
	{ event 5004 64 "MagHit" }
	{ event 5004 79 "ChargingHandleBack" }
	{ event 5004 90 "ChargingHandleForward" }
	{ event 5004 105 "StockHitsShoulder" }
}

$sequence "reload_9mm" {
	"anims\reload_9mm.smd"
	"anims\reload_iron_9mm.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 13 "MagOut" }
	{ event 5004 29 "GunRaises" }
	{ event 5004 39 "MagInFail" }
	{ event 5004 47 "MagIn" }
	{ event 5004 65 "StockHitsShoulder" }
}

$sequence "reload_empty_9mm" {
	"anims\reload_empty_9mm.smd"
	"anims\reload_empty_iron_9mm.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
	{ event 5004 0 "Starts" }
	{ event 5004 12 "MagOut" }
	{ event 5004 35 "GunRaises" }
	{ event 5004 39 "MagInFail" }
	{ event 5004 47 "MagIn" }
	{ event 5004 59 "BoltCloses" }
	{ event 5004 73 "StockHitsShoulder" }
}

$sequence "reload_empty_usas_20" {
	"anims\reload_empty_usas_20.smd"
	//"anims\reload_empty_usas_drum.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	//blend "sights" 0 1
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