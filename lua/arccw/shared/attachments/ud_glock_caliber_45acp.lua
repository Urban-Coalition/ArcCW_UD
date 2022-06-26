att.PrintName = "Glock .45 ACP Conversion"
att.AbbrevName = ".45 ACP"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "GEN3 .45 ACP Conversion"
end

att.SortOrder = 70
att.Icon = Material("entities/att/acwatt_uc_cal_45acp.png", "smooth mips")
att.Description = "A venerable caliber with excellent close-range stopping power.\nBecause of the large bullet diameter, magazine capacity is significantly reduced."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_caliber"

att.AutoStats = true

att.Override_Trivia_Calibre = ".45 ACP"

att.Mult_Damage = 1.5
att.Mult_DamageMin = 0.88
att.Mult_Penetration = 9 / 6

att.Mult_RangeMin = 0.5
att.Mult_Recoil = 1.5
att.Mult_RecoilSide = 1.5
att.Mult_MalfunctionMean = 0.6
att.Override_PhysBulletMuzzleVelocity = 320

att.Mult_ClipSize = 0.76

att.Mult_RPM = 0.7619


att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp_45.ogg" -- Placeholder
    else
        return "weapons/arccw_ud/glock/fire_45.ogg" -- Not Placeholder
    end
end

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return { "weapons/arccw_ud/glock/fire_dist_45.ogg" }
    end
end

local path = ")^weapons/arccw_ud/glock/"
att.Hook_GetDistantShootSoundIndoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return {
            path .. "fire-dist-int-heavy-01.ogg",
            path .. "fire-dist-int-heavy-02.ogg",
            path .. "fire-dist-int-heavy-03.ogg",
            path .. "fire-dist-int-heavy-04.ogg",
            path .. "fire-dist-int-heavy-05.ogg",
            path .. "fire-dist-int-heavy-06.ogg"
        }
    end
end

att.GivesFlags = {"cal_subsonic"}
att.ExcludeFlags = {"powder_subsonic"}
