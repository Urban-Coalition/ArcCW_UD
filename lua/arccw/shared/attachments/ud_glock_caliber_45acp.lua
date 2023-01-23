att.PrintName = "Glock .45 ACP Conversion"
att.AbbrevName = ".45 ACP"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "GEN3 .45 ACP Conversion"
end

att.SortOrder = 70
att.Icon = Material("entities/att/uc_bullets/45acp.png", "smooth mips")
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

att.Mult_Damage = ArcCW.UC.CalConv("9mm", "45acp", "max")
att.Mult_DamageMin = ArcCW.UC.CalConv("9mm", "45acp", "min")
att.Mult_Penetration = ArcCW.UC.CalConv("9mm", "45acp", "pen")

att.Mult_RangeMin = 0.5
att.Mult_Recoil = 1.5
att.Mult_RecoilSide = 1.5
att.Mult_MalfunctionMean = 0.6

att.Override_PhysBulletMuzzleVelocity = 320

att.Mult_ClipSize = 0.76

att.Mult_RPM = 0.7619

local path = ")weapons/arccw_ud/glock/"
local common = ")/arccw_uc/common/"
local tail = common .. "45acp/"
local fire45 = {path .. "fire-45-01.ogg",path .. "fire-45-02.ogg",path .. "fire-45-03.ogg",path .. "fire-45-04.ogg",path .. "fire-45-05.ogg",path .. "fire-45-06.ogg"}
local fire45sup =  {path .. "fire-45-sup-01.ogg",path .. "fire-45-sup-02.ogg",path .. "fire-45-sup-03.ogg",path .. "fire-45-sup-04.ogg",path .. "fire-45-sup-05.ogg",path .. "fire-45-sup-06.ogg"}
local fire45dist = {tail .. "fire-dist-45acp-pistol-ext-01.ogg",tail .. "fire-dist-45acp-pistol-ext-02.ogg",tail .. "fire-dist-45acp-pistol-ext-03.ogg",tail .. "fire-dist-45acp-pistol-ext-04.ogg",tail .. "fire-dist-45acp-pistol-ext-05.ogg",tail .. "fire-dist-45acp-pistol-ext-06.ogg"}
local fire45distint = {common .. "fire-dist-int-pistol-heavy-01.ogg", common .. "fire-dist-int-pistol-heavy-02.ogg", common .. "fire-dist-int-pistol-heavy-03.ogg", common .. "fire-dist-int-pistol-heavy-04.ogg", common .. "fire-dist-int-pistol-heavy-05.ogg", common .. "fire-dist-int-pistol-heavy-06.ogg"}

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return fire45sup
    else
        return fire45
    end
end


att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire45dist
    end
end


att.Hook_GetDistantShootSoundIndoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire45distint
    end
end

att.GivesFlags = {"cal_subsonic"}
att.ExcludeFlags = {"powder_subsonic"}
