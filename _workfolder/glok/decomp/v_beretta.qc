// Created by Crowbar 0.71

$modelname "weapons\v_beretta.mdl"

$bodygroup "weapon"
{
	studio "SKM_1P_Glock17.smd"
}
$bodygroup "mag"
{
	studio "SKM_1P_Glock17_Magazine_17.smd"
}
$bodygroup "bullets"
{
	studio "SKM_1P_PF940_Bullets_Edit.smd"
}
$bodygroup "tritium"
{
	studio "SKM_1P_Glock17_Tritium.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 2.009 1.913 -9.137

$cdmaterials "models\weapons\ins2_sandstorm\"

$attachment "muzzle" "b_wpn_muzzle" 0 0 0 rotate 0 0 0
$attachment "muzzle_supp" "b_wpn_muzzle" 6.46 0 0 rotate 0 0 0
$attachment "shell" "b_wpn_eject" 0 0 0 rotate 0 0 0
$attachment "suppressor" "A_Suppressor" 0 0 0 rotate 0 0 0
$attachment "laser" "A_LaserFlashlight" 0 0.49 0 rotate 0 0 0
$attachment "Magazine" "b_wpn_mag" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -20.432 -2.695 -25.946 11.584 8.836 2.803

$definebone "b_root" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "b_ch_middle" "b_root" 0 0.000007 -20.680017 0 -89.999927 0 0 0 0 0 0 0
$definebone "b_ch_spine1" "b_ch_middle" -0.005068 0 3.24214 -89.954834 -90.000091 0 0 0 0 0 0 0
$definebone "b_ch_spine2" "b_ch_spine1" 6.363431 -0.00405 0.003023 0.013063 -0.001719 -35.876153 0 0 0 0 0 0
$definebone "b_ch_l_clavical" "b_ch_spine2" 6.363823 0.000186 1.506474 0.002175 -94.837641 -90.014646 0 0 0 0 0 0
$definebone "b_ch_l_upperarm" "b_ch_l_clavical" 5.853647 -0.000003 -0.000002 41.032088 -147.670411 -56.743163 0 0 0 0 0 0
$definebone "b_ch_l_forearm" "b_ch_l_upperarm" 10.390532 -0.000001 0.000005 0.000466 -80.316823 0.000227 0 0 0 0 0 0
$definebone "b_ch_l_forearm_twist1" "b_ch_l_forearm" -0.000001 -0.000001 0 0.000003 0.000289 -5.079275 0 0 0 0 0 0
$definebone "b_ch_l_forearm_twist2" "b_ch_l_forearm" 1.217918 0.000004 0.000004 0.000005 0.000521 -10.158429 0 0 0 0 0 0
$definebone "b_ch_l_forearm_twist3" "b_ch_l_forearm" 2.435834 0.00001 0.000008 -0.000227 0.000459 -15.237582 0 0 0 0 0 0
$definebone "b_ch_l_forearm_twist4" "b_ch_l_forearm" 3.653755 0.000016 0.000015 -0.000167 0.000289 -20.316456 0 0 0 0 0 0
$definebone "b_ch_l_forearm_twist5" "b_ch_l_forearm" 4.871674 0.000022 0.00002 -0.000055 0.000289 -25.395668 0 0 0 0 0 0
$definebone "b_ch_l_forearm_twist6" "b_ch_l_forearm" 6.089593 0.00003 0.000026 -0.000055 0.000575 -30.47488 0 0 0 0 0 0
$definebone "b_ch_l_forearm_twist7" "b_ch_l_forearm" 7.307509 0.000035 0.000032 0.000118 0.000519 -35.553976 0 0 0 0 0 0
$definebone "b_ch_l_hand" "b_ch_l_forearm" 8.525427 0.000042 0.000037 -13.884252 19.071188 -131.911676 0 0 0 0 0 0
$definebone "b_ch_l_finger_00" "b_ch_l_hand" 0.555149 0.315173 -0.822497 31.400538 5.284854 111.464972 0 0 0 0 0 0
$definebone "b_ch_l_finger_01" "b_ch_l_finger_00" 1.556975 -0.000003 -0.000004 -0.000107 21.930371 -0.000049 0 0 0 0 0 0
$definebone "b_ch_l_finger_02" "b_ch_l_finger_01" 1.221095 0.000004 -0.000004 -0.00012 53.838013 0.000128 0 0 0 0 0 0
$definebone "b_ch_l_finger_40" "b_ch_l_hand" 2.426963 -0.353587 1.013786 -21.18104 33.418316 -20.515742 0 0 0 0 0 0
$definebone "b_ch_l_finger_41" "b_ch_l_finger_40" 1.104666 -0.000008 -0.000001 -0.000104 42.22772 0.000114 0 0 0 0 0 0
$definebone "b_ch_l_finger_42" "b_ch_l_finger_41" 0.908442 -0.000001 0 -0.000048 20.925393 -0.000053 0 0 0 0 0 0
$definebone "b_ch_l_finger_20" "b_ch_l_hand" 2.813039 -0.266262 -0.544264 -31.696364 12.047232 1.020943 0 0 0 0 0 0
$definebone "b_ch_l_finger_21" "b_ch_l_finger_20" 1.44575 0.000002 0.000001 -0.000214 51.462262 -0.000058 0 0 0 0 0 0
$definebone "b_ch_l_finger_22" "b_ch_l_finger_21" 1.053748 0.000005 -0.000002 -0.000102 29.230355 0.000239 0 0 0 0 0 0
$definebone "b_ch_l_finger_30" "b_ch_l_hand" 2.689451 -0.342844 0.236187 -27.385884 27.893173 -11.661658 0 0 0 0 0 0
$definebone "b_ch_l_finger_31" "b_ch_l_finger_30" 1.439793 0 -0.000001 0.000015 49.202975 -0.000056 0 0 0 0 0 0
$definebone "b_ch_l_finger_32" "b_ch_l_finger_31" 0.982992 0 0 -0.000044 26.337155 0.000125 0 0 0 0 0 0
$definebone "b_ch_l_finger_10" "b_ch_l_hand" 2.8281 -0.209468 -1.28646 -31.256848 10.842876 1.700297 0 0 0 0 0 0
$definebone "b_ch_l_finger_11" "b_ch_l_finger_10" 1.382518 -0.000006 0 0.000015 20.543848 -0.000178 0 0 0 0 0 0
$definebone "b_ch_l_finger_12" "b_ch_l_finger_11" 0.86591 -0.000001 -0.000003 -0.0001 61.615997 0.000065 0 0 0 0 0 0
$definebone "b_ch_r_clavical" "b_ch_spine2" 6.363062 0.000364 -1.509688 27.682398 -80.211283 94.590293 0 0 0 0 0 0
$definebone "b_ch_r_upperarm" "b_ch_r_clavical" 5.853651 -0.000003 -0.000002 -15.974916 -160.328268 47.304828 0 0 0 0 0 0
$definebone "b_ch_r_forearm" "b_ch_r_upperarm" 10.390533 0.000009 0 0.000279 -61.608259 0.00034 0 0 0 0 0 0
$definebone "b_ch_r_forearm_twist1" "b_ch_r_forearm" 0.000005 0.000002 0.000001 -0.000293 -0.000057 4.106326 0 0 0 0 0 0
$definebone "b_ch_r_forearm_twist2" "b_ch_r_forearm" 1.217923 0.000002 0.000007 -0.000293 -0.000057 8.213 0 0 0 0 0 0
$definebone "b_ch_r_forearm_twist3" "b_ch_r_forearm" 2.435839 0.000001 0.000013 0.000049 -0.000113 12.319963 0 0 0 0 0 0
$definebone "b_ch_r_forearm_twist4" "b_ch_r_forearm" 3.653758 -0.000001 0.000019 -0.000464 0.000114 16.426354 0 0 0 0 0 0
$definebone "b_ch_r_forearm_twist5" "b_ch_r_forearm" 4.871676 0 0.000026 -0.000236 -0.000056 20.533311 0 0 0 0 0 0
$definebone "b_ch_r_forearm_twist6" "b_ch_r_forearm" 6.08959 0.000001 0.000034 -0.000353 0.000115 24.639986 0 0 0 0 0 0
$definebone "b_ch_r_forearm_twist7" "b_ch_r_forearm" 7.307517 0 0.000039 0.000106 -0.000457 28.746484 0 0 0 0 0 0
$definebone "b_ch_r_hand" "b_ch_r_forearm" 8.525425 -0.000001 0.000045 17.539723 12.365453 124.675049 0 0 0 0 0 0
$definebone "b_ch_r_finger_00" "b_ch_r_hand" 0.555141 0.315172 0.822499 -21.960257 42.850032 -139.101829 0 0 0 0 0 0
$definebone "b_ch_r_finger_01" "b_ch_r_finger_00" 1.556974 0.00001 -0.000002 -10.869475 39.149056 14.580268 0 0 0 0 0 0
$definebone "b_ch_r_finger_02" "b_ch_r_finger_01" 1.221092 0 -0.000001 -8.114114 42.973703 -3.055371 0 0 0 0 0 0
$definebone "b_ch_r_finger_10" "b_ch_r_hand" 2.828087 -0.209482 1.286469 36.555435 17.702228 4.854489 0 0 0 0 0 0
$definebone "b_ch_r_finger_11" "b_ch_r_finger_10" 1.382518 0 0.000001 -0.000075 22.572995 -0.000012 0 0 0 0 0 0
$definebone "b_ch_r_finger_12" "b_ch_r_finger_11" 0.865909 -0.000006 0.000001 -0.000114 54.684404 -0.00002 0 0 0 0 0 0
$definebone "b_ch_r_finger_20" "b_ch_r_hand" 2.813026 -0.266277 0.544272 42.917726 62.854044 29.34059 0 0 0 0 0 0
$definebone "b_ch_r_finger_21" "b_ch_r_finger_20" 1.445756 0.000001 0.000004 -4.037803 60.677536 -5.153889 0 0 0 0 0 0
$definebone "b_ch_r_finger_22" "b_ch_r_finger_21" 1.053749 -0.000002 0 -0.000038 64.694083 0.000055 0 0 0 0 0 0
$definebone "b_ch_r_finger_30" "b_ch_r_hand" 2.689441 -0.342861 -0.236177 30.540822 76.930121 32.701795 0 0 0 0 0 0
$definebone "b_ch_r_finger_31" "b_ch_r_finger_30" 1.439795 0.000002 0 -3.652601 51.771885 -1.367433 0 0 0 0 0 0
$definebone "b_ch_r_finger_32" "b_ch_r_finger_31" 0.98299 0 -0.000003 0.000015 60.502574 -0.000002 0 0 0 0 0 0
$definebone "b_ch_r_finger_40" "b_ch_r_hand" 2.426959 -0.353605 -1.013775 18.627318 83.615333 35.909627 0 0 0 0 0 0
$definebone "b_ch_r_finger_41" "b_ch_r_finger_40" 1.104661 -0.000006 0 -0.000052 31.59862 -0.000072 0 0 0 0 0 0
$definebone "b_ch_r_finger_42" "b_ch_r_finger_41" 0.908444 0.000002 -0.000001 0.000015 47.53379 -0.000007 0 0 0 0 0 0
$definebone "b_camera" "b_root" 0 -0.000001 0 0 0 0.000057 0 0 0 0 0 0
$definebone "ik_hand_root" "b_root" 0 -0.000001 0 0 0 0 0 0 0 0 0 0
$definebone "ik_hand_r" "ik_hand_root" -3.039829 -9.408569 -4.970421 -23.674616 -98.903284 -3.042693 0 0 0 0 0 0
$definebone "ik_hand_l" "ik_hand_root" -0.887544 -9.506869 -6.49128 -23.844938 -109.378998 158.060017 0 0 0 0 0 0
$definebone "b_wpn" "b_root" -2.441874 -13.688156 -2.322179 0 0 0 0 0 0 0 0 0
$definebone "b_wpn_eject" "b_wpn" -0.366037 1.318204 0.479866 -49.088559 -179.999978 0 0 0 0 0 0 0
$definebone "b_wpn_mag" "b_wpn" -0.001172 1.943374 -1.750155 0 0 0 0 0 0 0 0 0
$definebone "b_wpn_mag_b1" "b_wpn_mag" 0.000442 -0.487607 1.918581 0 0 0 0 0 0 0 0 0
$definebone "b_wpn_mag_b2" "b_wpn_mag" 0.000442 -0.354432 1.589786 0 0 0 0 0 0 0 0 0
$definebone "b_wpn_mag_follow" "b_wpn_mag" 0.000442 -0.311463 1.652576 0 0 0 0 0 0 0 0 0
$definebone "b_wpn_muzzle" "b_wpn" -0.000401 -3.125965 0.290222 -0.000057 -89.999982 0 0 0 0 0 0 0
$definebone "b_wpn_slide" "b_wpn" 0 0.34436 0.208321 0 0 0 0 0 0 0 0 0
$definebone "b_wpn_sliderelease" "b_wpn" 0.50975 0.451456 -0.437881 0 0 0 0 0 0 0 0 0
$definebone "b_wpn_trigger" "b_wpn" -0.000726 0.449829 -0.437591 0 0 0 0 0 0 0 0 0
$definebone "ik_hand_wpn_r" "b_wpn" -0.597957 4.279596 -2.648247 -23.674616 -98.903284 -3.042693 0 0 0 0 0 0
$definebone "ik_hand_wpn_l" "b_wpn" 1.554328 4.181297 -4.169099 -23.844812 -109.379052 158.060017 0 0 0 0 0 0
$definebone "b_wpn_barrel" "b_wpn" -0.000726 0.205387 -0.055232 0 0 0 0 0 0 0 0 0
$definebone "L ForeTwist" "b_ch_l_forearm_twist1" 0 0 0 0.000003 0 -0.000001 0 0 0 0 0 0
$definebone "L ForeTwist1" "b_ch_l_forearm_twist2" 0 0 0 -0.000002 0.000003 0.000004 0 0 0 0 0 0
$definebone "L ForeTwist2" "b_ch_l_forearm_twist3" 0 0.000001 0 0.000002 0.000002 0.000003 0 0 0 0 0 0
$definebone "L ForeTwist3" "b_ch_l_forearm_twist4" 0 0 0 0.000002 0.000003 0.000001 0 0 0 0 0 0
$definebone "L ForeTwist4" "b_ch_l_forearm_twist5" 0 0 0 0 0.000002 0.000002 0 0 0 0 0 0
$definebone "L ForeTwist5" "b_ch_l_forearm_twist6" 0 0 0 0.000002 0.000003 0 0 0 0 0 0 0
$definebone "L ForeTwist6" "b_ch_l_forearm_twist7" 0 0 0 0 0.000003 0.000007 0 0 0 0 0 0
$definebone "L Finger02" "b_ch_l_finger_02" 0 0 0 -0.000002 -0.000012 0.000009 0 0 0 0 0 0
$definebone "L Finger01" "b_ch_l_finger_01" 0 0 0 0.000006 0.000003 0.000006 0 0 0 0 0 0
$definebone "L Finger0" "b_ch_l_finger_00" 0 -0.000001 0 0.000008 0.000008 0.000003 0 0 0 0 0 0
$definebone "L Finger42" "b_ch_l_finger_42" 0 0 0 0.000002 -0.000007 0.000005 0 0 0 0 0 0
$definebone "L Finger41" "b_ch_l_finger_41" 0 0 0 0.000003 -0.000014 0.000004 0 0 0 0 0 0
$definebone "L Finger4" "b_ch_l_finger_40" 0 0 0 0.000007 -0.000005 -0.000001 0 0 0 0 0 0
$definebone "L Finger22" "b_ch_l_finger_22" 0 0 0 0.000007 -0.000003 0.000006 0 0 0 0 0 0
$definebone "L Finger21" "b_ch_l_finger_21" 0 0 0 0.000009 0 0.000001 0 0 0 0 0 0
$definebone "L Finger2" "b_ch_l_finger_20" 0 0 0 0.000006 0.000005 -0.000007 0 0 0 0 0 0
$definebone "L Finger32" "b_ch_l_finger_32" 0 0 0 0.000006 0 0.000008 0 0 0 0 0 0
$definebone "L Finger31" "b_ch_l_finger_31" 0 0 0 0.000008 0 0.000004 0 0 0 0 0 0
$definebone "L Finger3" "b_ch_l_finger_30" -0.000001 0 0 0.000008 -0.000009 -0.000003 0 0 0 0 0 0
$definebone "L Finger12" "b_ch_l_finger_12" 0 0 0 0.000008 -0.000003 0.000006 0 0 0 0 0 0
$definebone "L Finger11" "b_ch_l_finger_11" 0 0 0 0.000009 -0.000005 -0.000002 0 0 0 0 0 0
$definebone "L Finger1" "b_ch_l_finger_10" 0 0 0 0.000008 0.000002 -0.000006 0 0 0 0 0 0
$definebone "L Hand" "b_ch_l_hand" 0 0 0 -0.000001 0.000005 -0.000007 0 0 0 0 0 0
$definebone "L Forearm" "b_ch_l_forearm" 0 0 0 0.000002 0.000002 0.000001 0 0 0 0 0 0
$definebone "L UpperArm" "b_ch_l_upperarm" 0 0 0 0 -0.000002 0.000002 0 0 0 0 0 0
$definebone "L Clavicle" "b_ch_l_clavical" 0 0 0 0.000001 -0.000003 0 0 0 0 0 0 0
$definebone "R ForeTwist" "b_ch_r_forearm_twist1" 0 0 0 0.000001 0 -0.000002 0 0 0 0 0 0
$definebone "R ForeTwist1" "b_ch_r_forearm_twist2" 0 0 0 0 0.000003 -0.000002 0 0 0 0 0 0
$definebone "R ForeTwist2" "b_ch_r_forearm_twist3" 0 0 0 -0.000001 0.000001 -0.000002 0 0 0 0 0 0
$definebone "R ForeTwist3" "b_ch_r_forearm_twist4" 0 0 0 0 0 -0.000002 0 0 0 0 0 0
$definebone "R ForeTwist4" "b_ch_r_forearm_twist5" 0 0 0 0 0.000004 -0.000002 0 0 0 0 0 0
$definebone "R ForeTwist5" "b_ch_r_forearm_twist6" 0 0 0 0 0.000001 0 0 0 0 0 0 0
$definebone "R ForeTwist6" "b_ch_r_forearm_twist7" 0 0 0 0 0.000003 0.000002 0 0 0 0 0 0
$definebone "R Finger02" "b_ch_r_finger_02" 0 0 0 0.000001 -0.000024 -0.000005 0 0 0 0 0 0
$definebone "R Finger01" "b_ch_r_finger_01" 0 0 0 0 -0.000007 -0.000009 0 0 0 0 0 0
$definebone "R Finger0" "b_ch_r_finger_00" 0 -0.000001 0 -0.000009 0.000014 -0.00001 0 0 0 0 0 0
$definebone "R Finger12" "b_ch_r_finger_12" 0 0 0 0.000002 0.000002 -0.000013 0 0 0 0 0 0
$definebone "R Finger11" "b_ch_r_finger_11" 0 0 0 -0.00001 0 -0.000008 0 0 0 0 0 0
$definebone "R Finger1" "b_ch_r_finger_10" 0 0 0 -0.000013 0.000001 -0.000003 0 0 0 0 0 0
$definebone "R Finger22" "b_ch_r_finger_22" 0 0 0 0.000013 -0.00001 -0.000002 0 0 0 0 0 0
$definebone "R Finger21" "b_ch_r_finger_21" 0 0 0 0.000004 0.000001 -0.000012 0 0 0 0 0 0
$definebone "R Finger2" "b_ch_r_finger_20" 0 -0.000001 0 -0.000008 0.000009 -0.000008 0 0 0 0 0 0
$definebone "R Finger32" "b_ch_r_finger_32" 0 0 0 0.000012 0 0.000001 0 0 0 0 0 0
$definebone "R Finger31" "b_ch_r_finger_31" 0 0 0 0.000005 -0.000008 -0.00001 0 0 0 0 0 0
$definebone "R Finger3" "b_ch_r_finger_30" 0 0 0 -0.000004 0 -0.000011 0 0 0 0 0 0
$definebone "R Finger42" "b_ch_r_finger_42" 0 0 0 0.000012 0.000003 -0.000006 0 0 0 0 0 0
$definebone "R Finger41" "b_ch_r_finger_41" 0 0 0 0.000004 0.000002 -0.000013 0 0 0 0 0 0
$definebone "R Finger4" "b_ch_r_finger_40" 0 0 0 -0.000004 -0.000002 -0.000012 0 0 0 0 0 0
$definebone "R Hand" "b_ch_r_hand" 0 0 -0.000001 -0.000001 0.000001 -0.000002 0 0 0 0 0 0
$definebone "R Forearm" "b_ch_r_forearm" 0 0 0 -0.000001 0.000002 -0.000002 0 0 0 0 0 0
$definebone "R UpperArm" "b_ch_r_upperarm" 0 0 0 0.000003 -0.000003 -0.000005 0 0 0 0 0 0
$definebone "R Clavicle" "b_ch_r_clavical" 0 0 0 -0.000002 0 0 0 0 0 0 0 0
$definebone "A_Optic" "" 0 0 0 0 -180.000005 -90.000003 0 0 0 0 0 0
$definebone "A_Foregrip" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "A_GL" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "GL_Slide" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "GL_Trigger" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "GL_Round" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "GL_Casing" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "A_GLMuzzle" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "A_Suppressor" "b_wpn_barrel" 0 -3.275 0.315 0 -180.000005 0 0 0 0 0 0 0
$definebone "A_LaserFlashlight" "b_wpn" 0.0125 -1.7 -0.475 0 -90.000003 -90.000003 0 0 0 0 0 0

$bonemerge "b_root"
$bonemerge "b_ch_middle"
$bonemerge "b_ch_spine1"
$bonemerge "b_ch_spine2"
$bonemerge "b_ch_l_clavical"
$bonemerge "b_ch_l_upperarm"
$bonemerge "b_ch_l_forearm"
$bonemerge "b_ch_l_forearm_twist1"
$bonemerge "b_ch_l_forearm_twist2"
$bonemerge "b_ch_l_forearm_twist3"
$bonemerge "b_ch_l_forearm_twist4"
$bonemerge "b_ch_l_forearm_twist5"
$bonemerge "b_ch_l_forearm_twist6"
$bonemerge "b_ch_l_forearm_twist7"
$bonemerge "b_ch_l_hand"
$bonemerge "b_ch_l_finger_00"
$bonemerge "b_ch_l_finger_01"
$bonemerge "b_ch_l_finger_02"
$bonemerge "b_ch_l_finger_40"
$bonemerge "b_ch_l_finger_41"
$bonemerge "b_ch_l_finger_42"
$bonemerge "b_ch_l_finger_20"
$bonemerge "b_ch_l_finger_21"
$bonemerge "b_ch_l_finger_22"
$bonemerge "b_ch_l_finger_30"
$bonemerge "b_ch_l_finger_31"
$bonemerge "b_ch_l_finger_32"
$bonemerge "b_ch_l_finger_10"
$bonemerge "b_ch_l_finger_11"
$bonemerge "b_ch_l_finger_12"
$bonemerge "b_ch_r_clavical"
$bonemerge "b_ch_r_upperarm"
$bonemerge "b_ch_r_forearm"
$bonemerge "b_ch_r_forearm_twist1"
$bonemerge "b_ch_r_forearm_twist2"
$bonemerge "b_ch_r_forearm_twist3"
$bonemerge "b_ch_r_forearm_twist4"
$bonemerge "b_ch_r_forearm_twist5"
$bonemerge "b_ch_r_forearm_twist6"
$bonemerge "b_ch_r_forearm_twist7"
$bonemerge "b_ch_r_hand"
$bonemerge "b_ch_r_finger_00"
$bonemerge "b_ch_r_finger_01"
$bonemerge "b_ch_r_finger_02"
$bonemerge "b_ch_r_finger_10"
$bonemerge "b_ch_r_finger_11"
$bonemerge "b_ch_r_finger_12"
$bonemerge "b_ch_r_finger_20"
$bonemerge "b_ch_r_finger_21"
$bonemerge "b_ch_r_finger_22"
$bonemerge "b_ch_r_finger_30"
$bonemerge "b_ch_r_finger_31"
$bonemerge "b_ch_r_finger_32"
$bonemerge "b_ch_r_finger_40"
$bonemerge "b_ch_r_finger_41"
$bonemerge "b_ch_r_finger_42"
$bonemerge "b_camera"
$bonemerge "ik_hand_root"
$bonemerge "ik_hand_r"
$bonemerge "ik_hand_l"
$bonemerge "b_wpn"
$bonemerge "b_wpn_eject"
$bonemerge "b_wpn_mag"
$bonemerge "b_wpn_mag_b1"
$bonemerge "b_wpn_mag_b2"
$bonemerge "b_wpn_mag_follow"
$bonemerge "b_wpn_muzzle"
$bonemerge "b_wpn_slide"
$bonemerge "b_wpn_sliderelease"
$bonemerge "b_wpn_trigger"
$bonemerge "ik_hand_wpn_r"
$bonemerge "ik_hand_wpn_l"
$bonemerge "b_wpn_barrel"
$bonemerge "L ForeTwist"
$bonemerge "L ForeTwist1"
$bonemerge "L ForeTwist2"
$bonemerge "L ForeTwist3"
$bonemerge "L ForeTwist4"
$bonemerge "L ForeTwist5"
$bonemerge "L ForeTwist6"
$bonemerge "L Finger02"
$bonemerge "L Finger01"
$bonemerge "L Finger0"
$bonemerge "L Finger42"
$bonemerge "L Finger41"
$bonemerge "L Finger4"
$bonemerge "L Finger22"
$bonemerge "L Finger21"
$bonemerge "L Finger2"
$bonemerge "L Finger32"
$bonemerge "L Finger31"
$bonemerge "L Finger3"
$bonemerge "L Finger12"
$bonemerge "L Finger11"
$bonemerge "L Finger1"
$bonemerge "L Hand"
$bonemerge "L Forearm"
$bonemerge "L UpperArm"
$bonemerge "L Clavicle"
$bonemerge "R ForeTwist"
$bonemerge "R ForeTwist1"
$bonemerge "R ForeTwist2"
$bonemerge "R ForeTwist3"
$bonemerge "R ForeTwist4"
$bonemerge "R ForeTwist5"
$bonemerge "R ForeTwist6"
$bonemerge "R Finger02"
$bonemerge "R Finger01"
$bonemerge "R Finger0"
$bonemerge "R Finger12"
$bonemerge "R Finger11"
$bonemerge "R Finger1"
$bonemerge "R Finger22"
$bonemerge "R Finger21"
$bonemerge "R Finger2"
$bonemerge "R Finger32"
$bonemerge "R Finger31"
$bonemerge "R Finger3"
$bonemerge "R Finger42"
$bonemerge "R Finger41"
$bonemerge "R Finger4"
$bonemerge "R Hand"
$bonemerge "R Forearm"
$bonemerge "R UpperArm"
$bonemerge "R Clavicle"
$bonemerge "A_Optic"
$bonemerge "A_Foregrip"
$bonemerge "A_GL"
$bonemerge "GL_Slide"
$bonemerge "GL_Trigger"
$bonemerge "GL_Round"
$bonemerge "GL_Casing"
$bonemerge "A_GLMuzzle"
$bonemerge "A_Suppressor"
$bonemerge "A_LaserFlashlight"


$sectionframes 30 30

$weightlist "weights_empty_layer" {
	 "b_root" 0
	 "b_ch_middle" 0
	 "b_ch_spine1" 0
	 "b_ch_spine2" 0
	 "b_ch_l_clavical" 0
	 "b_ch_l_upperarm" 0
	 "b_ch_l_forearm" 0
	 "b_ch_l_forearm_twist1" 0
	 "b_ch_l_forearm_twist2" 0
	 "b_ch_l_forearm_twist3" 0
	 "b_ch_l_forearm_twist4" 0
	 "b_ch_l_forearm_twist5" 0
	 "b_ch_l_forearm_twist6" 0
	 "b_ch_l_forearm_twist7" 0
	 "b_ch_l_hand" 0
	 "b_ch_l_finger_00" 0
	 "b_ch_l_finger_01" 0
	 "b_ch_l_finger_02" 0
	 "b_ch_l_finger_40" 0
	 "b_ch_l_finger_41" 0
	 "b_ch_l_finger_42" 0
	 "b_ch_l_finger_20" 0
	 "b_ch_l_finger_21" 0
	 "b_ch_l_finger_22" 0
	 "b_ch_l_finger_30" 0
	 "b_ch_l_finger_31" 0
	 "b_ch_l_finger_32" 0
	 "b_ch_l_finger_10" 0
	 "b_ch_l_finger_11" 0
	 "b_ch_l_finger_12" 0
	 "b_ch_r_clavical" 0
	 "b_ch_r_upperarm" 0
	 "b_ch_r_forearm" 0
	 "b_ch_r_forearm_twist1" 0
	 "b_ch_r_forearm_twist2" 0
	 "b_ch_r_forearm_twist3" 0
	 "b_ch_r_forearm_twist4" 0
	 "b_ch_r_forearm_twist5" 0
	 "b_ch_r_forearm_twist6" 0
	 "b_ch_r_forearm_twist7" 0
	 "b_ch_r_hand" 0
	 "b_ch_r_finger_00" 0
	 "b_ch_r_finger_01" 0
	 "b_ch_r_finger_02" 0
	 "b_ch_r_finger_10" 0
	 "b_ch_r_finger_11" 0
	 "b_ch_r_finger_12" 0
	 "b_ch_r_finger_20" 0
	 "b_ch_r_finger_21" 0
	 "b_ch_r_finger_22" 0
	 "b_ch_r_finger_30" 0
	 "b_ch_r_finger_31" 0
	 "b_ch_r_finger_32" 0
	 "b_ch_r_finger_40" 0
	 "b_ch_r_finger_41" 0
	 "b_ch_r_finger_42" 0
	 "b_camera" 0
	 "ik_hand_root" 0
	 "ik_hand_r" 0
	 "ik_hand_l" 0
	 "b_wpn" 0
	 "b_wpn_eject" 0
	 "b_wpn_mag" 0
	 "b_wpn_mag_b1" 0
	 "b_wpn_mag_b2" 0
	 "b_wpn_mag_follow" 0
	 "b_wpn_muzzle" 0
	 "b_wpn_slide" 1
	 "b_wpn_sliderelease" 0
	 "b_wpn_trigger" 0
	 "ik_hand_wpn_r" 0
	 "ik_hand_wpn_l" 0
	 "b_wpn_barrel" 1
	 "L ForeTwist" 0
	 "L ForeTwist1" 0
	 "L ForeTwist2" 0
	 "L ForeTwist3" 0
	 "L ForeTwist4" 0
	 "L ForeTwist5" 0
	 "L ForeTwist6" 0
	 "L Finger02" 0
	 "L Finger01" 0
	 "L Finger0" 0
	 "L Finger42" 0
	 "L Finger41" 0
	 "L Finger4" 0
	 "L Finger22" 0
	 "L Finger21" 0
	 "L Finger2" 0
	 "L Finger32" 0
	 "L Finger31" 0
	 "L Finger3" 0
	 "L Finger12" 0
	 "L Finger11" 0
	 "L Finger1" 0
	 "L Hand" 0
	 "L Forearm" 0
	 "L UpperArm" 0
	 "L Clavicle" 0
	 "R ForeTwist" 0
	 "R ForeTwist1" 0
	 "R ForeTwist2" 0
	 "R ForeTwist3" 0
	 "R ForeTwist4" 0
	 "R ForeTwist5" 0
	 "R ForeTwist6" 0
	 "R Finger02" 0
	 "R Finger01" 0
	 "R Finger0" 0
	 "R Finger12" 0
	 "R Finger11" 0
	 "R Finger1" 0
	 "R Finger22" 0
	 "R Finger21" 0
	 "R Finger2" 0
	 "R Finger32" 0
	 "R Finger31" 0
	 "R Finger3" 0
	 "R Finger42" 0
	 "R Finger41" 0
	 "R Finger4" 0
	 "R Hand" 0
	 "R Forearm" 0
	 "R UpperArm" 0
	 "R Clavicle" 0
	 "A_Optic" 0
	 "A_Foregrip" 0
	 "A_GL" 0
	 "GL_Slide" 0
	 "GL_Trigger" 0
	 "GL_Round" 0
	 "GL_Casing" 0
	 "A_GLMuzzle" 0
	 "A_Suppressor" 0
	 "A_LaserFlashlight" 0
}

$weightlist "weights_seq_base_fire" {
	 "b_root" 1
	 "b_ch_middle" 0
	 "b_ch_spine1" 0
	 "b_ch_spine2" 0
	 "b_ch_l_clavical" 0
	 "b_ch_l_upperarm" 0
	 "b_ch_l_forearm" 0
	 "b_ch_l_forearm_twist1" 0
	 "b_ch_l_forearm_twist2" 0
	 "b_ch_l_forearm_twist3" 0
	 "b_ch_l_forearm_twist4" 0
	 "b_ch_l_forearm_twist5" 0
	 "b_ch_l_forearm_twist6" 0
	 "b_ch_l_forearm_twist7" 0
	 "b_ch_l_hand" 0
	 "b_ch_l_finger_00" 0
	 "b_ch_l_finger_01" 0
	 "b_ch_l_finger_02" 0
	 "b_ch_l_finger_40" 0
	 "b_ch_l_finger_41" 0
	 "b_ch_l_finger_42" 0
	 "b_ch_l_finger_20" 0
	 "b_ch_l_finger_21" 0
	 "b_ch_l_finger_22" 0
	 "b_ch_l_finger_30" 0
	 "b_ch_l_finger_31" 0
	 "b_ch_l_finger_32" 0
	 "b_ch_l_finger_10" 0
	 "b_ch_l_finger_11" 0
	 "b_ch_l_finger_12" 0
	 "b_ch_r_clavical" 0
	 "b_ch_r_upperarm" 0
	 "b_ch_r_forearm" 0
	 "b_ch_r_forearm_twist1" 0
	 "b_ch_r_forearm_twist2" 0
	 "b_ch_r_forearm_twist3" 0
	 "b_ch_r_forearm_twist4" 0
	 "b_ch_r_forearm_twist5" 0
	 "b_ch_r_forearm_twist6" 0
	 "b_ch_r_forearm_twist7" 0
	 "b_ch_r_hand" 0
	 "b_ch_r_finger_00" 0
	 "b_ch_r_finger_01" 0
	 "b_ch_r_finger_02" 0
	 "b_ch_r_finger_10" 0
	 "b_ch_r_finger_11" 0
	 "b_ch_r_finger_12" 0
	 "b_ch_r_finger_20" 0
	 "b_ch_r_finger_21" 0
	 "b_ch_r_finger_22" 0
	 "b_ch_r_finger_30" 0
	 "b_ch_r_finger_31" 0
	 "b_ch_r_finger_32" 0
	 "b_ch_r_finger_40" 0
	 "b_ch_r_finger_41" 0
	 "b_ch_r_finger_42" 0
	 "b_camera" 1
	 "ik_hand_root" 1
	 "ik_hand_r" 1
	 "ik_hand_l" 1
	 "b_wpn" 0
	 "b_wpn_eject" 0
	 "b_wpn_mag" 0
	 "b_wpn_mag_b1" 0
	 "b_wpn_mag_b2" 0
	 "b_wpn_mag_follow" 0
	 "b_wpn_muzzle" 0
	 "b_wpn_slide" 0
	 "b_wpn_sliderelease" 0
	 "b_wpn_trigger" 0
	 "ik_hand_wpn_r" 0
	 "ik_hand_wpn_l" 0
	 "b_wpn_barrel" 0
	 "L ForeTwist" 0
	 "L ForeTwist1" 0
	 "L ForeTwist2" 0
	 "L ForeTwist3" 0
	 "L ForeTwist4" 0
	 "L ForeTwist5" 0
	 "L ForeTwist6" 0
	 "L Finger02" 0
	 "L Finger01" 0
	 "L Finger0" 0
	 "L Finger42" 0
	 "L Finger41" 0
	 "L Finger4" 0
	 "L Finger22" 0
	 "L Finger21" 0
	 "L Finger2" 0
	 "L Finger32" 0
	 "L Finger31" 0
	 "L Finger3" 0
	 "L Finger12" 0
	 "L Finger11" 0
	 "L Finger1" 0
	 "L Hand" 0
	 "L Forearm" 0
	 "L UpperArm" 0
	 "L Clavicle" 0
	 "R ForeTwist" 0
	 "R ForeTwist1" 0
	 "R ForeTwist2" 0
	 "R ForeTwist3" 0
	 "R ForeTwist4" 0
	 "R ForeTwist5" 0
	 "R ForeTwist6" 0
	 "R Finger02" 0
	 "R Finger01" 0
	 "R Finger0" 0
	 "R Finger12" 0
	 "R Finger11" 0
	 "R Finger1" 0
	 "R Finger22" 0
	 "R Finger21" 0
	 "R Finger2" 0
	 "R Finger32" 0
	 "R Finger31" 0
	 "R Finger3" 0
	 "R Finger42" 0
	 "R Finger41" 0
	 "R Finger4" 0
	 "R Hand" 0
	 "R Forearm" 0
	 "R UpperArm" 0
	 "R Clavicle" 0
	 "A_Optic" 0
	 "A_Foregrip" 0
	 "A_GL" 0
	 "GL_Slide" 0
	 "GL_Trigger" 0
	 "GL_Round" 0
	 "GL_Casing" 0
	 "A_GLMuzzle" 0
	 "A_Suppressor" 0
	 "A_LaserFlashlight" 0
}

$weightlist "weights_base_draw_test" {
	 "b_root" 0
	 "b_ch_middle" 0
	 "b_ch_spine1" 0
	 "b_ch_spine2" 0
	 "b_ch_l_clavical" 0
	 "b_ch_l_upperarm" 1
	 "b_ch_l_forearm" 1
	 "b_ch_l_forearm_twist1" 1
	 "b_ch_l_forearm_twist2" 1
	 "b_ch_l_forearm_twist3" 1
	 "b_ch_l_forearm_twist4" 1
	 "b_ch_l_forearm_twist5" 1
	 "b_ch_l_forearm_twist6" 1
	 "b_ch_l_forearm_twist7" 1
	 "b_ch_l_hand" 1
	 "b_ch_l_finger_00" 1
	 "b_ch_l_finger_01" 1
	 "b_ch_l_finger_02" 1
	 "b_ch_l_finger_40" 1
	 "b_ch_l_finger_41" 1
	 "b_ch_l_finger_42" 1
	 "b_ch_l_finger_20" 1
	 "b_ch_l_finger_21" 1
	 "b_ch_l_finger_22" 1
	 "b_ch_l_finger_30" 1
	 "b_ch_l_finger_31" 1
	 "b_ch_l_finger_32" 1
	 "b_ch_l_finger_10" 1
	 "b_ch_l_finger_11" 1
	 "b_ch_l_finger_12" 1
	 "b_ch_r_clavical" 0
	 "b_ch_r_upperarm" 1
	 "b_ch_r_forearm" 1
	 "b_ch_r_forearm_twist1" 1
	 "b_ch_r_forearm_twist2" 1
	 "b_ch_r_forearm_twist3" 1
	 "b_ch_r_forearm_twist4" 1
	 "b_ch_r_forearm_twist5" 1
	 "b_ch_r_forearm_twist6" 1
	 "b_ch_r_forearm_twist7" 1
	 "b_ch_r_hand" 1
	 "b_ch_r_finger_00" 1
	 "b_ch_r_finger_01" 1
	 "b_ch_r_finger_02" 1
	 "b_ch_r_finger_10" 0
	 "b_ch_r_finger_11" 0
	 "b_ch_r_finger_12" 0
	 "b_ch_r_finger_20" 0
	 "b_ch_r_finger_21" 0
	 "b_ch_r_finger_22" 0
	 "b_ch_r_finger_30" 0
	 "b_ch_r_finger_31" 0
	 "b_ch_r_finger_32" 0
	 "b_ch_r_finger_40" 0
	 "b_ch_r_finger_41" 0
	 "b_ch_r_finger_42" 0
	 "b_camera" 0
	 "ik_hand_root" 0
	 "ik_hand_r" 0
	 "ik_hand_l" 0
	 "b_wpn" 1
	 "b_wpn_eject" 0
	 "b_wpn_mag" 0
	 "b_wpn_mag_b1" 0
	 "b_wpn_mag_b2" 0
	 "b_wpn_mag_follow" 0
	 "b_wpn_muzzle" 0
	 "b_wpn_slide" 0
	 "b_wpn_sliderelease" 0
	 "b_wpn_trigger" 0
	 "ik_hand_wpn_r" 1
	 "ik_hand_wpn_l" 1
	 "b_wpn_barrel" 0
	 "L ForeTwist" 1
	 "L ForeTwist1" 1
	 "L ForeTwist2" 1
	 "L ForeTwist3" 1
	 "L ForeTwist4" 1
	 "L ForeTwist5" 1
	 "L ForeTwist6" 1
	 "L Finger02" 1
	 "L Finger01" 1
	 "L Finger0" 1
	 "L Finger42" 1
	 "L Finger41" 1
	 "L Finger4" 1
	 "L Finger22" 1
	 "L Finger21" 1
	 "L Finger2" 1
	 "L Finger32" 1
	 "L Finger31" 1
	 "L Finger3" 1
	 "L Finger12" 1
	 "L Finger11" 1
	 "L Finger1" 1
	 "L Hand" 1
	 "L Forearm" 1
	 "L UpperArm" 1
	 "L Clavicle" 0
	 "R ForeTwist" 1
	 "R ForeTwist1" 1
	 "R ForeTwist2" 1
	 "R ForeTwist3" 1
	 "R ForeTwist4" 1
	 "R ForeTwist5" 1
	 "R ForeTwist6" 1
	 "R Finger02" 1
	 "R Finger01" 1
	 "R Finger0" 1
	 "R Finger12" 0
	 "R Finger11" 0
	 "R Finger1" 0
	 "R Finger22" 0
	 "R Finger21" 0
	 "R Finger2" 0
	 "R Finger32" 0
	 "R Finger31" 0
	 "R Finger3" 0
	 "R Finger42" 0
	 "R Finger41" 0
	 "R Finger4" 0
	 "R Hand" 1
	 "R Forearm" 1
	 "R UpperArm" 1
	 "R Clavicle" 0
	 "A_Optic" 0
	 "A_Foregrip" 0
	 "A_GL" 0
	 "GL_Slide" 0
	 "GL_Trigger" 0
	 "GL_Round" 0
	 "GL_Casing" 0
	 "A_GLMuzzle" 0
	 "A_Suppressor" 0
	 "A_LaserFlashlight" 0
}

$weightlist "weights_base_crawl_test" {
	 "b_root" 0
	 "b_ch_middle" 0
	 "b_ch_spine1" 0
	 "b_ch_spine2" 0
	 "b_ch_l_clavical" 1
	 "b_ch_l_upperarm" 1
	 "b_ch_l_forearm" 1
	 "b_ch_l_forearm_twist1" 1
	 "b_ch_l_forearm_twist2" 1
	 "b_ch_l_forearm_twist3" 1
	 "b_ch_l_forearm_twist4" 1
	 "b_ch_l_forearm_twist5" 1
	 "b_ch_l_forearm_twist6" 1
	 "b_ch_l_forearm_twist7" 1
	 "b_ch_l_hand" 1
	 "b_ch_l_finger_00" 1
	 "b_ch_l_finger_01" 1
	 "b_ch_l_finger_02" 1
	 "b_ch_l_finger_40" 1
	 "b_ch_l_finger_41" 1
	 "b_ch_l_finger_42" 1
	 "b_ch_l_finger_20" 1
	 "b_ch_l_finger_21" 1
	 "b_ch_l_finger_22" 1
	 "b_ch_l_finger_30" 1
	 "b_ch_l_finger_31" 1
	 "b_ch_l_finger_32" 1
	 "b_ch_l_finger_10" 1
	 "b_ch_l_finger_11" 1
	 "b_ch_l_finger_12" 1
	 "b_ch_r_clavical" 1
	 "b_ch_r_upperarm" 1
	 "b_ch_r_forearm" 1
	 "b_ch_r_forearm_twist1" 1
	 "b_ch_r_forearm_twist2" 1
	 "b_ch_r_forearm_twist3" 1
	 "b_ch_r_forearm_twist4" 1
	 "b_ch_r_forearm_twist5" 1
	 "b_ch_r_forearm_twist6" 1
	 "b_ch_r_forearm_twist7" 1
	 "b_ch_r_hand" 1
	 "b_ch_r_finger_00" 1
	 "b_ch_r_finger_01" 1
	 "b_ch_r_finger_02" 1
	 "b_ch_r_finger_10" 1
	 "b_ch_r_finger_11" 1
	 "b_ch_r_finger_12" 1
	 "b_ch_r_finger_20" 1
	 "b_ch_r_finger_21" 1
	 "b_ch_r_finger_22" 1
	 "b_ch_r_finger_30" 1
	 "b_ch_r_finger_31" 1
	 "b_ch_r_finger_32" 1
	 "b_ch_r_finger_40" 1
	 "b_ch_r_finger_41" 1
	 "b_ch_r_finger_42" 1
	 "b_camera" 0
	 "ik_hand_root" 0
	 "ik_hand_r" 0
	 "ik_hand_l" 0
	 "b_wpn" 1
	 "b_wpn_eject" 0
	 "b_wpn_mag" 0
	 "b_wpn_mag_b1" 0
	 "b_wpn_mag_b2" 0
	 "b_wpn_mag_follow" 0
	 "b_wpn_muzzle" 0
	 "b_wpn_slide" 0
	 "b_wpn_sliderelease" 0
	 "b_wpn_trigger" 0
	 "ik_hand_wpn_r" 1
	 "ik_hand_wpn_l" 1
	 "b_wpn_barrel" 0
	 "L ForeTwist" 1
	 "L ForeTwist1" 1
	 "L ForeTwist2" 1
	 "L ForeTwist3" 1
	 "L ForeTwist4" 1
	 "L ForeTwist5" 1
	 "L ForeTwist6" 1
	 "L Finger02" 1
	 "L Finger01" 1
	 "L Finger0" 1
	 "L Finger42" 1
	 "L Finger41" 1
	 "L Finger4" 1
	 "L Finger22" 1
	 "L Finger21" 1
	 "L Finger2" 1
	 "L Finger32" 1
	 "L Finger31" 1
	 "L Finger3" 1
	 "L Finger12" 1
	 "L Finger11" 1
	 "L Finger1" 1
	 "L Hand" 1
	 "L Forearm" 1
	 "L UpperArm" 1
	 "L Clavicle" 1
	 "R ForeTwist" 1
	 "R ForeTwist1" 1
	 "R ForeTwist2" 1
	 "R ForeTwist3" 1
	 "R ForeTwist4" 1
	 "R ForeTwist5" 1
	 "R ForeTwist6" 1
	 "R Finger02" 1
	 "R Finger01" 1
	 "R Finger0" 1
	 "R Finger12" 1
	 "R Finger11" 1
	 "R Finger1" 1
	 "R Finger22" 1
	 "R Finger21" 1
	 "R Finger2" 1
	 "R Finger32" 1
	 "R Finger31" 1
	 "R Finger3" 1
	 "R Finger42" 1
	 "R Finger41" 1
	 "R Finger4" 1
	 "R Hand" 1
	 "R Forearm" 1
	 "R UpperArm" 1
	 "R Clavicle" 1
	 "A_Optic" 0
	 "A_Foregrip" 0
	 "A_GL" 0
	 "GL_Slide" 0
	 "GL_Trigger" 0
	 "GL_Round" 0
	 "GL_Casing" 0
	 "A_GLMuzzle" 0
	 "A_Suppressor" 0
	 "A_LaserFlashlight" 0
}

$weightlist "weights_base_dryfire_test" {
	 "b_root" 0
	 "b_ch_middle" 0
	 "b_ch_spine1" 0
	 "b_ch_spine2" 0
	 "b_ch_l_clavical" 0
	 "b_ch_l_upperarm" 1
	 "b_ch_l_forearm" 1
	 "b_ch_l_forearm_twist1" 0
	 "b_ch_l_forearm_twist2" 0
	 "b_ch_l_forearm_twist3" 1
	 "b_ch_l_forearm_twist4" 1
	 "b_ch_l_forearm_twist5" 1
	 "b_ch_l_forearm_twist6" 1
	 "b_ch_l_forearm_twist7" 1
	 "b_ch_l_hand" 0.5
	 "b_ch_l_finger_00" 0
	 "b_ch_l_finger_01" 0
	 "b_ch_l_finger_02" 0
	 "b_ch_l_finger_40" 0
	 "b_ch_l_finger_41" 0
	 "b_ch_l_finger_42" 0
	 "b_ch_l_finger_20" 0
	 "b_ch_l_finger_21" 0
	 "b_ch_l_finger_22" 0
	 "b_ch_l_finger_30" 0
	 "b_ch_l_finger_31" 0
	 "b_ch_l_finger_32" 0
	 "b_ch_l_finger_10" 0
	 "b_ch_l_finger_11" 0
	 "b_ch_l_finger_12" 0
	 "b_ch_r_clavical" 0
	 "b_ch_r_upperarm" 1
	 "b_ch_r_forearm" 1
	 "b_ch_r_forearm_twist1" 0
	 "b_ch_r_forearm_twist2" 0
	 "b_ch_r_forearm_twist3" 1
	 "b_ch_r_forearm_twist4" 1
	 "b_ch_r_forearm_twist5" 1
	 "b_ch_r_forearm_twist6" 1
	 "b_ch_r_forearm_twist7" 1
	 "b_ch_r_hand" 0.5
	 "b_ch_r_finger_00" 0
	 "b_ch_r_finger_01" 0
	 "b_ch_r_finger_02" 0
	 "b_ch_r_finger_10" 0
	 "b_ch_r_finger_11" 0
	 "b_ch_r_finger_12" 0
	 "b_ch_r_finger_20" 0
	 "b_ch_r_finger_21" 0
	 "b_ch_r_finger_22" 0
	 "b_ch_r_finger_30" 0
	 "b_ch_r_finger_31" 0
	 "b_ch_r_finger_32" 0
	 "b_ch_r_finger_40" 0
	 "b_ch_r_finger_41" 0
	 "b_ch_r_finger_42" 0
	 "b_camera" 0
	 "ik_hand_root" 0
	 "ik_hand_r" 0
	 "ik_hand_l" 0
	 "b_wpn" 0.5
	 "b_wpn_eject" 0
	 "b_wpn_mag" 0
	 "b_wpn_mag_b1" 0
	 "b_wpn_mag_b2" 0
	 "b_wpn_mag_follow" 0
	 "b_wpn_muzzle" 0
	 "b_wpn_slide" 0
	 "b_wpn_sliderelease" 0
	 "b_wpn_trigger" 0
	 "ik_hand_wpn_r" 0.5
	 "ik_hand_wpn_l" 0.5
	 "b_wpn_barrel" 0
	 "L ForeTwist" 0
	 "L ForeTwist1" 0
	 "L ForeTwist2" 1
	 "L ForeTwist3" 1
	 "L ForeTwist4" 1
	 "L ForeTwist5" 1
	 "L ForeTwist6" 1
	 "L Finger02" 0
	 "L Finger01" 0
	 "L Finger0" 0
	 "L Finger42" 0
	 "L Finger41" 0
	 "L Finger4" 0
	 "L Finger22" 0
	 "L Finger21" 0
	 "L Finger2" 0
	 "L Finger32" 0
	 "L Finger31" 0
	 "L Finger3" 0
	 "L Finger12" 0
	 "L Finger11" 0
	 "L Finger1" 0
	 "L Hand" 0.5
	 "L Forearm" 1
	 "L UpperArm" 1
	 "L Clavicle" 0
	 "R ForeTwist" 0
	 "R ForeTwist1" 0
	 "R ForeTwist2" 1
	 "R ForeTwist3" 1
	 "R ForeTwist4" 1
	 "R ForeTwist5" 1
	 "R ForeTwist6" 1
	 "R Finger02" 0
	 "R Finger01" 0
	 "R Finger0" 0
	 "R Finger12" 0
	 "R Finger11" 0
	 "R Finger1" 0
	 "R Finger22" 0
	 "R Finger21" 0
	 "R Finger2" 0
	 "R Finger32" 0
	 "R Finger31" 0
	 "R Finger3" 0
	 "R Finger42" 0
	 "R Finger41" 0
	 "R Finger4" 0
	 "R Hand" 0.5
	 "R Forearm" 1
	 "R UpperArm" 1
	 "R Clavicle" 0
	 "A_Optic" 0
	 "A_Foregrip" 0
	 "A_GL" 0
	 "GL_Slide" 0
	 "GL_Trigger" 0
	 "GL_Round" 0
	 "GL_Casing" 0
	 "A_GLMuzzle" 0
	 "A_Suppressor" 0
	 "A_LaserFlashlight" 0
}

$weightlist "weights_base_down_test" {
	 "b_root" 0
	 "b_ch_middle" 0
	 "b_ch_spine1" 0
	 "b_ch_spine2" 0
	 "b_ch_l_clavical" 1
	 "b_ch_l_upperarm" 1
	 "b_ch_l_forearm" 1
	 "b_ch_l_forearm_twist1" 1
	 "b_ch_l_forearm_twist2" 1
	 "b_ch_l_forearm_twist3" 1
	 "b_ch_l_forearm_twist4" 1
	 "b_ch_l_forearm_twist5" 1
	 "b_ch_l_forearm_twist6" 1
	 "b_ch_l_forearm_twist7" 1
	 "b_ch_l_hand" 1
	 "b_ch_l_finger_00" 0
	 "b_ch_l_finger_01" 0
	 "b_ch_l_finger_02" 0
	 "b_ch_l_finger_40" 0
	 "b_ch_l_finger_41" 0
	 "b_ch_l_finger_42" 0
	 "b_ch_l_finger_20" 0
	 "b_ch_l_finger_21" 0
	 "b_ch_l_finger_22" 0
	 "b_ch_l_finger_30" 0
	 "b_ch_l_finger_31" 0
	 "b_ch_l_finger_32" 0
	 "b_ch_l_finger_10" 0
	 "b_ch_l_finger_11" 0
	 "b_ch_l_finger_12" 0
	 "b_ch_r_clavical" 1
	 "b_ch_r_upperarm" 1
	 "b_ch_r_forearm" 1
	 "b_ch_r_forearm_twist1" 1
	 "b_ch_r_forearm_twist2" 1
	 "b_ch_r_forearm_twist3" 1
	 "b_ch_r_forearm_twist4" 1
	 "b_ch_r_forearm_twist5" 1
	 "b_ch_r_forearm_twist6" 1
	 "b_ch_r_forearm_twist7" 1
	 "b_ch_r_hand" 1
	 "b_ch_r_finger_00" 0
	 "b_ch_r_finger_01" 0
	 "b_ch_r_finger_02" 0
	 "b_ch_r_finger_10" 0
	 "b_ch_r_finger_11" 0
	 "b_ch_r_finger_12" 0
	 "b_ch_r_finger_20" 0
	 "b_ch_r_finger_21" 0
	 "b_ch_r_finger_22" 0
	 "b_ch_r_finger_30" 0
	 "b_ch_r_finger_31" 0
	 "b_ch_r_finger_32" 0
	 "b_ch_r_finger_40" 0
	 "b_ch_r_finger_41" 0
	 "b_ch_r_finger_42" 0
	 "b_camera" 0
	 "ik_hand_root" 0
	 "ik_hand_r" 0
	 "ik_hand_l" 0
	 "b_wpn" 1
	 "b_wpn_eject" 0
	 "b_wpn_mag" 0
	 "b_wpn_mag_b1" 0
	 "b_wpn_mag_b2" 0
	 "b_wpn_mag_follow" 0
	 "b_wpn_muzzle" 0
	 "b_wpn_slide" 0
	 "b_wpn_sliderelease" 0
	 "b_wpn_trigger" 0
	 "ik_hand_wpn_r" 1
	 "ik_hand_wpn_l" 1
	 "b_wpn_barrel" 0
	 "L ForeTwist" 1
	 "L ForeTwist1" 1
	 "L ForeTwist2" 1
	 "L ForeTwist3" 1
	 "L ForeTwist4" 1
	 "L ForeTwist5" 1
	 "L ForeTwist6" 1
	 "L Finger02" 0
	 "L Finger01" 0
	 "L Finger0" 0
	 "L Finger42" 0
	 "L Finger41" 0
	 "L Finger4" 0
	 "L Finger22" 0
	 "L Finger21" 0
	 "L Finger2" 0
	 "L Finger32" 0
	 "L Finger31" 0
	 "L Finger3" 0
	 "L Finger12" 0
	 "L Finger11" 0
	 "L Finger1" 0
	 "L Hand" 1
	 "L Forearm" 1
	 "L UpperArm" 1
	 "L Clavicle" 1
	 "R ForeTwist" 1
	 "R ForeTwist1" 1
	 "R ForeTwist2" 1
	 "R ForeTwist3" 1
	 "R ForeTwist4" 1
	 "R ForeTwist5" 1
	 "R ForeTwist6" 1
	 "R Finger02" 0
	 "R Finger01" 0
	 "R Finger0" 0
	 "R Finger12" 0
	 "R Finger11" 0
	 "R Finger1" 0
	 "R Finger22" 0
	 "R Finger21" 0
	 "R Finger2" 0
	 "R Finger32" 0
	 "R Finger31" 0
	 "R Finger3" 0
	 "R Finger42" 0
	 "R Finger41" 0
	 "R Finger4" 0
	 "R Hand" 1
	 "R Forearm" 1
	 "R UpperArm" 1
	 "R Clavicle" 1
	 "A_Optic" 0
	 "A_Foregrip" 0
	 "A_GL" 0
	 "GL_Slide" 0
	 "GL_Trigger" 0
	 "GL_Round" 0
	 "GL_Casing" 0
	 "A_GLMuzzle" 0
	 "A_Suppressor" 0
	 "A_LaserFlashlight" 0
}

$weightlist "weights_delta_trigger" {
	 "b_root" 0
	 "b_ch_middle" 0
	 "b_ch_spine1" 0
	 "b_ch_spine2" 0
	 "b_ch_l_clavical" 0
	 "b_ch_l_upperarm" 0
	 "b_ch_l_forearm" 0
	 "b_ch_l_forearm_twist1" 0
	 "b_ch_l_forearm_twist2" 0
	 "b_ch_l_forearm_twist3" 0
	 "b_ch_l_forearm_twist4" 0
	 "b_ch_l_forearm_twist5" 0
	 "b_ch_l_forearm_twist6" 0
	 "b_ch_l_forearm_twist7" 0
	 "b_ch_l_hand" 0
	 "b_ch_l_finger_00" 0
	 "b_ch_l_finger_01" 0
	 "b_ch_l_finger_02" 0
	 "b_ch_l_finger_40" 0
	 "b_ch_l_finger_41" 0
	 "b_ch_l_finger_42" 0
	 "b_ch_l_finger_20" 0
	 "b_ch_l_finger_21" 0
	 "b_ch_l_finger_22" 0
	 "b_ch_l_finger_30" 0
	 "b_ch_l_finger_31" 0
	 "b_ch_l_finger_32" 0
	 "b_ch_l_finger_10" 0
	 "b_ch_l_finger_11" 0
	 "b_ch_l_finger_12" 0
	 "b_ch_r_clavical" 0
	 "b_ch_r_upperarm" 0
	 "b_ch_r_forearm" 0
	 "b_ch_r_forearm_twist1" 0
	 "b_ch_r_forearm_twist2" 0
	 "b_ch_r_forearm_twist3" 0
	 "b_ch_r_forearm_twist4" 0
	 "b_ch_r_forearm_twist5" 0
	 "b_ch_r_forearm_twist6" 0
	 "b_ch_r_forearm_twist7" 0
	 "b_ch_r_hand" 0
	 "b_ch_r_finger_00" 0
	 "b_ch_r_finger_01" 0
	 "b_ch_r_finger_02" 0
	 "b_ch_r_finger_10" 0
	 "b_ch_r_finger_11" 0.6
	 "b_ch_r_finger_12" 0.6
	 "b_ch_r_finger_20" 0
	 "b_ch_r_finger_21" 0
	 "b_ch_r_finger_22" 0
	 "b_ch_r_finger_30" 0
	 "b_ch_r_finger_31" 0
	 "b_ch_r_finger_32" 0
	 "b_ch_r_finger_40" 0
	 "b_ch_r_finger_41" 0
	 "b_ch_r_finger_42" 0
	 "b_camera" 0
	 "ik_hand_root" 0
	 "ik_hand_r" 0
	 "ik_hand_l" 0
	 "b_wpn" 0
	 "b_wpn_eject" 0
	 "b_wpn_mag" 0
	 "b_wpn_mag_b1" 0
	 "b_wpn_mag_b2" 0
	 "b_wpn_mag_follow" 0
	 "b_wpn_muzzle" 0
	 "b_wpn_slide" 0
	 "b_wpn_sliderelease" 0
	 "b_wpn_trigger" 0.6
	 "ik_hand_wpn_r" 0
	 "ik_hand_wpn_l" 0
	 "b_wpn_barrel" 0
	 "L ForeTwist" 0
	 "L ForeTwist1" 0
	 "L ForeTwist2" 0
	 "L ForeTwist3" 0
	 "L ForeTwist4" 0
	 "L ForeTwist5" 0
	 "L ForeTwist6" 0
	 "L Finger02" 0
	 "L Finger01" 0
	 "L Finger0" 0
	 "L Finger42" 0
	 "L Finger41" 0
	 "L Finger4" 0
	 "L Finger22" 0
	 "L Finger21" 0
	 "L Finger2" 0
	 "L Finger32" 0
	 "L Finger31" 0
	 "L Finger3" 0
	 "L Finger12" 0
	 "L Finger11" 0
	 "L Finger1" 0
	 "L Hand" 0
	 "L Forearm" 0
	 "L UpperArm" 0
	 "L Clavicle" 0
	 "R ForeTwist" 0
	 "R ForeTwist1" 0
	 "R ForeTwist2" 0
	 "R ForeTwist3" 0
	 "R ForeTwist4" 0
	 "R ForeTwist5" 0
	 "R ForeTwist6" 0
	 "R Finger02" 0
	 "R Finger01" 0
	 "R Finger0" 0
	 "R Finger12" 0.6
	 "R Finger11" 0.6
	 "R Finger1" 0
	 "R Finger22" 0
	 "R Finger21" 0
	 "R Finger2" 0
	 "R Finger32" 0
	 "R Finger31" 0
	 "R Finger3" 0
	 "R Finger42" 0
	 "R Finger41" 0
	 "R Finger4" 0
	 "R Hand" 0
	 "R Forearm" 0
	 "R UpperArm" 0
	 "R Clavicle" 0
	 "A_Optic" 0
	 "A_Foregrip" 0
	 "A_GL" 0
	 "GL_Slide" 0
	 "GL_Trigger" 0
	 "GL_Round" 0
	 "GL_Casing" 0
	 "A_GLMuzzle" 0
	 "A_Suppressor" 0
	 "A_LaserFlashlight" 0
}

$animation "a_idle_empty_corrective_animation" "v_beretta_anims\a_idle_empty_corrective_animation.smd" {
}

$animation "a_delta_iron_corrective_animation" "v_beretta_anims\a_delta_iron_corrective_animation.smd" {
}

$animation "anim_delta_seq_base_fire_corrective_animation" "v_beretta_anims\anim_delta_seq_base_fire_corrective_animation.smd" {
}

$animation "anim_delta_seq_base_fire2_corrective_animation" "v_beretta_anims\anim_delta_seq_base_fire2_corrective_animation.smd" {
}

$animation "anim_delta_seq_base_fire3_corrective_animation" "v_beretta_anims\anim_delta_seq_base_fire3_corrective_animation.smd" {
}

$animation "anim_delta_seq_iron_fire_corrective_animation" "v_beretta_anims\anim_delta_seq_iron_fire_corrective_animation.smd" {
}

$animation "anim_delta_seq_iron_fire2_corrective_animation" "v_beretta_anims\anim_delta_seq_iron_fire2_corrective_animation.smd" {
}

$animation "anim_delta_seq_iron_fire3_corrective_animation" "v_beretta_anims\anim_delta_seq_iron_fire3_corrective_animation.smd" {
}

$animation "@base_draw_test_corrective_animation" "v_beretta_anims\@base_draw_test_corrective_animation.smd" {
}

$animation "@base_holster_test_corrective_animation" "v_beretta_anims\@base_holster_test_corrective_animation.smd" {
}

$animation "@base_dryfire_test_corrective_animation" "v_beretta_anims\@base_dryfire_test_corrective_animation.smd" {
}

$animation "@base_down_test_corrective_animation" "v_beretta_anims\@base_down_test_corrective_animation.smd" {
}

$animation "a_delta_hidebullets_corrective_animation" "v_beretta_anims\a_delta_hidebullets_corrective_animation.smd" {
}

$animation "@delta_trigger_corrective_animation" "v_beretta_anims\@delta_trigger_corrective_animation.smd" {
}

$animation "a_idle" "v_beretta_anims\a_idle.smd" {
	fps 30
	loop
}

$animation "a_idle_empty" "v_beretta_anims\a_idle_empty.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_idle_empty_corrective_animation" 0
	weightlist "weights_empty_layer"
}

$animation "a_delta_iron" "v_beretta_anims\a_delta_iron.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_delta_iron_corrective_animation" 0
}

$animation "a_draw_test" "v_beretta_anims\a_draw_test.smd" {
	fps 30
}

$animation "a_holster_test" "v_beretta_anims\a_holster_test.smd" {
	fps 30
}

$animation "a_down_test" "v_beretta_anims\a_down_test.smd" {
	fps 30
	loop
}

$animation "a_crawl_test" "v_beretta_anims\a_crawl_test.smd" {
	fps 30
	loop
}

$animation "a_fire_test" "v_beretta_anims\a_fire_test.smd" {
	fps 30
}

$animation "a_fire_iron_test" "v_beretta_anims\a_fire_iron_test.smd" {
	fps 30
}

$animation "a_dryfire_test" "v_beretta_anims\a_dryfire_test.smd" {
	fps 30
}

$animation "anim_delta_seq_base_fire" "v_beretta_anims\anim_delta_seq_base_fire.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "anim_delta_seq_base_fire_corrective_animation" 0
}

$animation "anim_blank_seq_base_fire" "v_beretta_anims\anim_blank_seq_base_fire.smd" {
	fps 30
	weightlist "weights_seq_base_fire"
}

$animation "anim_delta_seq_base_fire2" "v_beretta_anims\anim_delta_seq_base_fire2.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "anim_delta_seq_base_fire2_corrective_animation" 0
}

$animation "anim_blank_seq_base_fire2" "v_beretta_anims\anim_blank_seq_base_fire2.smd" {
	fps 30
	weightlist "weights_seq_base_fire"
}

$animation "anim_delta_seq_base_fire3" "v_beretta_anims\anim_delta_seq_base_fire3.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "anim_delta_seq_base_fire3_corrective_animation" 0
}

$animation "anim_blank_seq_base_fire3" "v_beretta_anims\anim_blank_seq_base_fire3.smd" {
	fps 30
	weightlist "weights_seq_base_fire"
}

$animation "anim_delta_seq_iron_fire" "v_beretta_anims\anim_delta_seq_iron_fire.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "anim_delta_seq_iron_fire_corrective_animation" 0
}

$animation "anim_blank_seq_iron_fire" "v_beretta_anims\anim_blank_seq_iron_fire.smd" {
	fps 30
	weightlist "weights_seq_base_fire"
}

$animation "anim_delta_seq_iron_fire2" "v_beretta_anims\anim_delta_seq_iron_fire2.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "anim_delta_seq_iron_fire2_corrective_animation" 0
}

$animation "anim_blank_seq_iron_fire2" "v_beretta_anims\anim_blank_seq_iron_fire2.smd" {
	fps 30
	weightlist "weights_seq_base_fire"
}

$animation "anim_delta_seq_iron_fire3" "v_beretta_anims\anim_delta_seq_iron_fire3.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "anim_delta_seq_iron_fire3_corrective_animation" 0
}

$animation "anim_blank_seq_iron_fire3" "v_beretta_anims\anim_blank_seq_iron_fire3.smd" {
	fps 30
	weightlist "weights_seq_base_fire"
}

$animation "a_delta_hidebullets" "v_beretta_anims\a_delta_hidebullets.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_delta_hidebullets_corrective_animation" 0
}

$sequence "menu" {
	"v_beretta_anims\menu.smd"
	activity "ACT_VM_MENU" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "empty_layer" {
	"a_idle_empty"
	delta
	fadein 0.2
	fadeout 0.2
	addlayer "delta_hidebullets"
}

$sequence "idle" {
	"v_beretta_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "delta_iron" {
	"a_delta_iron"
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "base_idle" {
	"a_idle"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
}

$sequence "base_ready" {
	"v_beretta_anims\base_ready.smd"
	activity "ACT_VM_READY" 1
	{ event 5004 0 "Universal.PistolDraw" }
	{ event 5004 55 "Weapon_M9.Magin" }
	{ event 5004 62 "Weapon_M9.MagHit" }
	{ event 5004 87 "Weapon_M9.Boltback" }
	{ event 5004 97 "Weapon_M9.Boltrelease" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 36
}

$sequence "base_draw" {
	"a_draw_test"
	activity "ACT_VM_DRAW" 1
	{ event 5004 0 "Universal.PistolDraw" }
	fadein 0.2
	fadeout 0.2
	addlayer "base_draw_test"
}

$sequence "base_holster" {
	"a_holster_test"
	activity "ACT_VM_HOLSTER" 1
	{ event 5004 0 "Universal.PistolHolster" }
	fadein 0.2
	fadeout 0.2
	addlayer "base_holster_test"
}

$sequence "base_down" {
	"a_down_test"
	activity "ACT_VM_DOWN" 1
	fadein 0.2
	fadeout 0.2
	addlayer "base_down_test"
}

$sequence "base_crawl" {
	"a_crawl_test"
	activity "ACT_VM_CRAWL" 1
	{ event 5004 0 "Universal.RightCrawl" }
	{ event 5004 22 "Universal.LeftCrawl" }
	fadein 0.2
	fadeout 0.2
	addlayer "base_crawl_test"
}

$sequence "base_fire" {
	"a_fire_test"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "" }
	{ event AE_CL_CREATE_PARTICLE_BRASS 0 "" }
	fadein 0.2
	fadeout 0.2
	addlayer "seq_base_fire"
	blendlayer "delta_trigger" 0 1 10 10
	blendlayer "delta_slideback" 1 2 3 4
	snap
}

$sequence "base_fire2" {
	"a_fire_test"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "" }
	{ event AE_CL_CREATE_PARTICLE_BRASS 0 "" }
	fadein 0.2
	fadeout 0.2
	addlayer "seq_base_fire2"
	blendlayer "delta_trigger" 0 1 10 10
	blendlayer "delta_slideback" 1 2 3 4
	snap
}

$sequence "base_fire3" {
	"a_fire_test"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "" }
	{ event AE_CL_CREATE_PARTICLE_BRASS 0 "" }
	fadein 0.2
	fadeout 0.2
	addlayer "seq_base_fire3"
	blendlayer "delta_trigger" 0 1 10 10
	blendlayer "delta_slideback" 1 2 3 4
	snap
}

$sequence "base_firelast" {
	"a_fire_test"
	activity "ACT_VM_SHOOTLAST" 1
	{ event AE_MUZZLEFLASH 0 "" }
	{ event AE_CL_CREATE_PARTICLE_BRASS 0 "" }
	fadein 0.2
	fadeout 0.2
	addlayer "seq_base_fire"
	blendlayer "delta_trigger" 0 1 10 10
	blendlayer "delta_slideback" 1 2 100 100
	snap
}

$sequence "base_dryfire" {
	"a_dryfire_test"
	activity "ACT_VM_DRYFIRE" 1
	{ event 5004 0 "Weapon_M9.Empty" }
	fadein 0.2
	fadeout 0.2
	addlayer "base_dryfire_test"
	addlayer "empty_layer"
	blendlayer "delta_trigger" 0 1 10 10
}

$sequence "base_reload" {
	"v_beretta_anims\base_reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 15 "Weapon_M9.Magrelease" }
	{ event 5004 20 "Weapon_M9.Magout" }
	{ event 5004 70 "Weapon_M9.Magin" }
	{ event 5004 78 "Weapon_M9.MagHit" }
	{ event 46 49 "" }
	fadein 0.2
	fadeout 0.2
	fps 36
}

$sequence "base_reloadempty" {
	"v_beretta_anims\base_reloadempty.smd"
	activity "ACT_VM_RELOADEMPTY" 1
	{ event 5004 10 "Weapon_M9.Magrelease" }
	{ event 5004 15 "Weapon_M9.Magout" }
	{ event 5004 45 "Weapon_M9.Magin" }
	{ event 5004 48 "Weapon_M9.MagHit" }
	{ event 46 49 "" }
	{ event 5004 75 "Weapon_M9.Boltback" }
	{ event 5004 76 "Weapon_M9.Boltrelease" }
	fadein 0.2
	fadeout 0.2
	blendlayer "delta_hidebullets" -1 -1 26 26
	fps 38
}

$sequence "base_sprint" {
	"v_beretta_anims\base_sprint.smd"
	activity "ACT_VM_SPRINT" 1
	fadein 0.2
	fadeout 0.2
	fps 25
	loop
}

$sequence "empty_idle" {
	"a_idle"
	activity "ACT_VM_IDLE_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	addlayer "empty_layer"
}

$sequence "empty_draw" {
	"a_draw_test"
	activity "ACT_VM_DRAW_EMPTY" 1
	{ event 5004 0 "Universal.PistolDraw" }
	fadein 0.2
	fadeout 0.2
	addlayer "base_draw_test"
	addlayer "empty_layer"
}

$sequence "empty_holster" {
	"a_holster_test"
	activity "ACT_VM_HOLSTER_EMPTY" 1
	{ event 5004 0 "Universal.PistolHolster" }
	fadein 0.2
	fadeout 0.2
	addlayer "base_holster_test"
	addlayer "empty_layer"
}

$sequence "empty_down" {
	"a_down_test"
	activity "ACT_VM_DOWN_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	addlayer "base_down_test"
	addlayer "empty_layer"
}

$sequence "empty_crawl" {
	"a_crawl_test"
	activity "ACT_VM_CRAWL_EMPTY" 1
	{ event 5004 0 "Universal.RightCrawl" }
	{ event 5004 22 "Universal.LeftCrawl" }
	fadein 0.2
	fadeout 0.2
	addlayer "base_crawl_test"
	addlayer "empty_layer"
}

$sequence "empty_sprint" {
	"v_beretta_anims\empty_sprint.smd"
	activity "ACT_VM_SPRINT_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	addlayer "empty_layer"
	fps 25
	loop
}

$sequence "iron_down" {
	"a_down_test"
	activity "ACT_VM_IDOWN" 1
	fadein 0.2
	fadeout 0.2
	addlayer "base_down_test"
}

$sequence "empty_iron_down" {
	"a_down_test"
	activity "ACT_VM_IDOWN_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	addlayer "base_down_test"
	addlayer "empty_layer"
}

$sequence "iron_fire_1" {
	"a_fire_iron_test"
	activity "ACT_VM_ISHOOT" 1
	{ event AE_MUZZLEFLASH 0 "" }
	{ event AE_CL_CREATE_PARTICLE_BRASS 0 "" }
	fadein 0.2
	fadeout 0.2
	addlayer "seq_iron_fire"
	blendlayer "delta_trigger" 0 1 10 10
	blendlayer "delta_slideback" 1 2 3 4
	snap
}

$sequence "iron_fire_2" {
	"a_fire_iron_test"
	activity "ACT_VM_ISHOOT" 1
	{ event AE_MUZZLEFLASH 0 "" }
	{ event AE_CL_CREATE_PARTICLE_BRASS 0 "" }
	fadein 0.2
	fadeout 0.2
	addlayer "seq_iron_fire2"
	blendlayer "delta_trigger" 0 1 10 10
	blendlayer "delta_slideback" 1 2 3 4
	snap
}

$sequence "iron_fire_3" {
	"a_fire_iron_test"
	activity "ACT_VM_ISHOOT" 1
	{ event AE_MUZZLEFLASH 0 "" }
	{ event AE_CL_CREATE_PARTICLE_BRASS 0 "" }
	fadein 0.2
	fadeout 0.2
	addlayer "seq_iron_fire3"
	blendlayer "delta_trigger" 0 1 10 10
	blendlayer "delta_slideback" 1 2 3 4
	snap
}

$sequence "iron_firelast" {
	"a_fire_iron_test"
	activity "ACT_VM_ISHOOT_LAST" 1
	{ event AE_MUZZLEFLASH 0 "" }
	{ event AE_CL_CREATE_PARTICLE_BRASS 0 "" }
	fadein 0.2
	fadeout 0.2
	addlayer "seq_iron_fire"
	blendlayer "delta_trigger" 0 1 10 10
	blendlayer "delta_slideback" 1 2 100 100
	snap
}

$sequence "iron_dryfire" {
	"a_dryfire_test"
	activity "ACT_VM_ISHOOTDRY" 1
	{ event 5004 0 "Weapon_M9.Empty" }
	fadein 0.2
	fadeout 0.2
	addlayer "base_dryfire_test"
	addlayer "empty_layer"
	blendlayer "delta_trigger" 0 1 10 10
}

$sequence "iron_empty" {
	"a_idle"
	activity "ACT_VM_IIDLE_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	addlayer "empty_layer"
}

$sequence "seq_delta_seq_base_fire" {
	"anim_delta_seq_base_fire"
	predelta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "seq_base_fire" {
	"anim_blank_seq_base_fire"
	fadein 0.2
	fadeout 0.2
	addlayer "seq_delta_seq_base_fire"
}

$sequence "seq_delta_seq_base_fire2" {
	"anim_delta_seq_base_fire2"
	predelta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "seq_base_fire2" {
	"anim_blank_seq_base_fire2"
	fadein 0.2
	fadeout 0.2
	addlayer "seq_delta_seq_base_fire2"
}

$sequence "seq_delta_seq_base_fire3" {
	"anim_delta_seq_base_fire3"
	predelta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "seq_base_fire3" {
	"anim_blank_seq_base_fire3"
	fadein 0.2
	fadeout 0.2
	addlayer "seq_delta_seq_base_fire3"
}

$sequence "seq_delta_seq_iron_fire" {
	"anim_delta_seq_iron_fire"
	predelta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "seq_iron_fire" {
	"anim_blank_seq_iron_fire"
	fadein 0.2
	fadeout 0.2
	addlayer "seq_delta_seq_iron_fire"
}

$sequence "seq_delta_seq_iron_fire2" {
	"anim_delta_seq_iron_fire2"
	predelta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "seq_iron_fire2" {
	"anim_blank_seq_iron_fire2"
	fadein 0.2
	fadeout 0.2
	addlayer "seq_delta_seq_iron_fire2"
}

$sequence "seq_delta_seq_iron_fire3" {
	"anim_delta_seq_iron_fire3"
	predelta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "seq_iron_fire3" {
	"anim_blank_seq_iron_fire3"
	fadein 0.2
	fadeout 0.2
	addlayer "seq_delta_seq_iron_fire3"
}

$sequence "base_draw_test" {
	"v_beretta_anims\base_draw_test.smd"
	predelta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@base_draw_test_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_base_draw_test"
}

$sequence "base_holster_test" {
	"v_beretta_anims\base_holster_test.smd"
	predelta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@base_holster_test_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_base_draw_test"
}

$sequence "base_crawl_test" {
	"v_beretta_anims\base_crawl_test.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_base_crawl_test"
}

$sequence "base_dryfire_test" {
	"v_beretta_anims\base_dryfire_test.smd"
	predelta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@base_dryfire_test_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_base_dryfire_test"
}

$sequence "base_down_test" {
	"v_beretta_anims\base_down_test.smd"
	predelta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@base_down_test_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_base_down_test"
}

$sequence "delta_hidebullets" {
	"a_delta_hidebullets"
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "delta_slideback" {
	"a_idle_empty"
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "delta_trigger" {
	"v_beretta_anims\delta_trigger.smd"
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@delta_trigger_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_delta_trigger"
}
