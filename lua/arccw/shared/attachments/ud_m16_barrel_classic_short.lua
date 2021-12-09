att.PrintName = "14.5\" Compact Prototype Barrel"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "14.5\" M605 Barrel"
end

att.Icon = Material("entities/att/acwatt_ud_m16_barrel_classic_short.png", "smooth mips")
att.Description = "Classic full-length triangular handguard on a carbine length barrel. It doesn't place much stress on the hand, but is quite difficult to control in full auto."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_barrel"

att.AutoStats = true

att.Mult_SightTime = 0.75
att.Mult_SightedSpeedMult = 1.1
att.Mult_HipDispersion = 0.85

att.Mult_Recoil = 1.35
att.Mult_RecoilSide = 1.35
att.Mult_AccuracyMOA = 1.5
att.Mult_Range = 0.75
att.Mult_RPM = 1.111
att.Mult_Sway = 0.85

att.Add_BarrelLength = -4
att.Mult_PhysBulletMuzzleVelocity = 0.833333

--att.Mult_ShootSpeedMult = 1.05

att.LHIK = true

att.Model = "models/weapons/arccw/atts/classic_lhik.mdl"

att.ActivateElements = {"hg_m605"}