att.PrintName = "14.5\" RUCAR 225 Barrel"
att.Description = "Wooden handguard used on the Russian RUCAR 255 rifle. The heavier material allows for lower recoil than most handguards of similar length."

att.Icon = Material("entities/att/acwatt_ud_m16_barrel_adar.png", "smooth mips")

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "14.5\" ADAR 2-15 Barrel"
end

att.Desc_Pros = {
    --"uc.auto"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_barrel"

att.AutoStats = true
-- needs balancing
--att.Mult_SightTime = 0.85
att.Mult_SightedSpeedMult = 1.1
att.Mult_HipDispersion = 0.85

att.Mult_Recoil = 1.15
att.Mult_AccuracyMOA = 1.5
att.Mult_Range = 0.75
att.Mult_RPM = 1.111 --0.945
att.Mult_Sway = 0.8

att.Add_BarrelLength = -4
att.Mult_PhysBulletMuzzleVelocity = 0.833333

att.LHIK = true
att.Model = "models/weapons/arccw/atts/adar_lhik.mdl"

att.ActivateElements = {"hg_adar", "barrel_14", "fs_adar", "mount_14"}