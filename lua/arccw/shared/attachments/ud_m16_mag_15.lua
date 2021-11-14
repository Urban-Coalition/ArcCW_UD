att.PrintName = "AR-15 15-Round Pinned Mag"
att.AbbrevName = "15-Round Pinned Mag"
att.SortOrder = 15
att.Icon = Material("entities/att/acwatt_ud_m16_mag_15.png", "smooth mips")
att.Description = "Civilian magazine with capacity restrictions, but is quite easy to load."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "ud_m16_mag"

att.AutoStats = true
att.HideIfBlocked = true
att.Ignore = true

att.Override_ClipSize = 15

att.Mult_SightTime = 0.8
att.Mult_ReloadTime = 0.75
att.Mult_Sway = 0.5

att.Mult_SpeedMult = 1.03
att.Mult_SightedSpeedMult = 1.07
att.Mult_ShootSpeedMult = 1.07

att.Mult_MalfunctionMean = 3

att.ActivateElements = {"ud_m16_mag_50beo"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_20"
end

att.ExcludeFlags = {"m16_usas", "m16_9mm"}