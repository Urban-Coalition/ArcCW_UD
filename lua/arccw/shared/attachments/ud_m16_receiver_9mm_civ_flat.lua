att.PrintName = "AMCAR 9mm Civ. FT Receiver"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16 9mm Civ. FT Receiver"
end

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Semi-automatic 9mm receiver for civilian use. Kind of a tongue twister."
att.Desc_Pros = {
    "ud.flattop"
}
att.Desc_Cons = {
    "ud.nofs",
    "ud.semionly",
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_receiver"
att.InvAtt = "ud_m16_receiver_9mm_civ"
att.SortOrder = -10

att.AutoStats = true

att.Mult_Damage = 0.88
att.Mult_DamageMin = 0.88
att.Mult_Range = 0.7
att.Mult_RangeMin = 0.7
att.Mult_Recoil = 0.5
att.Mult_HipDispersion = 0.75

att.Mult_ReloadTime = 0.85
att.Mult_SightTime = 0.9

att.Override_ClipSize_Priority = -1
att.Override_ClipSize = 20

att.Mult_AccuracyMOA = 1.5
--att.Mult_RPM = 1.1

att.Override_Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

att.GivesFlags = {"m16_auto", "m16_9mm"}
att.ExcludeFlags = {"m16_noauto"}
att.ActivateElements = {"ud_m16_upper_flat","ud_m16_9mm_mag"}

att.Override_Ammo = "pistol"
att.Override_Trivia_Calibre = "9x19mm Parabellum"
att.Override_Trivia_Class = "Submachine Gun"
att.Override_ShellModel = "models/shells/shell_9mm.mdl"
--att.Override_ShellMaterial = "models/weapons/arcticcw/shell_9mm"
att.Override_ShellScale = 1

att.Hook_GetShootSound = function(wep, fsound)
    if fsound == wep.ShootSound or fsound == wep.FirstShootSound then return "weapons/arccw_ud/uzi/fire.ogg" end
    if fsound == wep.ShootSoundSilenced then return "weapons/arccw_ud/uzi/fire_supp.ogg" end
end

att.Hook_GetDistantShootSound = function(wep, sound)
    if fsound == wep.DistantShootSound then return "weapons/arccw_ud/uzi/fire_dist.ogg" end
end

local slotinfo = {
    [9] = {"20-Round 9mm AMSMG Mag", "20-Round 9mm AR-15 Mag", nil},
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