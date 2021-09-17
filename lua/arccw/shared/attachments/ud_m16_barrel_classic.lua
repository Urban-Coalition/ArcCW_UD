att.PrintName = "20\" Classic A1 Barrel"

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Classic triangular handguard from the M16A1. It was changed for a reason as it doesn't have as good of a grip as the A2 Ribbed Handguard, it however can withstand automatic fire much better than the new one."
att.Desc_Pros = {
}
att.Desc_Cons = {
    --"ud.semionly"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_barrel"

att.AutoStats = true

att.Mult_Sway = 1.10
att.Mult_RecoilSide = 1.15
att.Mult_Recoil = 1.10
att.Mult_RPM = 1.15

att.Mult_SightedSpeedMult = 1.025
att.Mult_ShootSpeedMult = 1.025

-- att.Override_Firemodes_Priority = -1
-- att.Override_Firemodes = {
--     {
--         Mode = 1,
--     },
--     {
--         Mode = 0
--     }
-- }

att.LHIK = false

att.Model = "models/weapons/arccw/atts/wood_lhik.mdl"

att.ActivateElements = {"ud_m16_classic_barrel"}
-- att.ExcludeFlags = {"m16_auto"}
-- att.GivesFlags = {"m16_noauto"}