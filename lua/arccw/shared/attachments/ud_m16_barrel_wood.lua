att.PrintName = "20\" \"Service Rifle\" Barrel"

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Custom wooden handguard created by independent gunsmiths from the state of California. Its heft gives it some extra stability."
att.Desc_Pros = {
}
att.Desc_Cons = {
    --"ud.semionly"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_barrel"

att.AutoStats = true

att.Mult_Sway = 0.85
att.Mult_RecoilSide = 0.85
att.Mult_Recoil = 0.95

att.Mult_SightedSpeedMult = 0.95
att.Mult_ShootSpeedMult = 0.95

-- att.Override_Firemodes_Priority = -1
-- att.Override_Firemodes = {
--     {
--         Mode = 1,
--     },
--     {
--         Mode = 0
--     }
-- }

att.LHIK = true

att.Model = "models/weapons/arccw/atts/wood_lhik.mdl"

att.ActivateElements = {"ud_m16_wood_barrel"}
--att.ExcludeFlags = {"m16_auto"}
--att.GivesFlags = {"m16_noauto"}