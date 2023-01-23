att.PrintName = "AMCAR MOE Stock"
att.AbbrevName = "MOE Stock"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16 MOE Stock"
end

att.Icon = Material("entities/att/acwatt_ud_m16_stock_moe.png", "smooth mips")
att.Description = "Rebalance me!!!"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = {"go_stock", "ud_m16_stock"}

att.Model = "models/weapons/arccw/atts/stock_moe_b.mdl"
att.ModelOffset = Vector(-0.57, 0, 0.342)
att.ModelScale = Vector(0.74, 0.74, 0.74)
att.OffsetAng = Angle(0, 0, 0)

att.AutoStats = true
att.SortOrder = 6

att.Mult_Sway = 1.25
att.Mult_SightedSpeedMult = 1.15

att.ActivateElements = {"stock_231_tube"}

att.ToggleStats = {
    {
        PrintName = "Extended",
        AutoStats = true,
        ModelOffset = Vector(-1.5, 0, 0.40)
    },
    {
        PrintName = "Collapsed",
        ModelOffset = Vector(0, 0, 0.40),
        AutoStats = true,
        Mult_RecoilSide = 1.5,
        Add_BarrelLength = -4,
        Mult_ShootSpeedMult = 1.1,
        Mult_SightTime = 0.9,
        Override_ActivePos = Vector(0.33, -3, 1.33),
    },
}
