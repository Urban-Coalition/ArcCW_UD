att.PrintName = "AMCAR-NG .22 LR Upper Receiver"
att.AbbrevName = ".22 LR Upper"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "AR-15 .22 LR Upper Receiver"
end

att.Icon = Material("entities/att/acwatt_uc_cal_22lr.png", "smooth mips")
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

att.Mult_Damage = ArcCW.UC.StdDmg["22lr"].max / ArcCW.UC.StdDmg["9mm"].max
att.Mult_DamageMin = ArcCW.UC.StdDmg["22lr"].min / ArcCW.UC.StdDmg["9mm"].min
att.Mult_Penetration =  ArcCW.UC.StdDmg["22lr"].pen / ArcCW.UC.StdDmg["9mm"].pen

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

att.Hook_GetShootSound = function(wep, fsound)
    if fsound == wep.ShootSound or fsound == wep.FirstShootSound then return "weapons/arccw_ud/mini14/fire_22.ogg" end
    if fsound == wep.ShootSoundSilenced then return "weapons/arccw_ud/mini14/fire_22_supp.ogg" end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then return "weapons/arccw_ud/mini14/fire_22_dist.ogg" end
end