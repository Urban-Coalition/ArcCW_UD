att.PrintName = "RUCAR 225 Stock"

att.Icon = Material("entities/att/acwatt_ud_m16_barrel_m4.png", "smooth mips")
att.Description = "Wooden fixed stock with integral grip used on the Russian RUCAR 225 rifle. The sturdiest stock currently available for the AMCAR platform."

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "ADAR 2-15 Stock"
    att.Description = "Wooden fixed stock with integral grip used on the Russian ADAR 2-15 rifle. The sturdiest stock currently available for the AR platform."
end

att.Desc_Pros = {
    --"uc.auto"
}
att.Desc_Cons = {
    "uc.nogrip"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_stock"

att.AutoStats = true
-- needs balancing
att.Mult_Sway = .65
att.Mult_Recoil = .75
att.Mult_SpeedMult = .925
att.Mult_SightedSpeedMult = .7
att.Mult_SightTime = 1.05



--[[]
att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}
]]

--[[att.LHIK = true

att.Model = "models/weapons/arccw/atts/m4_lhik.mdl"]]

att.ActivateElements = {"stock_adar"}
att.GivesFlags = {"m16_adar"}