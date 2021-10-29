att.PrintName = "AMCAR 608 Stock"
att.AbbrevName = "M608 Stock"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16 Model 608 Stock"
end

att.Icon = Material("entities/att/acwatt_ud_m16_stock_608.png", "smooth mips")
att.Description = "Stock used on the Model 608 survival rifle. Essentially an elongated buffer tube with a cap. Improves point shooting abilities."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_stock"

att.AutoStats = true
att.SortOrder = 4

att.Mult_HipDispersion = 0.75
att.Mult_MoveDispersion = 0.85
att.Mult_SightTime = 1.15
att.Mult_Recoil = 1.25
att.Mult_Sway = 1.5

att.Add_BarrelLength = 0

att.ActivateElements = {"stock_608"}