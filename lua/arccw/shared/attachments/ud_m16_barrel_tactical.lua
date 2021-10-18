att.PrintName = "11.5\" CAR-4 RIS Barrel"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "11.5\" M4A1 RIS Barrel"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Handguard from the SOPMOD I kit, giving the rifle the ability to better take the attachment of tactical devices or foregrips."
att.Desc_Pros = {
    --"uc.auto"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_barrel"

att.AutoStats = true

att.Mult_SightTime = 0.85
att.Mult_SightedSpeedMult = 1.1

att.Mult_Recoil = 1.1
att.Mult_AccuracyMOA = 1.5
att.Mult_Range = 0.9
att.Mult_RPM = 1.111 --0.945
att.Mult_Sway = 0.85

att.Add_BarrelLength = -4

--[[]
att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}
]]

att.LHIK = true

att.Model = "models/weapons/arccw/atts/tactical_lhik.mdl"

att.ActivateElements = {"ud_m16_barrel_tactical"}