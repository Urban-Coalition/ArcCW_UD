att.PrintName = "Glock .22 LR Conversion"
att.AbbrevName = ".22 LR"

if not GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "GEN3 .22 LR Conversion"
end

att.SortOrder = 00
att.Icon = Material("entities/att/uc_bullets/22lr.png", "smooth mips")
att.Description = "A plinking cartridge that is easy to handle but not very lethal.\nIts form factor allows more rounds to be stuffed into magazines."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_caliber"

att.AutoStats = true

att.Override_Trivia_Calibre = ".22 Long Rifle"
att.Override_Ammo = "plinking"

att.Mult_Damage = ArcCW.UC.CalConv("9mm", "22lr", "max")
att.Mult_DamageMin = ArcCW.UC.CalConv("9mm", "22lr", "min")
att.Mult_Penetration = ArcCW.UC.CalConv("9mm", "22lr", "pen")

att.Mult_Recoil = 0.25
att.Mult_VisualRecoilMult = 0.25
att.Mult_RPM = 1.5
att.Mult_Penetration = 0.1
att.Mult_ShootSpeedMult = 1.2

att.Override_PhysTracerProfile = "uc_plinking"
att.Mult_PhysBulletMuzzleVelocity = 325 / 375

att.Mult_ClipSize = 1.2

att.Override_ShellModel = "models/weapons/arccw/uc_shells/22lr.mdl"
att.Override_ShellScale = 1
att.Override_ShellSounds = ArcCW.TinyShellSoundsTable

local path = "arccw_uc/common/"

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return {path .. "fire-22-sup-01.ogg",path .. "fire-22-sup-02.ogg",path .. "fire-22-sup-03.ogg",path .. "fire-22-sup-04.ogg",path .. "fire-22-sup-05.ogg",path .. "fire-22-sup-06.ogg"} -- Placeholder
    else
        return {path .. "fire-22-01.ogg",path .. "fire-22-02.ogg",path .. "fire-22-03.ogg",path .. "fire-22-04.ogg",path .. "fire-22-05.ogg",path .. "fire-22-06.ogg"}
    end
end

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
        return
    else
        return { "weapons/arccw_ud/glock/fire_dist_22.ogg" }
    end
end

local path1 = ")^weapons/arccw_ud/glock/"
att.Hook_GetDistantShootSoundIndoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
        return
    else
        return {
            path1 .. "fire-dist-int-light-01.ogg",
            path1 .. "fire-dist-int-light-02.ogg",
            path1 .. "fire-dist-int-light-03.ogg",
            path1 .. "fire-dist-int-light-04.ogg",
            path1 .. "fire-dist-int-light-05.ogg",
            path1 .. "fire-dist-int-light-06.ogg"
        }
    end
end
