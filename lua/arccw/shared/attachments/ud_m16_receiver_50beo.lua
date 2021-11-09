att.PrintName = "AMCAR-NG .50 Beowulf Receiver"
att.AbbrevName = ".50 Beowulf Receiver"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "AR-15 .50 Beowulf Receiver"
end

att.SortOrder = -1
att.Icon = Material("entities/att/acwatt_ud_m16_receiver_semi.png", "smooth mips")
att.Description = "Semi-automatic receiver chambered in .50 Beowulf, a gigantic short-range cartridge with poor aerodynamics. Not many rounds can fit in the magazine due to its size."
att.Desc_Pros = {}
att.Desc_Cons = {
    "uc.semionly"
}
att.Desc_Neutrals = {}
att.Slot = "ud_m16_receiver"

att.AutoStats = true
att.HideIfBlocked = true

att.Override_ClipSize = 10

att.Mult_Damage = 2.5
att.Mult_Recoil = 3
att.Mult_RecoilSide = 2
att.Mult_VisualRecoilMult = 2
att.Mult_SightTime = 0.9
att.Mult_ReloadTime = 0.9
att.Mult_Sway = 0.75
att.Mult_RPM = 0.6
att.Mult_Range = .45
att.Mult_ShootVol = 1.2

-- att.Mult_SpeedMult = 1.025
-- att.Mult_SightedSpeedMult = 1.05
-- att.Mult_ShootSpeedMult = 1.05

att.Override_Ammo = "ar2"

att.Override_Trivia_Calibre = ".50 Beowulf"

att.ActivateElements = {"ud_m16_mag_50beo"}

att.Override_Firemodes_Priority = 0.5
att.Override_Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}


att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_20"
end

att.Hook_GetShootSound = function(wep, fsound)
    if fsound == wep.ShootSound or fsound == wep.FirstShootSound then return "weapons/arccw_ud/m16/fire_beo.ogg" end
    if fsound == wep.ShootSoundSilenced then return "weapons/arccw_ud/mini14/fire_762_supp.ogg" end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then return "weapons/arccw_ud/mini14/fire_dist.ogg" end
end

local slotinfo = {
    [9] = {"10-Round Mag", "10-Round Mag", Material("entities/att/acwatt_ud_m16_mag_20.png", "smooth mips")},
}
att.Hook_GetDefaultAttName = function(wep, slot)
    if slotinfo[slot] then
        return GetConVar("arccw_truenames"):GetBool() and slotinfo[slot][2] or slotinfo[slot][1]
    end
end

--att.ExcludeFlags = {"m16_usas", "m16_9mm"}
att.GivesFlags = {"m16_50beo"}