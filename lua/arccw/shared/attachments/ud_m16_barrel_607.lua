att.PrintName = "14.5\" Prototype Barrel"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "14.5\" M605 Barrel"
end

att.Icon = Material("entities/att/acwatt_ud_m16_barrel_classic.png", "smooth mips")
att.Description = "Classic triangular handguard. Replaced by the more iconic and easier to grip ribbed handguard, this barrel can nevertheless withstand automatic fire a lot better."
att.Desc_Pros = {
}
att.Desc_Cons = {
    --"uc.semionly"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_barrel"

att.AutoStats = true

att.Mult_Sway = 1.10
att.Mult_RecoilSide = 1.15
att.Mult_Recoil = 1.10
att.Mult_RPM = 1.242

--att.Mult_SightedSpeedMult = 1.025
--att.Mult_ShootSpeedMult = 1.025

att.LHIK = true

att.Model = "models/weapons/arccw/atts/classic_lhik.mdl"

att.ActivateElements = {"hg_m605"}