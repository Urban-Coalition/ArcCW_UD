att.PrintName = "RU556 Fixed-Adjustable Stock"
att.AbbrevName = "Fixed-Adjustable Stock"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Magpul UBR GEN2 Stock"
end
att.Icon = Material("entities/att/acwatt_ud_m16_stock_ru556.png", "smooth mips")
att.Description = "Polymer sliding stock attached from underneath the buffer tube. Allows for better weapon control when moving."
att.Desc_Pros = {
    --"uc.auto"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_stock"

att.AutoStats = true

att.Mult_MoveDispersion = 0.6
att.Mult_RecoilSide = 1.1
att.Mult_Recoil = 1.15
att.Mult_Sway = 1.25

att.ActivateElements = {"stock_ru556"}