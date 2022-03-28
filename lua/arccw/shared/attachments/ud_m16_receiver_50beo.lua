att.PrintName = "AMCAR-NG .50 Beowulf Receiver"
att.AbbrevName = ".50 Beowulf Receiver"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "AR-15 .50 Beowulf Receiver"
end

att.SortOrder = -1
att.Icon = Material("entities/att/acwatt_ud_m16_receiver_semi.png", "smooth mips")
att.Description = "Semi-automatic receiver chambered in .50 Beowulf, a gigantic short-range cartridge with terrible ballistic performance. It can load single-stack into standard AR-15 magazines at a lower capacity."
att.Desc_Pros = {}
att.Desc_Cons = {
    "uc.semionly"
}
att.Desc_Neutrals = {}
att.Slot = "ud_m16_receiver"

att.AutoStats = true
att.HideIfBlocked = true

att.SortOrder = 1

att.Override_ClipSize = 7
att.Override_ClipSize_Priority = 0.5
att.BaseClipSize = 7

att.Mult_Damage = 2.2
att.Mult_Recoil = 3
att.Mult_RecoilSide = 2
att.Mult_VisualRecoilMult = 2
att.Mult_RPM = 0.5
att.Mult_Range = 0.25
att.Mult_ShootVol = 1.2
att.Mult_Penetration = 12 / 14

att.Mult_SightTime = 0.91
att.Mult_ReloadTime = 0.87
att.Mult_Sway = 0.667

att.Mult_SpeedMult = 1.025

att.Override_PhysBulletMuzzleVelocity = 550

att.Mult_HeatCapacity = 0.25
att.Mult_HeatDissipation = 0.25

-- yes, .50 beowulf is more of an huge magnum bullet than it is a rifle bullet
att.Override_Ammo = "357"
att.Override_Trivia_Calibre = ".50 Beowulf"
att.Override_ShellModel = "models/weapons/arccw/uc_shells/50beo.mdl"
att.Override_ShellScale = 1
att.Override_ShellSounds = ArcCW.PistolShellSoundsTable

att.Override_Firemodes_Priority = 0.5
att.Override_Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}


att.Hook_GetShootSound = function(wep, fsound)
    if fsound == wep.ShootSound or fsound == wep.FirstShootSound then return "weapons/arccw_ud/m16/fire_beo.ogg" end
    if fsound == wep.ShootSoundSilenced then return "weapons/arccw_ud/mini14/fire_762_supp.ogg" end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then return "weapons/arccw_ud/mini14/fire_dist.ogg" end
end

-- can't be handled here
--att.ActivateElements = {"ud_m16_mag_50beo"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    if wep.Attachments[9].Installed == nil then
        return anim .. "_20"
    end
end

local slotinfo = {
    [9] = {"7-Round Mag", "7-Round Mag", Material("entities/att/acwatt_ud_m16_mag_15.png", "smooth mips")},
}
att.Hook_GetDefaultAttName = function(wep, slot)
    if slotinfo[slot] then
        return GetConVar("arccw_truenames"):GetBool() and slotinfo[slot][2] or slotinfo[slot][1]
    end
end
att.Hook_GetDefaultAttIcon = function(wep, slot)
    if slotinfo[slot] then
        return slotinfo[slot][3]
    end
end

att.GivesFlags = {"m16_50beo"}