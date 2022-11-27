att.PrintName = "AMPAW-9 9x19mm Upper Receiver"
att.AbbrevName = "9x19mm Upper"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "R0635 9x19mm Upper Receiver"
end

att.Icon = Material("entities/att/uc_bullets/9x19.png", "smooth mips")
att.Description = "A converted receiver that fires 9x19mm Parabellum rounds. The smaller caliber drastically reduces recoil, but has much less range and is less accurate."
att.Desc_Pros = {
    --"uc.auto",
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
att.Mult_RPM = 1 / .85

att.Mult_Damage = ArcCW.UC.CalConv("556", "9mm", "max")
att.Mult_DamageMin = ArcCW.UC.CalConv("556", "9mm", "min")
att.Mult_Penetration = ArcCW.UC.CalConv("556", "9mm", "pen")

att.Mult_Range = 0.4
att.Mult_ShootSpeedMult = 1.1
att.Mult_Recoil = 0.5
att.Mult_HipDispersion = 0.85

--att.Mult_ReloadTime = 0.85
att.Mult_SightTime = 0.9

att.Override_ClipSize_Priority = -1
att.Override_ClipSize = 20

att.Mult_HeatCapacity = 1.5

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

local path = ")^weapons/arccw_ud/glock/"

att.Hook_GetShootSound = function(wep, fsound)
    if fsound == wep.ShootSound or fsound == wep.FirstShootSound then return "weapons/arccw_ud/m16/fire_9.ogg" end
    if fsound == wep.ShootSoundSilenced then return {path .. "fire-sup-01.ogg", path .. "fire-sup-02.ogg", path .. "fire-sup-03.ogg", path .. "fire-sup-04.ogg", path .. "fire-sup-05.ogg", path .. "fire-sup-06.ogg"} end
end

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return { 
            path .. "fire-dist-01.ogg",
            path .. "fire-dist-02.ogg",
            path .. "fire-dist-03.ogg",
            path .. "fire-dist-04.ogg",
            path .. "fire-dist-05.ogg",
            path .. "fire-dist-06.ogg" 
        }
    end
end

att.Hook_GetDistantShootSoundIndoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return {
            path .. "fire-dist-int-01.ogg",
            path .. "fire-dist-int-02.ogg",
            path .. "fire-dist-int-03.ogg",
            path .. "fire-dist-int-04.ogg",
            path .. "fire-dist-int-05.ogg",
            path .. "fire-dist-int-06.ogg"
        }
    end
end

local slotinfo = {
    [11] = {"20-Round Mag", "20-Round Mag", Material("entities/att/acwatt_ud_m16_9mm_20.png", "smooth mips")},
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