att.PrintName = "AMCAR 607 Stock"
att.AbbrevName = "607 Stock"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16 Model 607 Stock"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Collapsable combat stock used on the Model 607 SMG. The bulk of the full stock combined with the collapsibility of any other."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_stock"

att.AutoStats = true
att.SortOrder = 5

att.Mult_SightTime = 0.95
att.Mult_HipDispersion = 1.15
att.Mult_RecoilSide = 0.9
att.Mult_Sway = 1.1

att.Add_BarrelLength = 0

att.ToggleStats = {
    {
        PrintName = "Extended",
        ActivateElements = {"stock_607_ex"}
    },
    {
        PrintName = "Collapsed",
        ActivateElements = {"stock_607_in"}
    },
}