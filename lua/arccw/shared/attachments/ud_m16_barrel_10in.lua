att.PrintName = "10.5\" RAYCAR-2 Commando Barrel"
if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "10.5\" Colt Commando Barrel"
end

att.Icon = Material("entities/att/acwatt_ud_m16_barrel_10_5.png", "smooth mips")
att.AbbrevName = "10.5\" Commando Barrel"
att.Description = "Short barrel, technically classified as a submachine gun barrel. Offers high fire rates at the cost of range."
att.Slot = "ud_m16_blen"

att.AutoStats = true

att.Mult_SightTime = 0.85
att.Mult_SpeedMult = 1.025
att.Mult_SightedSpeedMult = 1.1
att.Mult_HipDispersion = 0.7

att.Mult_RPM = 1.15
att.Mult_Recoil = 1.5
att.Mult_AccuracyMOA = 2
att.Mult_Range = 0.5
att.Mult_Sway = 0.75

att.Add_BarrelLength = -10
att.Mult_PhysBulletMuzzleVelocity = 0.729167

--att.LHIK = true
--att.Model = "models/weapons/arccw/atts/tactical_lhik.mdl"
att.DroppedModel = "models/items/boxsrounds.mdl"

att.ActivateElements = {"barrel_11","mount_11"}
att.GivesFlags = {"blen_11","barrel_short", "patr1"}
att.ExcludeFlags = {"hg_no11"}