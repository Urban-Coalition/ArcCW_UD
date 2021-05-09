att.PrintName = "Ex-12 Polymer Stock"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "R870 Polymer Stock"
end

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Lightweight polymer stock."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_870_stock"

att.AutoStats = true

att.Mult_SightTime = 0.9
att.Mult_SpeedMult = 1.025
att.Mult_SightedSpeedMult = 1.1

att.Mult_Recoil = 1.25
att.Mult_Sway = 1.25

att.ActivateElements = {"ud_870_stock_poly"}