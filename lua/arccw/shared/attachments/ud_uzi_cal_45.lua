att.PrintName = "Uzi .45 ACP Conversion"
att.AbbrevName = ".45 ACP"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "IAL-9 .45 ACP Conversion"
end
att.Slot = "ud_uzi_caliber"

att.Icon = Material("entities/att/acwatt_ud_glock_caliber.png", "smooth mips")
att.Description = "A large cartridge that increases close-range stopping power substantially, but greatly reduces magazine capacity. The subsonic rounds are very quiet when suppressed."
att.Desc_Pros = {
    "No distant firing sound when suppressed"
}

att.Override_Trivia_Calibre = ".45 ACP"

att.AutoStats = true

att.Mult_Damage = 45 / 30
att.Mult_DamageMin = 15 / 17
att.Mult_Penetration = 9 / 6
att.Override_PhysBulletMuzzleVelocity = 320

att.Mult_RangeMin = 0.5
att.Mult_Range = .75
att.Mult_Recoil = 1.5
att.Mult_RecoilSide = 1.5
att.Mult_RPM = 0.83
att.Override_ClipSize = 16

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp_45.ogg" -- Placeholder
    else
        return "weapons/arccw_ud/glock/fire_45.ogg" -- Placeholder
    end
end

att.Hook_GetDefaultAttName = function(wep, slot)
    if slot == 8 then
        return "16-Round Mag"
    end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSoundSilenced then
        return false
    elseif distancesound == wep.DistantShootSound then
        return "weapons/arccw_ud/glock/fire_dist_45.ogg"
    end
end

att.GivesFlags = {"uzi_45","cal_subsonic"}
att.ExcludeFlags = {"powder_subsonic"}
