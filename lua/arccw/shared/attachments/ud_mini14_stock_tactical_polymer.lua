att.PrintName = "Mini-14 Tactical Stock"
att.AbbrevName = "Tactical Stock"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Patriot 809 Tactical Stock"
end

att.Icon = Material("entities/att/obsolete.png", "mips smooth") --Material("entities/att/acwatt_ud_mini14_stock_tactical_polymer.png", "smooth mips")
att.Description = "A lightweight body replacement that improves weapon agility."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_stock"

att.AutoStats = true

att.Mult_SightTime = 0.9
att.Mult_SpeedMult = 1.05
att.Mult_SightedSpeedMult = 1.1

att.Mult_Recoil = 1.25
--att.Mult_Sway = 3

-- att.Add_BarrelLength = 32

att.ActivateElements = {"ud_mini14_stock_tactical_polymer"}

att.Ignore = true -- where animation