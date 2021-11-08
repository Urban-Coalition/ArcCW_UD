att.PrintName = "STANAG 10-Round .50 Beowulf Magazine"
att.AbbrevName = "10-Round .50 Beowulf Mag"
att.SortOrder = 20
att.Icon = Material("entities/att/acwatt_ud_m16_mag_20.png", "smooth mips")
att.Description = "Caliber conversion kit for .50 Beowulf, a gigantic short-range cartridge with poor aerodynamics. Not many rounds can fit in the magazine due to its size."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "ud_m16_mag"

att.AutoStats = true
att.HideIfBlocked = true

att.Override_ClipSize = 10

att.Mult_Damage = 2.5
att.Mult_Recoil = 3
att.Mult_RecoilSide = 2
att.Mult_VisualRecoilMult = 2
att.Mult_SightTime = 0.9
att.Mult_ReloadTime = 0.9
att.Mult_Sway = 0.75
att.Mult_RPM = 0.6
att.Mult_Range = .45
att.Mult_ShootVol = 1.2

att.Mult_SpeedMult = 1.025
att.Mult_SightedSpeedMult = 1.05
att.Mult_ShootSpeedMult = 1.05

att.Override_Ammo = "ar2"

att.ActivateElements = {"ud_m16_mag_50beo_10"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_20"
end

att.Hook_GetShootSound = function(wep, fsound)
    if fsound == wep.ShootSound or fsound == wep.FirstShootSound then return "weapons/arccw_ud/m16/fire_beo.ogg" end
    if fsound == wep.ShootSoundSilenced then return "weapons/arccw_ud/mini14/fire_762_supp.ogg" end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then return "weapons/arccw_ud/mini14/fire_dist.ogg" end
end

att.ExcludeFlags = {"m16_usas", "m16_9mm"}