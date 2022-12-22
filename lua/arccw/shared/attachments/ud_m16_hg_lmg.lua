att.PrintName = "AMSAW LMG Handguard"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Colt LMG Handguard"
end

att.AbbrevName = "LMG Handguard"
att.Icon = Material("entities/att/acwatt_ud_m16_hg_lmg.png", "smooth mips")
att.Description = "Heavy duty handguard with built-in bipod and foregrip, sporting improved durability and recoil control for sustained automatic fire."
att.Desc_Pros = {}
att.Desc_Cons = {
    "uc.noubs"
}
att.Desc_Neutrals = {}
att.Slot = "ud_m16_hg"

att.AutoStats = true

att.Mult_SpeedMult = 0.95
att.Mult_SightedSpeedMult = 0.8
att.Mult_Sway = 1.5
att.Mult_SightTime = 1.25

att.Mult_RPM = 0.915
att.Mult_Recoil = 0.7
att.Mult_RecoilSide = 0.5

att.Mult_MalfunctionMean = 2

att.Bipod = true
att.Mult_BipodDispersion = 0.2
att.Mult_BipodRecoil = 0.15

att.ActivateElements = {"hg_lmg"}
att.GivesFlags = {"m16_lmg","hg_no11"}
att.ExcludeFlags = {"blen_11"}

att.LHIK = true

att.Model = "models/weapons/arccw/atts/lmg_lhik.mdl"
att.ModelOffset = (Vector(0.41, 0, -1.63) - Vector(11.5, 2.8, -4.2)) + Vector(-0.1, 0, 0)
