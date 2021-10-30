att.PrintName = "Mini-14 24\" Long Barrel"
att.AbbrevName = "24\" Long Barrel"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Patriot 809 24\" Long Barrel"
end

att.Icon = Material("entities/att/acwatt_ud_mini14_barrel_long.png", "smooth mips")
att.SortOrder = 24
att.Description = "Lengthened barrel for shooting far-away varmints. More accurate, but slightly heavier."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_barrel"

att.Mult_SightTime = 1.25
att.Mult_Recoil = 0.9
att.Mult_AccuracyMOA = 0.5
att.Mult_Range = 1.2
att.Mult_Sway = 1.5

att.Add_BarrelLength = 4

att.AutoStats = true