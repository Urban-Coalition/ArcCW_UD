att.PrintName = "Mini-14 18\" Short Barrel"
att.AbbrevName = "18\" Short Barrel"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Patriot 809 18\" Short Barrel"
end

att.Icon = Material("entities/att/acwatt_ud_mini14_barrel_short.png", "smooth mips")
att.SortOrder = 18
att.Description = "Compact barrel for popping close-up varmints. More agile but less accurate."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_barrel"

att.Mult_SightTime = 0.8
att.Mult_Recoil = 1.1
att.Mult_AccuracyMOA = 1.5
att.Mult_Range = 0.5
att.Mult_Sway = 0.75

att.Mult_SightedSpeedMult = 1.1

att.Add_BarrelLength = -4

att.AutoStats = true