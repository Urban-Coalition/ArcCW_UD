att.PrintName = "Express-12 Polymer Stock"
att.AbbrevName = "Polymer Stock"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Remington 870 Polymer Stock"
end

att.Icon = Material("entities/att/acwatt_ud_870_stock.png", "smooth mips")
att.Description = "Lightweight polymer stock."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_870_stock"

att.AutoStats = true

att.Mult_SightedSpeedMult = 1.1
att.Mult_SightTime = 0.9
att.Mult_Recoil = 1.15

att.ActivateElements = {"ud_870_stock_poly"}