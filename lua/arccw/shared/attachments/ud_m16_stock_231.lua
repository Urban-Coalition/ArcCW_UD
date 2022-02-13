att.PrintName = "AMCAR 231 Wire Stock"
att.AbbrevName = "Wire Stock"

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

att.Mult_DrawTime = 0.75
att.Mult_HolsterTime = 0.75

att.Mult_SightTime = 0.75
att.Mult_Recoil = 1.25
att.Mult_Sway = 2
att.Mult_SpeedMult = 1.025

att.Add_BarrelLength = -4

att.ToggleSound = "arccw_uc/common/stockslide.ogg"

att.ToggleStats = {
    {
        PrintName = "Extended",
        ActivateElements = {"stock_231_ex"},
    },
    {
        PrintName = "Collapsed",
        AutoStats = true,
        ActivateElements = {"stock_231_in"},
        Mult_HipDispersion = 0.75,
        Mult_MoveDispersion = 0.75,
        Mult_RecoilSide = 2,
        Override_ActivePos = Vector(0.33, -1, 1),
    },
    --[[] -- we already have a buffer tube attachment
    {
        PrintName = "Removed",
        ActivateElements = {"stock_231_tube"},
    },
    ]]
}