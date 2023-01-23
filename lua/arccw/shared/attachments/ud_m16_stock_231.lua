att.PrintName = "AMCAR 231 Wire Stock"
att.AbbrevName = "M231 Wire Stock"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16 M231 Wire Stock"
end

att.Icon = Material("entities/att/acwatt_ud_m16_stock_231.png", "smooth mips")
att.Description = "Wire stock used on the M231 FPW that provides some semblance of recoil control. Can be made even more agile by collapsing, improving point-shooting capabilities at the cost of recoil control.\n\nToggling this stock modifies performance accordingly."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_stock"

att.AutoStats = true
att.SortOrder = 3

att.Mult_SightTime = 0.75
att.Mult_Recoil = 1.25

att.Add_BarrelLength = -4

att.Mult_DrawTime = 0.75
att.Mult_HolsterTime = 0.75

att.ToggleSound = "arccw_uc/common/stockslide.ogg"

att.ToggleLockDefault = true
att.ToggleStats = {
    {
        PrintName = "Extended",
        AutoStats = true,
        ActivateElements = {"stock_231_ex"},
    },
    {
        PrintName = "Collapsed",
        AutoStats = true,
        Mult_HipDispersion = 0.6,
        Mult_MoveDispersion = 0.6,
        Mult_RecoilSide = 2,
        ActivateElements = {"stock_231_in"},
    },
}