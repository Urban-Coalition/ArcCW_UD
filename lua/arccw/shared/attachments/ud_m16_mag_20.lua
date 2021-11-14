att.PrintName = "STANAG 20-Round Compact Mag"
att.AbbrevName = "20-Round Compact Mag"
att.SortOrder = 20
att.Icon = Material("entities/att/acwatt_ud_m16_mag_20.png", "smooth mips")
att.Description = "Original, low-capacity magazine for the M16. The lighter load reduces the weapon's weight and brings back memories of the rice fields."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "ud_m16_mag"

att.AutoStats = true
att.HideIfBlocked = true

att.Override_ClipSize = 20

att.Mult_SightTime = 0.85
att.Mult_ReloadTime = 0.9
att.Mult_Sway = 0.75

att.Mult_SpeedMult = 1.025
att.Mult_SightedSpeedMult = 1.05
att.Mult_ShootSpeedMult = 1.05

att.Mult_MalfunctionMean = 1.5

att.ActivateElements = {"ud_m16_mag_20"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_20"
end

att.ExcludeFlags = {"m16_usas", "m16_9mm", "m16_50beo"}