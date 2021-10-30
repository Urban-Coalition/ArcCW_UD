att.PrintName = "Uzi Polymer Stock"
att.AbbrevName = "Polymer Stock"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "STAP Polymer Stock"
end

att.Icon = Material("entities/att/acwatt_ud_uzi_stock_solid.png", "smooth mips")
att.Description = "A solid, non-foldable stock made of polymer. Provides decent recoil reduction and doesn't weigh as much as a full wooden stock."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "ud_uzi_stock"

att.AutoStats = true
att.SortOrder = 3

att.Mult_Recoil = 0.85
att.Mult_RecoilSide = 0.75
att.Mult_VisualRecoilMult = 0.75
att.Mult_Sway = 0.75

att.Mult_SightTime = 1.15
att.Mult_SightedSpeedMult = 0.95
att.Mult_ShootSpeedMult = 0.95

att.Mult_DrawTime = 1.25
att.Mult_HolsterTime = 1.25