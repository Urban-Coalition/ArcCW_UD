att.PrintName = "Uzi .22 LR Conversion"
att.AbbrevName = ".22 LR"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "IAL-9 .22 LR Conversion"
end
att.Slot = "ud_uzi_caliber"

att.Icon = Material("entities/att/acwatt_ud_glock_caliber.png", "smooth mips")
att.Description = "A smaller cartridge that increases the fire rate and magazine capacity, as well as reduced recoil at the cost of greatly reduced damage and range. The subsonic rounds are very quiet when suppressed."
att.Desc_Pros = {
    "No distant firing sound when suppressed"
}

att.Override_Trivia_Calibre = ".22 Long Rifle"
att.Override_Ammo = "plinking"

att.AutoStats = true

att.Mult_Damage = 0.4
att.Mult_RangeMin = 0.4
att.Mult_Range = 0.75
att.Mult_Recoil = 0.25
att.Mult_RecoilSide = 0.25
att.Mult_RPM = 1.25
att.Override_ClipSize = 48
att.Override_ClipSize_Priority = 0.5
att.Mult_ClipSize = 1.2

att.Override_ShellModel = "models/weapons/arccw/uc_shells/22lr.mdl"
att.Override_ShellScale = 1
att.Override_ShellSounds = ArcCW.TinyShellSoundsTable

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp_22.ogg" -- Placeholder
    else
        return "weapons/arccw_ud/glock/fire_22.ogg" -- Placeholder
    end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSoundSilenced then
        return false
    elseif distancesound == wep.DistantShootSound then
        return "weapons/arccw_ud/glock/fire_dist_22.ogg"
    end
end

att.GivesFlags = {"cal_subsonic"}
att.ExcludeFlags = {"powder_subsonic"}
