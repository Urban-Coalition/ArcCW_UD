att.PrintName = "20\" AMSAW Barrel"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "20\" Colt LMG Barrel"
end

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Heavy duty barrel and handguard with inbuilt bipod and foregrip, used on SAW variants of the rifle. Heavy and signficantly reduces fire rate, but is quite stable to fire and has superior cooling capabilities."
att.Desc_Pros = {
    "ud.bipod"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_barrel"

att.AutoStats = true

att.Mult_SpeedMult = 0.925
att.Mult_SightedSpeedMult = 0.75
att.Mult_Sway = 2

att.Mult_RPM = 0.926
att.Mult_Recoil = 0.75
att.Mult_RecoilSide = 0.5

att.Mult_HeatDelayTime = 0.5
att.Mult_HeatDissipation = 1.5

att.Bipod = true

att.ActivateElements = {"ud_m16_barrel_lmg"}
att.GivesFlags = {"m16_lmg"}

att.LHIK = true

att.Model = "models/weapons/arccw/atts/lmg_lhik.mdl"
