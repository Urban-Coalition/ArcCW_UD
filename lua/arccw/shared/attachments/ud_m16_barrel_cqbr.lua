att.PrintName = "10.5\" AMCQR Barrel"


if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "10.5\" CAR-15 Barrel"
end

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Very short barrel and handguard. Technically classified as a submachine gun, this barrel offers relatively high fire rates at the cost of range."
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
att.Mult_SpeedMult = 1.025
att.Mult_SightedSpeedMult = 1.1

att.Mult_RPM = 1.176
att.Mult_Recoil = 1.5
att.Mult_AccuracyMOA = 2
att.Mult_Range = 0.8
att.Mult_Sway = 1.25

att.Add_BarrelLength = -6