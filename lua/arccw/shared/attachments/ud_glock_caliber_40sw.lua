att.PrintName = "Glock .40 S&W Conversion"
att.AbbrevName = ".40 S&W"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "GEN3 .40 S&W Conversion"
end

att.SortOrder = 100
att.Icon = Material("entities/att/uc_bullets/40sw.png", "smooth mips")
att.Description = "Law-enforcement caliber with a slightly larger bullet and shorter case.\nRetains damage over distance better than other calibers."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_caliber"

att.AutoStats = true

att.Override_Trivia_Calibre = ".40 S&W"

att.Mult_Damage = ArcCW.UC.CalConv("9mm", "40sw", "max")
att.Mult_DamageMin = ArcCW.UC.CalConv("9mm", "40sw", "min")
att.Mult_Penetration = ArcCW.UC.CalConv("9mm", "40sw", "pen")

att.Mult_Recoil = 1.15

att.Override_PhysBulletMuzzleVelocity = 300

att.Mult_ClipSize = .9
att.Override_ShellModel = "models/weapons/arccw/uc_shells/40sw.mdl"
att.Override_ShellScale = 1

local path = ")^weapons/arccw_ud/glock/"

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return {path .. "fire-40-sup-01.ogg",path .. "fire-40-sup-02.ogg",path .. "fire-40-sup-03.ogg",path .. "fire-40-sup-04.ogg",path .. "fire-40-sup-05.ogg",path .. "fire-40-sup-06.ogg"} -- Placeholder
    else
        return {path .. "fire-40-01.ogg",path .. "fire-40-02.ogg",path .. "fire-40-03.ogg",path .. "fire-40-04.ogg",path .. "fire-40-05.ogg",path .. "fire-40-06.ogg"}
    end
end

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
        return
    else
        return {path .. "fire-40-dist-01.ogg",path .. "fire-40-dist-02.ogg",path .. "fire-40-dist-03.ogg",path .. "fire-40-dist-04.ogg",path .. "fire-40-dist-05.ogg",path .. "fire-40-dist-06.ogg"}
    end
end

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
