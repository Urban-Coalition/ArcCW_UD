att.PrintName = "AMCAR-NG .50 Beowulf Upper Receiver"
att.AbbrevName = ".50 Beowulf Upper"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "AR-15 .50 Beowulf Upper Receiver"
end

att.SortOrder = -1
att.Icon = Material("entities/att/uc_bullets/50beowulf.png", "smooth mips")
att.Description = "Semi-automatic receiver chambered in .50 Beowulf, a gigantic short-range cartridge with terrible ballistic performance. It can load single-stack into standard AR-15 magazines at a lower capacity.\nThe rifle is unable to handle the massive pressure at anything more than semi-automatic fire."
att.Desc_Pros = {}
att.Desc_Cons = {
    "ud.m16.50beo",
    "uc.semionly",
}
att.Desc_Neutrals = {}
att.Slot = "ud_m16_receiver"

att.AutoStats = true
att.HideIfBlocked = true

att.SortOrder = 1

att.Override_ClipSize = 7
att.Override_ClipSize_Priority = 0.5
att.BaseClipSize = 7

att.Mult_Damage = ArcCW.UC.CalConv("556", "50beo", "max")
att.Mult_DamageMin = ArcCW.UC.CalConv("556", "50beo", "min")
att.Mult_Penetration = ArcCW.UC.CalConv("556", "50beo", "pen")

att.Mult_Recoil = 3
att.Mult_RecoilSide = 2
att.Mult_VisualRecoilMult = 2
att.Mult_RPM = 0.5
att.Mult_Range = 0.25
att.Mult_ShootVol = 1.2

att.Mult_SightTime = 0.91
att.Mult_ReloadTime = 0.87
att.Mult_Sway = 0.667

att.Mult_SpeedMult = 1.025

att.Override_PhysBulletMuzzleVelocity = 550

-- att.Mult_HeatCapacity = 0.25
-- att.Mult_HeatDissipation = 0.25

-- yes, .50 beowulf is more of an huge magnum bullet than it is a rifle bullet
att.Override_Ammo = "357"
att.Override_Trivia_Calibre = ".50 Beowulf"
att.AddSuffix = " .50"
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

local path = "weapons/arccw_ud/m16/"

att.Hook_GetShootSound = function(wep, sound) -- Temporary
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return {
            path .. "fire-50-01.ogg",
            path .. "fire-50-02.ogg",
            path .. "fire-50-03.ogg",
            path .. "fire-50-04.ogg",
            path .. "fire-50-05.ogg",
            path .. "fire-50-06.ogg"
        }
    end
end

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return { 
            path .. "fire-50-dist-01.ogg",
            path .. "fire-50-dist-02.ogg",
            path .. "fire-50-dist-03.ogg",
            path .. "fire-50-dist-04.ogg",
            path .. "fire-50-dist-05.ogg",
            path .. "fire-50-dist-06.ogg"
        }
    end
end

-- can't be handled here
--att.ActivateElements = {"ud_m16_mag_50beo"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    if wep.Attachments[9].Installed == nil then
        return anim .. "_20"
    end
end

local slotinfo = {
    [6] = {".50 Beowulf Lower", ".50 Beowulf Lower", Material("entities/att/acwatt_ud_m16_receiver_semi.png", "smooth mips")},
    [11] = {"7-Round Mag", "7-Round Mag", Material("entities/att/acwatt_ud_m16_mag_15.png", "smooth mips")},
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

att.Override_Trivia_Class = "Semi-Automatic Rifle"


att.GivesFlags = {"m16_50beo", "m16_nolower"}