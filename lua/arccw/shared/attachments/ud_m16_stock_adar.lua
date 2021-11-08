att.PrintName = "RUCAR 225 Stock"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "ADAR 2-15 Stock"
end

att.Icon = Material("entities/att/acwatt_ud_m16_barrel_m4.png", "smooth mips")
att.Description = "insert desc here, make this the most sturdy and heavy stock in the pack"
att.Desc_Pros = {
    --"uc.auto"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_stock"

att.AutoStats = true
-- needs balancing
--[[att.Mult_SightTime = 0.85
att.Mult_SightedSpeedMult = 1.1
att.Mult_HipDispersion = 0.85

att.Mult_Recoil = 1.25
att.Mult_AccuracyMOA = 1.5
att.Mult_Range = 0.85
att.Mult_RPM = 1.111 --0.945
att.Mult_Sway = 0.85

att.Add_BarrelLength = -4]]

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