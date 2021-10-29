att.PrintName = "AMCAR Wooden Stock"
att.AbbrevName = "Wooden Stock"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16 Wooden Stock"
end

att.Icon = Material("entities/att/acwatt_ud_m16_stock_default.png", "smooth mips")
att.Description = "A sturdy stock made from wood. Heavier than polymer, and almost makes you wish for a nuclear winter."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_stock"

att.AutoStats = true
att.SortOrder = 2

att.Mult_Recoil = 0.85
att.Mult_RecoilSide = 0.75
att.Mult_SightedSpeedMult = 0.9
att.Mult_SpeedMult = 0.975
att.Mult_Sway = 0.75

att.ActivateElements = {"stock_wood"}