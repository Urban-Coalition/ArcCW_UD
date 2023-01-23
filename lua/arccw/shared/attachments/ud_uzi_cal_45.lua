att.PrintName = "Uzi .45 ACP Conversion"
att.AbbrevName = ".45 ACP"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "IAL-9 .45 ACP Conversion"
end
att.Slot = "ud_uzi_caliber"

att.Icon = Material("entities/att/uc_bullets/45acp.png", "smooth mips")
att.Description = "A large cartridge that increases close-range stopping power substantially, but greatly reduces magazine capacity."
att.Desc_Pros = {
    "uc.subsonic"
}

att.Override_Trivia_Calibre = ".45 ACP"

att.AutoStats = true

att.Mult_Damage = ArcCW.UC.CalConv("9mm", "45acp", "max")
att.Mult_DamageMin = ArcCW.UC.CalConv("9mm", "45acp", "min")
att.Mult_Penetration = ArcCW.UC.CalConv("9mm", "45acp", "pen")

att.Override_PhysBulletMuzzleVelocity = 320

att.Mult_RangeMin = 0.5
att.Mult_Range = .75
att.Mult_Recoil = 1.5
att.Mult_RecoilSide = 1.5
att.Mult_RPM = 0.83
att.Override_ClipSize = 16

local path = ")^weapons/arccw_ud/uzi/"

att.Hook_GetShootSound = function(wep, sound) -- Temporary
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp.ogg"
    else
        return {path .. "fire-45-01.ogg", path .. "fire-45-02.ogg", path .. "fire-45-03.ogg", path .. "fire-45-04.ogg", path .. "fire-45-05.ogg", path .. "fire-45-06.ogg"}
    end
end

att.Override_DistantShootSoundSilenced = nil

local tail = ")^/arccw_uc/common/45acp/"

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return {
            tail .. "fire-dist-45acp-pistol-ext-01.ogg",
            tail .. "fire-dist-45acp-pistol-ext-02.ogg",
            tail .. "fire-dist-45acp-pistol-ext-03.ogg",
            tail .. "fire-dist-45acp-pistol-ext-04.ogg",
            tail .. "fire-dist-45acp-pistol-ext-05.ogg",
            tail .. "fire-dist-45acp-pistol-ext-06.ogg"
        }
    end
end

att.Hook_GetDefaultAttName = function(wep, slot)
    if slot == 8 then
        return "16-Round Mag"
    end
end

att.GivesFlags = {"uzi_45","cal_subsonic"}