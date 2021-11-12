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

att.ActivateElements = {"stock_ru556"}