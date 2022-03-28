att.PrintName = "AMPAW-9 9x19mm Receiver"
att.AbbrevName = "9x19mm Receiver"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "R0635 9x19mm Receiver"
end

att.Icon = Material("entities/att/acwatt_ud_m16_receiver_9mm.png", "smooth mips")
att.Description = "A converted automatic receiver that fires 9x19mm Parabellum rounds. The smaller caliber drastically reduces recoil, but has much less range and is less accurate."
att.Desc_Pros = {
    "uc.auto",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_receiver"
att.SortOrder = -10

att.AutoStats = true
att.SortOrder = 3

att.Mult_Penetration = 6 / 14

att.Mult_Damage = 0.88
att.Mult_DamageMin = 0.88
att.Mult_Range = 0.4
att.Mult_ShootSpeedMult = 1.1
att.Mult_Recoil = 0.35
att.Mult_HipDispersion = 0.85

--att.Mult_ReloadTime = 0.85
att.Mult_SightTime = 0.9

att.Override_ClipSize_Priority = -1
att.Override_ClipSize = 20

att.Mult_HeatCapacity = 1.5

att.Override_Firemodes_Priority = 0.5
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

att.GivesFlags = {"m16_auto", "m16_9mm"}
att.ExcludeFlags = {"m16_noauto"}
att.ActivateElements = {"ud_m16_9mm_mag"}

att.Override_PhysBulletMuzzleVelocity = 396 / 0.833333

att.Override_Ammo = "pistol"
att.Override_Trivia_Calibre = "9x19mm Parabellum"
att.Override_Trivia_Class = "Submachine Gun"
att.Override_ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
att.Override_ShellScale = 1
att.Override_ShellSounds = ArcCW.PistolShellSoundsTable

att.Hook_GetShootSound = function(wep, fsound)
    if fsound == wep.ShootSound or fsound == wep.FirstShootSound then return "weapons/arccw_ud/m16/fire_9.ogg" end
    if fsound == wep.ShootSoundSilenced then return "weapons/arccw_ud/glock/fire_supp.ogg" end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then return "weapons/arccw_ud/m16/fire_9_dist.ogg" end
end

local slotinfo = {
    [9] = {"20-Round Mag", "20-Round Mag", Material("entities/att/acwatt_ud_m16_9mm_20.png", "smooth mips")},
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

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_9mm"
end