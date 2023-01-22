att.PrintName = "AMCAR Waffle Stock"
att.AbbrevName = "Waffle Stock"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16 Waffle Stock"
end

att.Icon = Material("entities/att/acwatt_ud_m16_stock_waffle.png", "smooth mips")
att.Description = "Multi-position adjustable combat stock used on the M4 carbine. "
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = {"go_stock", "ud_m16_stock"}

att.Model = "models/weapons/arccw/atts/fesiug_stock_waffle.mdl"
att.ModelOffset = Vector(4, 0, 1.7)

att.AutoStats = true
att.SortOrder = 6

att.Mult_Sway = 1.25
att.Mult_SightedSpeedMult = 1.15

att.ActivateElements = {"stock_231_tube"}
