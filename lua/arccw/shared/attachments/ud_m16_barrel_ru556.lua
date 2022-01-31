att.PrintName = "10\" RU556 Barrel"

att.Icon = Material("entities/att/acwatt_ud_m16_barrel_ru556.png", "smooth mips")
att.Description = "Handguard from the RU556 line of AMCAR accessories, featuring a unique barrel shroud. The thin aluminum frame has extremely low weight."

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "10\" M-LOK Barrel"
    att.AbbrevName = "10\" M-LOK Barrel"
    att.Description = "Short handguard from the M-LOK line of AR-15 accessories, featuring a unique barrel shroud. The thin aluminum frame has extremely low weight."
end

att.Desc_Pros = {
    --"uc.auto"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_barrel"

att.AutoStats = true

att.Mult_SightTime = 0.75
att.Mult_SpeedMult = 1.05
att.Mult_SightedSpeedMult = 1.2
att.Mult_HipDispersion = 0.8

att.Mult_RPM = 1.15
att.Mult_Recoil = 1.75
att.Mult_AccuracyMOA = 2
att.Mult_Range = 0.5
att.Mult_Sway = 0.7

att.Add_BarrelLength = -6
att.Mult_PhysBulletMuzzleVelocity = 0.729167

att.LHIK = true

att.Model = "models/weapons/arccw/atts/ru556_lhik.mdl"

--[[]
att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {w
        Mode = 1,
    },
    {
        Mode = 0
    }
}
]]

--[[att.LHIK = true

att.Model = "models/weapons/arccw/atts/m4_lhik.mdl"]]

att.ActivateElements = {"hg_ru556", "barrel_11_ru556", "gasblock_carbine"}
att.GivesFlags = {"sight_magpul"}