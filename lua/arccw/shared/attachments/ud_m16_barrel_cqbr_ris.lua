att.PrintName = "10\" Commando RIS Barrel"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "10\" CQBR RIS Barrel"
end

att.Icon = Material("entities/att/acwatt_ud_m16_barrel_tactical.png", "smooth mips")
att.Description = "Commando-length barrel fitted with a SOPMOD I rail interface, as used by special forces for unique CQB roles. Functionally identical to the commando barrel."
att.Desc_Pros = {
    --"uc.auto"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_barrel"

att.AutoStats = true

att.Mult_SightTime = 0.85
att.Mult_SpeedMult = 1.025
att.Mult_SightedSpeedMult = 1.1
att.Mult_HipDispersion = 0.7

att.Mult_RPM = 1.15
att.Mult_Recoil = 1.5
att.Mult_AccuracyMOA = 2
att.Mult_Range = 0.5
att.Mult_Sway = 0.75

att.Add_BarrelLength = -6
att.Mult_PhysBulletMuzzleVelocity = 0.729167

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

att.LHIK = true

att.Model = "models/weapons/arccw/atts/m4_lhik.mdl"

att.ActivateElements = {"hg_m4a1_ris", "barrel_11"}