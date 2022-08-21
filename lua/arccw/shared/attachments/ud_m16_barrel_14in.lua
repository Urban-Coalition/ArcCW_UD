att.PrintName = "14.5\" RAYCAR-1 Carbine Barrel"
if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "14.5\" M4 Carbine Barrel"
end

att.Icon = Material("entities/att/acwatt_ud_m16_barrel_14_5.png", "smooth mips")
att.AbbrevName = "14.5\" Carbine Barrel"
att.Description = "Carbine length barrel. Provides a small increase in firerate while maintaining respectable accuracy and range."
att.Slot = "ud_m16_blen"

att.AutoStats = true

att.Mult_SightTime = 0.85
att.Mult_SightedSpeedMult = 1.1
att.Mult_HipDispersion = 0.85

att.Mult_Recoil = 1.25
att.Mult_AccuracyMOA = 1.5
att.Mult_Range = 0.75
att.Mult_RPM = 1.111 --0.945
att.Mult_Sway = 0.85

att.Add_BarrelLength = -6
att.Mult_PhysBulletMuzzleVelocity = 0.833333

--att.LHIK = true
--att.Model = "models/weapons/arccw/atts/tactical_lhik.mdl"
att.DroppedModel = "models/items/boxsrounds.mdl"

att.ActivateElements = {"barrel_14","mount_14"}
att.GivesFlags = {"blen_14","barrel_short"}