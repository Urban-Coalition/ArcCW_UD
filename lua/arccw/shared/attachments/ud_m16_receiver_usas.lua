att.PrintName = "AMSAS-12 12G Receiver"
att.AbbrevName = "12G Receiver"

att.Icon = Material("entities/att/obsolete.png", "mips smooth")
att.Description = "Total conversion kit that turns the rifle into an automatic combat shotgun."

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "USAR-1200 12G Receiver"
    att.Description = "Total conversion kit that turns the rifle into an automatic combat shotgun, based on the USAS-12."
end

att.Description = "OBSOLETE"
att.Ignore = true

att.Desc_Pros = {
    "ud.usas",
    "uc.auto"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_receiver"

att.AutoStats = true
att.SortOrder = -100

att.Override_ClipSize_Priority = -1
att.Override_ClipSize = 10

--att.Mult_HipDispersion = 1.25
att.Mult_RPM = 0.4

att.Override_AccuracyMOA_Priority = -1
att.Override_AccuracyMOA = 40
att.Override_Num_Priority = -1 -- shotgun ammo may need to overwrite this
att.Override_Num = 8
att.Mult_Damage = 3
att.Mult_DamageMin = 3
att.Mult_Range = 0.25
att.Mult_PhysBulletMuzzleVelocity = 3 -- revert velocity changes by range
--att.Mult_RangeMin = 0.75
att.Mult_Recoil = 3
att.Mult_RecoilSide = 2
att.Mult_ShootSpeedMult = 0.75

att.Mult_SpeedMult = 0.925
att.Mult_ReloadTime = 1.15

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

att.LHIK = true

att.Model = "models/weapons/arccw/atts/usas_lhik.mdl"

att.Override_IsShotgun = true
att.Override_Ammo = "buckshot"
att.Override_Trivia_Calibre = "12 Gauge"
att.Override_Trivia_Class = "Automatic Shotgun"
att.Override_ShellModel = "models/weapons/arccw/ud_shells/12.mdl"
att.Override_ShellScale = 1.7
att.Override_ShellSounds = ArcCW.ShotgunShellSoundsTable

att.GivesFlags = {"m16_usas"}
att.ActivateElements = {"hg_usas"}

att.Hook_GetShootSound = function(wep, fsound)
    if fsound == wep.ShootSound or fsound == wep.FirstShootSound then return "weapons/arccw_ud/m1014/fire.ogg" end
    if fsound == wep.ShootSoundSilenced then return "weapons/arccw_ud/m1014/fire_supp.ogg" end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then return "weapons/arccw_ud/870/fire_dist.ogg" end
end

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_40"
end

local slotinfo = {
    [2] = {"18\" AMSAS Barrel", "18\" USAR Barrel", att.Icon},
    [3] = {"Standard Choke", "Standard Choke", att.Icon},
    [9] = {"10-Round Mag", "10-Round Mag", att.Icon},
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

att.Hook_TranslateAnimation = function(wep, anim)
    if (anim == "fire" or anim == "fire_empty") then
        return anim .. "_usas"
    end
end
