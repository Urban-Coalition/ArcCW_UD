att.PrintName = "14.5\" CAR-4 Barrel"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "14.5\" M4 Carbine Barrel"
end

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Carbine length barrel with short handguard. Provides a small increase in firerate while maintaining respectable accuracy and range."
att.Desc_Pros = {
    --"ud.auto"
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

att.ActivateElements = {"ud_m16_cqbr_barrel"}