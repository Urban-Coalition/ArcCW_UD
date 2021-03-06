att.PrintName = "AMCAR SOPMOD Stock"
att.AbbrevName = "SOPMOD Stock"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16 SOPMOD Stock"
end

att.Icon = Material("entities/att/acwatt_ud_m16_stock_sopmod.png", "smooth mips")
att.Description = "Rebalance me!!!"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_stock"

att.Model = "models/weapons/arccw/atts/stock_sopmod.mdl"
att.ModelOffset = Vector(-0.5, 0, 0.40)
att.ModelScale = Vector(0.6, 0.6, 0.6)
att.OffsetAng = Angle(0, 0, 0)

att.AutoStats = true
att.SortOrder = 6

att.Mult_Sway = 1.25
att.Mult_SightedSpeedMult = 1.15

att.ActivateElements = {"stock_231_tube"}
