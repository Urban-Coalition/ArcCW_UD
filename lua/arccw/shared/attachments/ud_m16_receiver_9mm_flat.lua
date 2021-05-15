att.PrintName = "9mm AMPAW-9A1 Receiver"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "9mm R0635A1 Receiver"
end

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Automatic 9mm receiver with a flip-up rear sight."
att.Desc_Pros = {
    "ud.auto",
    "ud.flattop"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_receiver"
att.InvAtt = "ud_m16_receiver_9mm"
att.SortOrder = -10

att.AutoStats = true

att.Mult_Damage = 0.88
att.Mult_DamageMin = 0.88
att.Mult_Range = 0.5
att.Mult_RangeMin = 0.7
att.Mult_Recoil = 0.5
att.Mult_HipDispersion = 0.75
att.Mult_HeatCapacity = 1.5
att.Mult_HeatDissipation = 3

att.Mult_ReloadTime = 0.85
att.Mult_SightTime = 0.9

att.Override_ClipSize_Priority = -1
att.Override_ClipSize = 20

att.Mult_AccuracyMOA = 2
att.Mult_RPM = 0.9

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

att.A_Hook_Add_SightsDispersion = function(wep, data)
    if data and !wep.Attachments[1].Installed then
        data.add = data.add + 100
    end
end

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
    if fsound == wep.ShootSoundSilenced then return "weapons/arccw_ud/glock/fire_supp.ogg" end
end

att.Hook_GetDistantShootSound = function(wep, sound)
    if fsound == wep.DistantShootSound then return "weapons/arccw_ud/uzi/fire_dist.ogg" end
end

local slotinfo = {
    [9] = {"20-Round 9mm AMPAW Mag", "20-Round 9mm Uzi Mag", nil},
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