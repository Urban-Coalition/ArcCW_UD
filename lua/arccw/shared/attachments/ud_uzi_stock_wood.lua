att.PrintName = "Uzi Wooden Stock"
att.AbbrevName = "Wooden Stock"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "STAP Wooden Stock"
end

att.Icon = Material("entities/att/acwatt_ud_uzi_stock_solid.png", "smooth mips")
att.Description = "A solid, non-foldable stock made of wood. Old-fashioned and very sturdy, though less compact."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "ud_uzi_stock"

att.AutoStats = true
att.SortOrder = 4

att.Mult_Recoil = 0.75
att.Mult_RecoilSide = 0.5
att.Mult_VisualRecoilMult = 0.5
att.Mult_Sway = 0.5

att.Mult_SightTime = 1.25
att.Mult_SightedSpeedMult = 0.9
att.Mult_ShootSpeedMult = 0.9

att.Mult_DrawTime = 1.25
att.Mult_HolsterTime = 1.25