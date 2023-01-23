att.PrintName = "Glock .357 SIG Conversion"
att.AbbrevName = ".357 SIG"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "GEN3 .357 SIG Conversion"
end

att.SortOrder = 90
att.Icon = Material("entities/att/uc_bullets/357sig.png", "smooth mips")
att.Description = "A law-enforcement caliber well-known for its accuracy."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_caliber"

att.AutoStats = true

att.Override_Trivia_Calibre = ".357 SIG"

att.Mult_Damage = ArcCW.UC.CalConv("9mm", "357sig", "max")
att.Mult_DamageMin = ArcCW.UC.CalConv("9mm", "357sig", "min")
att.Mult_Penetration = ArcCW.UC.CalConv("9mm", "357sig", "pen")

att.Mult_AccuracyMOA = 0.5
att.Mult_Recoil = 1.15

att.Override_PhysBulletMuzzleVelocity = 410

att.Mult_ClipSize = 0.9
att.Override_ShellModel = "models/weapons/arccw/uc_shells/357sig.mdl"
att.Override_ShellScale = 1

local path = ")weapons/arccw_ud/glock/"
local common = ")/arccw_uc/common/"
local tail = common .. "357sig/"
local fire357 = {path .. "fire-357-01.ogg",path .. "fire-357-02.ogg",path .. "fire-357-03.ogg",path .. "fire-357-04.ogg",path .. "fire-357-05.ogg",path .. "fire-357-06.ogg"}
local fire357sup = {path .. "fire-sup-01.ogg",path .. "fire-sup-02.ogg",path .. "fire-sup-03.ogg",path .. "fire-sup-04.ogg",path .. "fire-sup-05.ogg",path .. "fire-sup-06.ogg"} -- Placeholder
local fire357dist = {tail .. "fire-dist-357sig-pistol-ext-01.ogg",tail .. "fire-dist-357sig-pistol-ext-02.ogg",tail .. "fire-dist-357sig-pistol-ext-03.ogg",tail .. "fire-dist-357sig-pistol-ext-04.ogg",tail .. "fire-dist-357sig-pistol-ext-05.ogg",tail .. "fire-dist-357sig-pistol-ext-06.ogg"}

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return fire357sup
    else
        return fire357
    end
end


att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire357dist
    end
end

att.Hook_GetDistantShootSoundIndoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        -- fallback to script
    end
end