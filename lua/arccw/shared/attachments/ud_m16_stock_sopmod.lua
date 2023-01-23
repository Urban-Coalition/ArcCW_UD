att.PrintName = "AMCAR SOPMOD Stock"
att.AbbrevName = "SOPMOD Stock"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16 SOPMOD Stock"
end

att.Icon = Material("entities/att/acwatt_ud_m16_stock_sopmod.png", "smooth mips")
att.Description = "Military-grade carbine stock with sophisticated ergonomics. Functions almost identically to a full stock while extended, but can be collapsed to shorten weapon profile."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = {"go_stock", "ud_m16_stock"}

att.Model = "models/weapons/arccw/atts/stock_sopmod.mdl"
att.ModelOffset = Vector(-0.5, 0, 0.40)
att.ModelScale = Vector(0.6, 0.6, 0.6)
att.OffsetAng = Angle(0, 0, 0)

att.AutoStats = true
att.SortOrder = 6

att.Mult_Sway = 1.05

att.ToggleSound = "arccw_uc/common/stockslide.ogg"

att.ActivateElements = {"stock_231_tube"}

att.ToggleStats = {
    {
        PrintName = "Extended",
        AutoStats = true,
        ModelOffset = Vector(-1.5, 0, 0.40),
    },
    {
        PrintName = "Collapsed",
        AutoStats = true,
        ModelOffset = Vector(0, 0, 0.40),
        Mult_RecoilSide = 1.25,
        Add_BarrelLength = -10,
        Mult_ShootSpeedMult = 1.1,
        Mult_Sway = 1.2,
        --Mult_SightTime = 0.9,
        Override_ActivePos = Vector(0.33, -3, 1.33),
    },
}