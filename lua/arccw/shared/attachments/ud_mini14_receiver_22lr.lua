att.PrintName = "Mini-14 .22 LR Receiver"
att.AbbrevName = ".22 LR Receiver"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Patriot 809 .22 LR Receiver"
end

att.Icon = Material("entities/att/uc_bullets/22lr.png", "smooth mips")
att.Description = "Aftermarket .22 Long Rifle conversion for the Mini-14. While the light, weak cartridge has poor stopping power, its recoil is extremely manageable, making it a cinch to follow up shots."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_receiver"

att.AutoStats = true

att.Mult_SightTime = 0.8
att.Mult_ReloadTime = 0.85
att.Mult_Sway = 0.75

att.Mult_Damage = ArcCW.UC.CalConv("556", "22lr", "max")
att.Mult_DamageMin = ArcCW.UC.CalConv("556", "22lr", "min")
att.Mult_Penetration = ArcCW.UC.CalConv("556", "22lr", "pen")

att.Mult_Range = 0.5
att.Mult_Recoil = 0.25
att.Mult_VisualRecoilMult = 0.25
att.Mult_RPM = 1000 / 540
att.Mult_ShootSpeedMult = 1.2

att.Mult_HipDispersion = 0.6

att.Override_ClipSize = 15

att.ActivateElements = {"ud_mini14_mag_15_22lr", "ud_mini14_receiver_22lr"}
att.GivesFlags = {"mini14_22lr"}

-- att.GivesFlags = {"mini14_22lr","cal_subsonic"}
-- att.ExcludeFlags = {"powder_subsonic"}

att.Override_Ammo = "plinking"
att.Override_Trivia_Calibre = ".22 Long Rifle"
att.Override_ShellModel = "models/weapons/arccw/uc_shells/22lr.mdl"
att.Override_ShellScale = 1
att.Override_ShellSounds = ArcCW.TinyShellSoundsTable

att.Override_PhysTracerProfile = "uc_plinking"
att.Override_PhysBulletMuzzleVelocity = 370

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_15_22lr"
end

local path = "arccw_uc/common/"

local fire22 = {path .. "fire-22-01.ogg",path .. "fire-22-02.ogg",path .. "fire-22-03.ogg",path .. "fire-22-04.ogg",path .. "fire-22-05.ogg",path .. "fire-22-06.ogg"}
local fire22sup = {path .. "fire-22-sup-01.ogg",path .. "fire-22-sup-02.ogg",path .. "fire-22-sup-03.ogg",path .. "fire-22-sup-04.ogg",path .. "fire-22-sup-05.ogg",path .. "fire-22-sup-06.ogg"}

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return fire22sup
    else
        return fire22
    end
end

local fire22dist = {path .. "fire-22-dist-01.ogg", path .. "fire-22-dist-02.ogg", path .. "fire-22-dist-03.ogg", path .. "fire-22-dist-04.ogg", path .. "fire-22-dist-05.ogg", path .. "fire-22-dist-06.ogg"}

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire22dist
    end
end


local fire22distint = {path .. "fire-dist-int-pistol-light-01.ogg", path .. "fire-dist-int-pistol-light-02.ogg", path .. "fire-dist-int-pistol-light-03.ogg", path .. "fire-dist-int-pistol-light-04.ogg", path .. "fire-dist-int-pistol-light-05.ogg", path .. "fire-dist-int-pistol-light-06.ogg"}

att.Hook_GetDistantShootSoundIndoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire22distint
    end
end


local slotinfo = {
    [7] = {"15-Round Mag", "15-Round Mag", Material("entities/att/acwatt_ud_mini14_mag_15_22lr.png", "smooth mips")},
}
att.Hook_GetDefaultAttName = function(wep, slot)
    if slotinfo[slot] then
        return GetConVar("arccw_truenames"):GetBool() and slotinfo[slot][2] or slotinfo[slot][1]
    end
end
att.Hook_GetDefaultAttIcon = function(wep, slot)
    if slotinfo[slot] then
        return slotinfo[slot][3]
    end
end