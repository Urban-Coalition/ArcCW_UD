att.PrintName = "AMCAR Wooden Stock"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16 Wooden Stock"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "A sturdy stock made from wood. Almost makes you wish for a nuclear winter."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_stock"

att.AutoStats = true

att.Mult_Recoil = 0.9
att.Mult_RecoilSide = 0.75
att.Mult_SightedSpeedMult = 0.9
att.Mult_SpeedMult = 0.975

att.ActivateElements = {"ud_m16_stock_wood"}