att.PrintName = "20\" AMSAW Barrel"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "20\" Colt LMG Barrel"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Heavy duty handguard with built-in bipod and foregrip, sporting improved durability and heat dissipation capabilities for sustained automatic fire."
att.Desc_Pros = {}
att.Desc_Cons = {
    "ud.noubs"
}
att.Desc_Neutrals = {}
att.Slot = "ud_m16_barrel"

att.AutoStats = true

att.Mult_SpeedMult = 0.925
att.Mult_SightedSpeedMult = 0.75
att.Mult_Sway = 2
att.Mult_SightTime = 1.25

att.Mult_RPM = 0.915
att.Mult_Recoil = 0.75
att.Mult_RecoilSide = 0.5

--att.Mult_HeatDelayTime = 0.5
--att.Mult_HeatDissipation = 1.5
att.Mult_MalfunctionMean = 1.5

att.Bipod = true
att.Override_InBipodPos = Vector(-10, 0, -4)
att.Mult_BipodDispersion = 0.3
att.Mult_BipodRecoil = 0.3

att.ActivateElements = {"ud_m16_barrel_lmg"}
att.GivesFlags = {"m16_lmg"}

att.LHIK = true

att.Model = "models/weapons/arccw/atts/lmg_lhik.mdl"
att.ModelOffset = Vector(2.2, 0, 0)
