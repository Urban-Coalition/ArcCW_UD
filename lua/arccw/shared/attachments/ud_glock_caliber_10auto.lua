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

local path = ")weapons/arccw_ud/glock/"
local common = ")/arccw_uc/common/"
local tail = common .. "10x25/"
local fire10 = {path .. "fire-10-01.ogg",path .. "fire-10-02.ogg",path .. "fire-10-03.ogg",path .. "fire-10-04.ogg",path .. "fire-10-05.ogg",path .. "fire-10-06.ogg"}
local fire10sup = {path .. "fire-40-sup-01.ogg",path .. "fire-40-sup-02.ogg",path .. "fire-40-sup-03.ogg",path .. "fire-40-sup-04.ogg",path .. "fire-40-sup-05.ogg",path .. "fire-40-sup-06.ogg"}
local fire10dist = {tail .. "fire-dist-10x25-pistol-ext-01.ogg", tail .. "fire-dist-10x25-pistol-ext-02.ogg", tail .. "fire-dist-10x25-pistol-ext-03.ogg", tail .. "fire-dist-10x25-pistol-ext-04.ogg", tail .. "fire-dist-10x25-pistol-ext-05.ogg", tail .. "fire-dist-10x25-pistol-ext-06.ogg"}
local fire10distint = {common .. "fire-dist-int-pistol-heavy-01.ogg", common .. "fire-dist-int-pistol-heavy-02.ogg", common .. "fire-dist-int-pistol-heavy-03.ogg", common .. "fire-dist-int-pistol-heavy-04.ogg", common .. "fire-dist-int-pistol-heavy-05.ogg", common .. "fire-dist-int-pistol-heavy-06.ogg"}

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return fire10sup
    else
        return fire10
    end
end


att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire10dist
    end
end



att.Hook_GetDistantShootSoundIndoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire10distint
    end
end