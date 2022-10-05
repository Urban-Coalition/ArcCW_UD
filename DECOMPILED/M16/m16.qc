$modelname "weapons\arccw\c_ud_m16.mdl"
 
$bodygroup "studio" {
	studio "base.smd"
}

$bodygroup "1" {
	studio "upper_ch.smd" //0
	studio "upper_flat.smd" //1
	blank //2
	studio "upper_ch_a1.smd" //3
	studio "upper_ch_modern.smd" //4
}

$bodygroup "2" {
	studio "mag_30.smd" //0
	studio "mag_20.smd" //1
	studio "mag_40.smd" //2
	studio "mag_60.smd" //3
	studio "mag_100.smd" //4
	studio "m16_mag_9mm_20.smd" //5
	studio "m16_mag_9mm_32.smd" //6
	blank //7
	studio "mag_50beo_10.smd" //8
	studio "pmag.smd" //9
}

$bodygroup "3" {
	blank //0
	studio "rail_optic.smd" //1
	studio "rail_m16_dedicated.smd" //2
	studio "rail_optic_colt.smd" //3
}

$bodygroup "4" {
	studio "barrels_new/barrel_20.smd" //0
	studio "barrels_new/barrel_14.smd" //1
	studio "barrels_new/barrel_11.smd" //2
	studio "barrel_sd.smd" //3
	studio "barrels_new/barrel_11_ru556.smd" //4
	blank
}

$bodygroup "5" {
	studio "barrels_new/hand_a2.smd" //0
	studio "barrels_new/hand_a1.smd" //1
	studio "barrels_new/hand_ris20_new.smd" //2
	studio "barrels_new/hand_lmg.smd" //3
	studio "barrels_new/hand_carbine.smd" //4
	studio "barrels_new/hand_riscar_new.smd" //5
	studio "barrels_new/hand_fpw.smd" //6
	studio "barrels_new/hand_ru556.smd" //7
	studio "barrels_new/hand_adar.smd" //8
	blank
	studio "barrels_new/hand_heat.smd" //10
}

$bodygroup "6" {
	studio "barrels_new/fs_m16.smd" //0
	studio "barrels_new/gasblock_m16.smd" //1
	studio "barrels_new/fs_carbine.smd" //2
	studio "barrels_new/gasblock_carbine.smd" //3
	studio "barrels_new/fs_adar.smd" //4
	blank //5
	studio "barrels_new/gasblock_adar.smd" //6
}

$bodygroup "7" {
	studio "stock.smd" //1
	studio "Stock_231_EX.smd" //2
	studio "Stock_231_IN.smd" //3
	studio "Stock_231_TUBE.smd" //4
	studio "Stock_607_EX.smd" //5
	studio "Stock_607_IN.smd" //6
	studio "Stock_608.smd" //7
	studio "Stock_Carbine_EX.smd" //8
	studio "Stock_Carbine_IN.smd" //9
	studio "stock_wood.smd" //10
	studio "stock_adar.smd" //11
	studio "stock_ru556.smd" //12
	blank //13
}

$bodygroup "8" {
	studio "grip.smd" //0
	studio "grip_ergo.smd" //1
	studio "grip_skel.smd" //2
	studio "grip_wood.smd" //3
	blank
}

$bodygroup "9" {
	blank //0
	studio "rail_fg.smd" //1
}

$bodygroup "10" {
	blank //0
	studio "barrels_new/clamp_20.smd" //1
	studio "barrels_new/clamp_11.smd" //2
	studio "barrels_new/clamp_14.smd" //3
}

$bodygroup "11" {
    blank
	studio "barrels_new/flashhider_20.smd" //0
	studio "barrels_new/flashhider_14.smd" //1
	studio "barrels_new/flashhider_11.smd" //2
}

$bodygroup "lug" {
	studio "barrels_new/lug.smd"
	blank
}

$cdmaterials "models\weapons\arccw\ud_m16"
$cdmaterials "models\weapons\arccw\ud_m1014"
$cdmaterials "models\weapons\arccw\ud_common"
$cdmaterials "models\weapons\arccw\ud_mini14"
$cdmaterials "models\weapons\arccw\ud_uzi"
// $cdmaterials "models\shells\12gauge"

$texturegroup "skinfamilies"
{
	{ "m16_barrel_classic" }
	{ "m16_barrel_classic_wood" }
}

$attachment "1" "m16_flash" 0 0 0 rotate -90 0 0
$attachment "2" "brass" 0.00 -0.75 -1.00 rotate -10 140 180
$attachment "3" "camera" 0 0 0 rotate -90 0 0
$attachment "4" "m16_flash" 0 0 -4 rotate -90 0 0
$attachment "5" "m16_flash" 0 0 -10 rotate -90 0 0

$surfaceprop "weapon"
 
$contents "solid"
 
$illumposition 0 0 0

$cbox 0 0 0 0 0 0

$poseparameter "sights" 0 1 loop 0

$sequence "idle" "anims\idle.smd" {
	fps 30
	"ACT_VM_IDLE" 1
	loop
	snap
}

$sequence "idle_empty" "anims\idle_empty.smd" {
	fps 30
	"ACT_VM_IDLE" 1
	loop
	snap
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

$sequence "draw" "anims\draw.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
}

$sequence "draw_empty" "anims\draw_empty.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
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

$sequence "reload" {
	"anims\reload.smd"
	"anims\reload_iron.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}

$sequence "reload_empty" {
	"anims\reload_empty.smd"
	"anims\reload_empty_iron.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}

$sequence "reload_20" {
	"anims\reload_20.smd"
	"anims\reload_iron_20.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}

$sequence "reload_empty_20" {
	"anims\reload_empty_20.smd"
	"anims\reload_empty_iron_20.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}

$sequence "reload_40" {
	"anims\reload_40.smd"
	"anims\reload_iron_40.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}

$sequence "reload_empty_40" {
	"anims\reload_empty_40.smd"
	"anims\reload_empty_iron_40.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}

$sequence "reload_60" {
	"anims\reload_60.smd"
	"anims\reload_iron_60.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}

$sequence "reload_empty_60" {
	"anims\reload_empty_60.smd"
	"anims\reload_empty_iron_60.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}

$sequence "reload_100" {
	"anims\reload_100.smd"
	"anims\reload_iron_100.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}

$sequence "reload_empty_100" {
	"anims\reload_empty_100.smd"
	"anims\reload_empty_iron_100.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}

$sequence "reload_9mm" {
	"anims\reload_9mm.smd"
	"anims\reload_iron_9mm.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}

$sequence "reload_empty_9mm" {
	"anims\reload_empty_9mm.smd"
	"anims\reload_empty_iron_9mm.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}



$sequence "inspect_enter" {
	"anims\m16inspect_enter"
	fps 37
	// snap
}
$sequence "inspect_loop" {
	"anims\m16inspect_loop"
	fps 24
	// snap
}
$sequence "inspect_exit" {
	"anims\m16inspect_exit"
	fps 37
	// snap
}
$sequence "inspect_enter_empty" {
	"anims\m16inspect_enter_empty"
	fps 37
	// snap
}
$sequence "inspect_loop_empty" {
	"anims\m16inspect_loop_empty"
	fps 24
	// snap
}
$sequence "inspect_exit_empty" {
	"anims\m16inspect_exit_empty"
	fps 37
	// snap
}

$definebone "ValveBiped.Bip01_Spine4" "" 0.000006 0.000000 0.000000 -79.749939 -90.000153 -89.999809 0.000000 0.000000 0.000000 -0.000000 -0.000000 -0.000000
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 2.033347 1.000767 1.937663 -73.711861 168.619293 91.480484 -0.000000 0.000000 0.000000 -0.000000 0.000003 0.000001
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 6.027917 -0.000100 0.000096 2.712554 -33.531780 -90.715607 0.000000 0.000000 0.000000 -0.000000 0.000000 -0.000001
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 11.692453 0.000000 -0.000335 -0.000113 -3.404744 -0.000115 0.000000 0.000000 -0.000000 -0.000000 0.000000 -0.000001
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 11.481575 -0.000164 -0.000374 -6.109052 2.481481 90.348450 0.000000 0.000000 0.000000 0.000000 0.000003 0.000001
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 3.859642 -0.142850 -1.192015 8.683118 -50.436390 -26.823133 0.000000 0.000000 0.000000 0.000001 -0.000003 0.000005
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 1.312611 -0.000032 0.000010 0.001435 -25.196337 -0.000625 0.000000 0.000002 0.000000 0.000003 -0.000003 0.000003
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 0.729371 0.000031 0.000025 0.000463 -13.995469 0.000287 0.000000 -0.000002 0.000000 0.000003 0.000000 0.000000
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 3.942291 0.046310 -0.431472 4.194911 -46.470661 -8.697328 0.000000 -0.000002 -0.000000 0.000001 -0.000008 0.000003
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 1.539116 -0.000019 0.000004 0.000918 -14.198019 0.000174 0.000000 0.000000 0.000000 0.000001 -0.000009 0.000003
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 1.196346 0.000013 0.000023 0.000232 -24.684868 0.000517 0.000000 0.000000 0.000000 0.000002 -0.000007 0.000001
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 3.883667 -0.047258 0.431427 1.251455 -33.685513 4.921880 0.000000 0.000002 0.000000 0.000001 -0.000003 -0.000001
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 1.719591 -0.000059 0.000017 0.316216 -20.999659 -0.000001 0.000000 0.000000 0.000000 0.000000 -0.000009 -0.000001
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 1.209177 0.000031 0.000013 0.177101 -12.399102 -0.000001 0.000000 0.000000 0.000000 0.000000 -0.000009 -0.000001
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 3.859802 -0.138441 1.332458 -2.449451 -30.468811 20.308950 -0.000002 0.000000 0.000000 0.000001 0.000000 -0.000007
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.719477 -0.000071 0.000013 0.233594 -20.800491 0.000111 0.000000 0.000000 0.000000 -0.000001 -0.000003 -0.000005
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 1.099667 0.000008 0.000008 0.148337 -14.000111 0.000454 -0.000001 0.000000 0.000000 -0.000002 -0.000002 -0.000005
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 0.805990 -0.349053 1.321267 -38.914551 -45.201164 -70.055206 0.000000 0.000000 -0.000002 0.000006 0.000002 0.000002
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.789839 -0.000023 -0.000015 -0.000796 13.093577 0.001778 0.000000 0.000000 -0.000002 0.000006 0.000000 0.000003
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 1.207027 -0.000028 -0.000008 0.000176 20.790058 -0.000683 0.000000 0.000000 0.000000 0.000004 -0.000001 0.000005
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 2.033358 1.000771 -1.937611 73.712082 168.618378 -95.596954 0.000000 0.000000 0.000000 -0.000000 0.000002 0.000000
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 6.027916 0.000026 -0.000032 -2.893895 -33.789211 93.952766 0.000000 0.000000 0.000000 -0.000000 -0.000000 -0.000000
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 11.692235 -0.000410 0.000372 0.000113 -0.419176 -0.000114 0.000000 0.000000 0.000000 -0.000003 0.000000 0.000000
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 11.554090 -0.000119 0.000385 6.105205 -2.946608 -89.676781 0.000000 0.000000 0.000000 0.000000 -0.000003 0.000000
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 3.859512 -0.132594 1.193094 -9.055770 -50.353649 26.714043 0.000000 0.000000 0.000000 -0.000001 -0.000001 0.000002
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 1.312559 0.000034 0.000000 -0.000745 -25.192320 0.000517 0.000000 0.000000 0.000000 -0.000000 0.000003 -0.000002
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 0.729383 0.000046 -0.000017 -0.000287 -13.996782 0.000342 0.000001 0.000002 0.000000 -0.000000 0.000003 -0.000002
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 3.942181 0.050287 0.431029 -4.537138 -46.420639 8.599122 0.000000 0.000000 0.000000 -0.000001 0.000001 0.000002
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 1.539101 0.000000 0.000001 -0.000172 -14.196861 0.000231 0.000000 0.000000 -0.000000 -0.000001 0.000002 0.000003
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 1.196314 0.000004 0.000002 -0.000343 -24.683592 -0.000112 -0.000001 0.000000 0.000000 -0.000000 0.000000 0.000002
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 3.883537 -0.050336 -0.431058 -1.512379 -33.671127 -4.922109 0.000000 0.000000 0.000000 0.000000 0.000002 -0.000001
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 1.719568 -0.000057 0.000003 -0.456648 -20.997530 -0.000173 0.000000 0.000000 -0.000000 -0.000001 -0.000003 -0.000001
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 1.209211 0.000015 0.000006 -0.255769 -12.396980 0.000171 0.000001 0.000000 0.000000 -0.000001 -0.000007 -0.000001
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 3.859684 -0.148980 -1.331293 2.210013 -30.480843 -20.307344 0.000000 0.000000 0.000000 0.000002 -0.000002 -0.000003
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.719421 -0.000038 -0.000010 -0.378324 -20.797966 -0.000236 -0.000002 0.000000 0.000000 -0.000000 0.000002 -0.000007
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 1.099670 0.000015 0.000006 -0.240759 -13.998560 0.000225 0.000000 0.000000 0.000000 -0.000002 0.000002 -0.000005
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 0.806015 -0.359802 -1.318340 38.596214 -45.467297 69.983932 0.000000 0.000000 0.000000 -0.000006 -0.000001 0.000003
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.789778 -0.000021 -0.000004 0.001026 13.095180 -0.000857 0.000000 0.000000 0.000000 -0.000005 -0.000001 0.000000
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 1.206984 -0.000017 0.000010 0.000912 20.793097 -0.001547 0.000000 0.000000 -0.000002 -0.000005 -0.000001 0.000000
$definebone "ValveBiped.Bip01_R_Wrist" "ValveBiped.Bip01_R_Forearm" 11.495943 -0.000116 0.000350 -0.002867 -1.152275 -0.003782 0.000000 0.000000 -0.000001 -0.000005 -0.000000 -0.000000
$definebone "camera" "" 0.000000 0.000000 0.000000 -0.000000 0.000000 89.999985 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "m16_parent" "" -2.806967 -11.473845 -4.150687 -0.000000 0.000000 89.999985 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "m16_flash" "m16_parent" 0.008229 0.332198 31.824661 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "brass" "m16_parent" -0.827462 0.456491 4.608455 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "m16_magrelease" "m16_parent" 0.757563 -1.638261 3.466695 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "m16_ch" "m16_parent" 0.043583 1.418235 -1.855700 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "m16_bolt" "m16_parent" -0.643819 0.421438 4.618398 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "m16_selector" "m16_parent" 0.655930 -1.493212 -0.260548 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "m16_forwardassist" "m16_parent" -1.085278 0.310503 -2.232267 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "m16_dustcover" "m16_parent" -0.827462 -0.043509 4.608455 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "m16_boltrelease" "m16_parent" 0.786069 -0.803614 2.894078 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "m16_trigger" "m16_parent" 0.000378 -2.023272 1.555099 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "m16_mag" "" -2.854127 -16.600163 -9.078745 -0.000000 0.000000 89.999985 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "m16_bullets1" "m16_mag" -0.087005 3.627513 -0.765813 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "m16_bullets2" "m16_mag" 0.177259 3.279955 -0.222776 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "m16_magb" "" -2.854127 -16.600163 -9.078745 -0.000000 0.000000 89.999985 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "root" "" 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000

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

$collisionmodel "m16_col.smd"
{
	$mass 5
}