att.PrintName = "Glock 10mm Auto Conversion"
att.AbbrevName = "10mm Auto"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "GEN3 10mm Auto Conversion"
end

att.SortOrder = 80
att.Icon = Material("entities/att/uc_bullets/10.png", "smooth mips")
att.Description = "The FBI's preferred caliber of choice.\nSignificantly more powerful, but weapon handling suffers."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_caliber"

att.AutoStats = true

att.Override_Trivia_Calibre = "10mm Auto"

att.Mult_Damage = ArcCW.UC.CalConv("9mm", "10mm", "max")
att.Mult_DamageMin = ArcCW.UC.CalConv("9mm", "10mm", "min")
att.Mult_Penetration = ArcCW.UC.CalConv("9mm", "10mm", "pen")

att.Mult_Recoil = 1.25
att.Mult_RecoilSide = 1.25
att.Mult_ReloadTime = 1.15
att.Mult_MalfunctionMean = 0.75
att.Mult_PhysBulletMuzzleVelocity = 400 / 375

att.Mult_ClipSize = 0.9
att.Override_ShellScale = 1

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp_10.ogg" -- Placeholder
    else
        return "weapons/arccw_ud/glock/fire_10.ogg" -- Not Placeholder
    end
end

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return { "weapons/arccw_ud/glock/fire_dist_10.ogg" }
    end
end

local common = ")^/arccw_uc/common/"

att.Hook_GetDistantShootSoundIndoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return {
            common .. "fire-dist-int-pistol-heavy-01.ogg",
            common .. "fire-dist-int-pistol-heavy-02.ogg",
            common .. "fire-dist-int-pistol-heavy-03.ogg",
            common .. "fire-dist-int-pistol-heavy-04.ogg",
            common .. "fire-dist-int-pistol-heavy-05.ogg",
            common .. "fire-dist-int-pistol-heavy-06.ogg"
        }
    end
end