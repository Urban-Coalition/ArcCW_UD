att.PrintName = "AMCAR Carbine Stock"
att.AbbrevName = "Carbine Stock"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16 Carbine Stock"
end

att.Icon = Material("entities/att/acwatt_ud_m16_stock_carbine.png", "smooth mips")
att.Description = "Adjustable combat stock used on the XM177 carbine. When collapsed, it allows the user to move swiftly in close quarters; when extended, it functions similarly to a full stock.\n\nToggling this stock modifies performance accordingly."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_stock"

att.AutoStats = true
att.SortOrder = 6.5

att.Mult_Sway = 1.25
att.Mult_SightedSpeedMult = 1.15

att.ToggleSound = "arccw_uc/common/stockslide.ogg"

att.ToggleLockDefault = true
att.ToggleStats = {
    {
        PrintName = "Extended",
        AutoStats = true,
        ActivateElements = {"stock_carbine_ex"},
    },
    {
        PrintName = "Collapsed",
        AutoStats = true,
        ActivateElements = {"stock_carbine_in"},
        Mult_RecoilSide = 1.5,
        Add_BarrelLength = -4,
        Mult_ShootSpeedMult = 1.1,
        Mult_SightTime = 0.9,
    },
}