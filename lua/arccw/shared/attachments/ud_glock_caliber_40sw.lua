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

local path = ")weapons/arccw_ud/glock/"
local common = ")/arccw_uc/common/"
local tail = common .. "40sw/"
local fire40 = {path .. "fire-40-01.ogg",path .. "fire-40-02.ogg",path .. "fire-40-03.ogg",path .. "fire-40-04.ogg",path .. "fire-40-05.ogg",path .. "fire-40-06.ogg"}
local fire40sup = {path .. "fire-40-sup-01.ogg",path .. "fire-40-sup-02.ogg",path .. "fire-40-sup-03.ogg",path .. "fire-40-sup-04.ogg",path .. "fire-40-sup-05.ogg",path .. "fire-40-sup-06.ogg"}
local fire40dist = {tail .. "fire-dist-40sw-pistol-ext-01.ogg", tail .. "fire-dist-40sw-pistol-ext-02.ogg", tail .. "fire-dist-40sw-pistol-ext-03.ogg", tail .. "fire-dist-40sw-pistol-ext-04.ogg", tail .. "fire-dist-40sw-pistol-ext-05.ogg", tail .. "fire-dist-40sw-pistol-ext-06.ogg"}
local fire40distint = {common .. "fire-dist-int-pistol-heavy-01.ogg", common .. "fire-dist-int-pistol-heavy-02.ogg", common .. "fire-dist-int-pistol-heavy-03.ogg", common .. "fire-dist-int-pistol-heavy-04.ogg", common .. "fire-dist-int-pistol-heavy-05.ogg", common .. "fire-dist-int-pistol-heavy-06.ogg"}

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return fire40sup
    else
        return fire40
    end
end


att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire40dist
    end
end



att.Hook_GetDistantShootSoundIndoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire40distint
    end
end

att.GivesFlags = {"cal_subsonic"}
att.ExcludeFlags = {"powder_subsonic"}
