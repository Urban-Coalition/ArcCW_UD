att.PrintName = "20\" Ex-12 Long Barrel"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "20\" R870 Long Barrel"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Extended barrel with ring sight. Reduces pellet spread and improves range."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_870_barrel"

att.AutoStats = true

att.Mult_AccuracyMOA = 0.8
att.Mult_Recoil = 0.8

att.Mult_Sway = 1.5
att.Mult_SightTime = 1.25
att.Mult_SpeedMult = 0.95

att.Add_BarrelLength = 4

att.ActivateElements = {"ud_870_barrel_long"}