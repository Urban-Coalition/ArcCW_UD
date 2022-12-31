att.PrintName = "FC1040 Gripstock"
att.AbbrevName = "Gripstock"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M4 Super 90 Gripstock"
end


att.Icon = Material("entities/att/acwatt_ud_m1014_stock_buffer.png", "smooth mips")
att.Description = "Solid stock with a pistol grip. Reduces recoil with minimal side effects."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_1014_stock"

att.AutoStats = true

att.Mult_Recoil = .85
att.Mult_SightedSpeedMult = .9
att.Mult_SightTime = 1.1

att.ActivateElements = {"ud_autoshotgun_stock_gripstock"}
