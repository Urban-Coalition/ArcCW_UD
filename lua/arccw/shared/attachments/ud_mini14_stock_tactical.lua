att.PrintName = "Mini-14 Folding Stock"
att.AbbrevName = "Folding Stock"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Patriot 809 Folding Stock"
end

att.Icon = Material("entities/att/acwatt_ud_mini14_stock_tactical_wood.png", "smooth mips")
att.Description = "Chassis replacement installed with both a pistol grip and exotic folding stock to improve deployment and movement speed; the stock, however, is rather unwieldy due to its shape."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_stock"

att.AutoStats = true

att.Mult_SightTime = 0.9
att.Mult_SpeedMult = 1.15
att.Mult_SightedSpeedMult = 1.1
att.Mult_DrawTime = 0.7
att.Mult_HolsterTime = 0.7

att.Mult_Recoil = 1.2
att.Mult_Sway = 1.5

-- att.Add_BarrelLength = 32

att.ActivateElements = {"ud_mini14_stock_tactical"}

att.Ignore = false