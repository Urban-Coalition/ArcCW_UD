att.PrintName = "AMCAR Waffle Stock"
att.AbbrevName = "Waffle Stock"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16 Waffle Stock"
end

att.Icon = Material("entities/att/acwatt_ud_m16_stock_waffle.png", "smooth mips")
att.Description = "Multi-position adjustable combat stock used on the M4 carbine. Has lower recoil than a standard carbine stock, but isn't as agile.\n\nToggling this stock modifies performance accordingly."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = {"go_stock", "ud_m16_stock"}

att.Model = "models/weapons/arccw/atts/fesiug_stock_waffle.mdl"
att.ModelOffset = Vector(4.25, 0, 1.7)
att.ModelScale = Vector(1.14, 1.14, 1.14)

att.AutoStats = true
att.SortOrder = 6

att.Mult_Sway = 1.25
att.Mult_SightedSpeedMult = 1.1

att.ActivateElements = {"stock_231_tube"}

att.ToggleStats = {
    {
        PrintName = "Extended",
        AutoStats = true,
        ModelOffset = Vector(3.0, 0, 1.7),
    },
    {
        PrintName = "Collapsed",
        AutoStats = true,
        ModelOffset = Vector(5.0, 0, 1.7),
        Mult_RecoilSide = 1.25,
        Add_BarrelLength = -4,
        Mult_SightTime = 0.9,
    },
}

