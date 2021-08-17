att.PrintName = "AMCAR Wire Stock"
att.AbbrevName = "Wire Stock"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16 Wire/231 Stock"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Collapsable wire stock used on the M231 FPW. Very light."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_stock"

att.AutoStats = true

att.Mult_SightTime = 0.9
att.Mult_HipDispersion = 1.1
att.Mult_Recoil = 1.1
att.Mult_RecoilSide = 1.25
att.Mult_Sway = 1.25

att.Add_BarrelLength = -4

att.ToggleStats = {
    {
        PrintName = "Extended",
        ActivateElements = {"stock_231_ex"}
    },
    {
        PrintName = "Collapsed",
        ActivateElements = {"stock_231_in"}
    },
    {
        PrintName = "Removed",
        ActivateElements = {"stock_231_tube"}
    },
}