att.PrintName = "AMCAR 607 Stock"
att.AbbrevName = "M607 Slide Stock"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16 Model 607 Stock"
end

att.Icon = Material("entities/att/acwatt_ud_m16_stock_607.png", "smooth mips")
att.Description = "Collapsable combat stock used on the Model 607 SMG. While not as steady as a full stock, it allows for quick target acquisition when collapsed.\n\nToggling this stock modifies performance accordingly."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_stock"

att.AutoStats = true
att.SortOrder = 5

att.Mult_Sway = 1.25
att.Mult_MoveDispersion = 0.9

att.ToggleSound = "arccw_uc/common/stockslide.ogg"

att.ToggleLockDefault = true
att.ToggleStats = {
    {
        PrintName = "Extended",
        AutoStats = true,
        ActivateElements = {"stock_607_ex"},
    },
    {
        PrintName = "Collapsed",
        AutoStats = true,
        ActivateElements = {"stock_607_in"},
        Mult_SightTime = 0.8,
        Mult_Recoil = 1.15,
        Add_BarrelLength = -4,
    },
}