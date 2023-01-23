att.PrintName = "AMCAR-NG .22 LR Upper Receiver"
att.AbbrevName = ".22 LR Upper"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "AR-15 .22 LR Upper Receiver"
end

att.Icon = Material("entities/att/uc_bullets/22lr.png", "smooth mips")
att.Description = "Civilian model firing a low power cartridge.\nVery controllable recoil, but not much lethality."
att.Desc_Pros = {
    --"uc.auto",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_receiver"
att.SortOrder = -12

att.AutoStats = true
att.SortOrder = 3

att.Mult_RPM = 1 / .85

att.Mult_Damage = ArcCW.UC.CalConv("556", "22lr", "max")
att.Mult_DamageMin = ArcCW.UC.CalConv("556", "22lr", "min")
att.Mult_Penetration = ArcCW.UC.CalConv("556", "22lr", "pen")

att.Mult_Range = 0.5
att.Mult_ShootSpeedMult = 1.2
att.Mult_Recoil = 0.2
att.Mult_VisualRecoilMult = 0.2
att.Mult_ClipSize = 1.2

att.Mult_HeatCapacity = 2

att.Override_PhysTracerProfile = "uc_plinking"
att.Override_PhysBulletMuzzleVelocity = 375 / 0.8333

att.Override_Ammo = "plinking"
att.Override_Trivia_Calibre = ".22 Long Rifle"

att.Override_ShellModel = "models/weapons/arccw/uc_shells/22lr.mdl"
att.Override_ShellScale = 1
att.Override_ShellSounds = ArcCW.TinyShellSoundsTable

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