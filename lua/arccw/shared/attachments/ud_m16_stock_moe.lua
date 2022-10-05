att.PrintName = "Magpul MOE Stock"
att.AbbrevName = "MOE Stock"

att.Icon = Material("entities/att/acwatt_ud_m16_stock_moe.png", "smooth mips")
att.Description = "Aftermarket sliding polymer stock from Magpul's MOE line of AR-15 accessories. Provides marginally better recoil control and a bit easier to handle, but awkward to fire from the hip. Probably needs rebalancing."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_stock"

att.Model = "models/weapons/arccw/atts/stock_moe_b.mdl"
att.ModelOffset = Vector(-0.5, 0, 0.40)
att.ModelScale = Vector(0.6, 0.6, 0.6)
att.OffsetAng = Angle(0, 0, 0)

att.AutoStats = true
att.SortOrder = 6

att.Mult_Sway = 1.25
att.Mult_SightedSpeedMult = 1.10
att.Mult_RecoilSide = .9
att.Mult_Recoil = 0.95
att.Mult_HipDispersion = 1.15

att.ActivateElements = {"stock_231_tube"}

att.ToggleStats = {
    {
        PrintName = "Extended",
        AutoStats = true,
    },
    {
        PrintName = "Collapsed",
        AutoStats = true,
        Mult_RecoilSide = 1.5,
        Add_BarrelLength = -4,
        Mult_ShootSpeedMult = 1.1,
        Mult_SightTime = 0.9,
        Override_ActivePos = Vector(0.33, -3, 1.33),
    },
}
