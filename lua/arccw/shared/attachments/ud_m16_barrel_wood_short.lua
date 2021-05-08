att.PrintName = "14\" CAR-4 Wood Barrel"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "14\" M603 Wood Barrel"
end

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Wooden handguard with short carbine barrel. No such official product has ever been made, so all examples are the result of individual gunsmiths. Performs identically to the M4 barrel."
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
att.Mult_RPM = 1.111 -- 0.945
att.Mult_Sway = 1.1

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

att.Model = "models/weapons/arccw/atts/wood_short_lhik.mdl"

att.ActivateElements = {"ud_m16_wood_short_barrel"}