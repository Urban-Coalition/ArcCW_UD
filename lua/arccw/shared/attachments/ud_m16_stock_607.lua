att.PrintName = "AMCAR 607 Stock"
att.AbbrevName = "M607 Stock"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16 Model 607 Stock"
end

att.Icon = Material("entities/att/acwatt_ud_m16_stock_607.png", "smooth mips")
att.Description = "Collapsable combat stock used on the Model 607 SMG. While not very good for point shooting, the stock allows for quick target acquisition when collapsed.\n\nToggling this stock modifies performance accordingly."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_stock"

att.AutoStats = true
att.SortOrder = 5

--[[]
att.Mult_SightTime = 0.95
att.Mult_HipDispersion = 1.15
att.Mult_RecoilSide = 0.9
att.Mult_Sway = 1.1
]]
att.Mult_Sway = 1.25

att.Add_BarrelLength = 0

att.ToggleSound = "arccw_uc/common/stockslide.ogg"

att.ToggleStats = {
    {
        PrintName = "Collapsed",
        ActivateElements = {"stock_607_in"},
        Mult_SightTime = 0.8,
        Mult_ShootSpeedMult = 1.05,
        Mult_HipDispersion = 1.2,
        Add_BarrelLength = -4,
        Override_ActivePos = Vector(0.33, -1, 1),
    },
    {
        PrintName = "Extended",
        ActivateElements = {"stock_607_ex"}
    },
}