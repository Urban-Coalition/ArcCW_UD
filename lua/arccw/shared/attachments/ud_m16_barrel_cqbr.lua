att.PrintName = "10\" Commando Barrel"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "10\" M4 Commando Barrel"
end

att.Icon = Material("entities/att/acwatt_ud_m16_barrel_cqbr.png", "smooth mips")
att.Description = "Short barrel of a length emulating the CAR-15 assault rifle. Technically classified as a submachine gun, it offers relatively high fire rates at the cost of range."
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

att.ActivateElements = {"hg_cqbr", "barrel_11", "mount_11"}