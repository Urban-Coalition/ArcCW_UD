att.PrintName = "AMCAR Combat Shotgun Receiver"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16 USAS Receiver"
end

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Total conversion kit that turns the rifle into an automatic combat shotgun."
att.Desc_Pros = {
    "ud.usas",
    "ud.auto"
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

att.Mult_HipDispersion = 0.6
att.Mult_MoveDispersion = 0.75
att.Mult_RPM = 0.5

att.Override_AccuracyMOA_Priority = -1
att.Override_AccuracyMOA = 40
att.Override_Num_Priority = -1 -- shotgun ammo may need to overwrite this
att.Override_Num = 8
att.Override_ShellModel = "models/shells/shell_12gauge.mdl"
att.Override_ShellSounds = ArcCW.ShotgunShellSoundsTable
att.Mult_Damage = 3.5
att.Mult_DamageMin = 3.5
att.Mult_Range = 0.25
att.Mult_PhysBulletMuzzleVelocity = 3 -- revert velocity changes by range
att.Mult_RangeMin = 0.75
att.Mult_Recoil = 2
att.Mult_RecoilSide = 2

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

att.GivesFlags = {"m16_usas"}

att.Hook_GetShootSound = function(wep, fsound)
    if fsound == wep.ShootSound or fsound == wep.FirstShootSound then return "weapons/arccw_ud/m1014/fire.ogg" end
    if fsound == wep.ShootSoundSilenced then return "weapons/arccw_ud/m1014/fire_supp.ogg" end
end

att.Hook_GetDistantShootSound = function(wep, sound)
    if fsound == wep.DistantShootSound then return "weapons/arccw_ud/r870/fire_dist.ogg" end
end

local slotinfo = {
    [2] = {"18\" AMCS Barrel", "18\" USAS Barrel", nil},
    [3] = {"Standard Choke", "Standard Choke", nil},
    [9] = {"10-Round AMCS Magazine", "10-Round USAS Magazine", nil},
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