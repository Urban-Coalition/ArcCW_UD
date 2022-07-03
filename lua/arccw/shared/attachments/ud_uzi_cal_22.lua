att.PrintName = "Uzi .22 LR Conversion"
att.AbbrevName = ".22 LR"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "IAL-9 .22 LR Conversion"
end
att.Slot = "ud_uzi_caliber"

att.Icon = Material("entities/att/acwatt_uc_cal_22lr.png", "smooth mips")
att.Description = "A smaller cartridge that increases the fire rate and magazine capacity, as well as reduced recoil at the cost of greatly reduced damage and range."
att.Desc_Pros = {
}

att.Override_Trivia_Calibre = ".22 Long Rifle"
att.Override_Ammo = "plinking"

att.AutoStats = true

att.Mult_Damage = ArcCW.UC.StdDmg["22lr"].max / ArcCW.UC.StdDmg["9mm"].max
att.Mult_DamageMin = ArcCW.UC.StdDmg["22lr"].min / ArcCW.UC.StdDmg["9mm"].min
att.Mult_Penetration =  ArcCW.UC.StdDmg["22lr"].pen / ArcCW.UC.StdDmg["9mm"].pen

att.Override_PhysTracerProfile = "uc_plinking"
att.Override_PhysBulletMuzzleVelocity = 365

att.Mult_Recoil = 0.25
att.Mult_VisualRecoilMult = 0.25
att.Mult_RPM = 1.5
att.Mult_ShootSpeedMult = 1.2

att.Mult_ClipSize = 1.2

att.Override_ShellModel = "models/weapons/arccw/uc_shells/22lr.mdl"
att.Override_ShellScale = 1
att.Override_ShellSounds = ArcCW.TinyShellSoundsTable

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp_22.ogg" -- Placeholder
    else
        return "weapons/arccw_ud/glock/fire_22.ogg" -- Placeholder
    end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSoundSilenced then
        return false
    elseif distancesound == wep.DistantShootSound then
        return "weapons/arccw_ud/glock/fire_dist_22.ogg"
    end
end
