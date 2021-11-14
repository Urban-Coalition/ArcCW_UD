att.PrintName = "STANAG 60-Round Casket Mag"
att.AbbrevName = "60-Round Casket Mag"
att.SortOrder = 60
att.Icon = Material("entities/att/acwatt_ud_m16_mag_60.png", "smooth mips")
att.Description = "Quad-stacked magazine for the M16. Quite bulky, but provides double the ammo capacity of a typical STANAG magazine. Has a tendency to jam."
att.Desc_Pros = {}
att.Desc_Cons = {
    "uc.jam"
}
att.Desc_Neutrals = {}
att.Slot = "ud_m16_mag"

att.AutoStats = true
att.HideIfBlocked = true

att.Override_ClipSize = 60

att.Mult_SightTime = 1.2
att.Mult_ReloadTime = 1.3
att.Mult_Sway = 2

att.Mult_SpeedMult = 0.95
att.Mult_ShootSpeedMult = 0.9

att.Mult_DrawTime = 1.15
att.Mult_HolsterTime = 1.15

att.ActivateElements = {"ud_m16_mag_60"}

--[[]
att.Override_Jamming = true
att.Override_HeatCapacity = 300
att.Override_HeatDissipation = 5
att.Override_HeatDelayTime = 3
]]
att.Override_Malfunction = true
att.Mult_MalfunctionVariance = 1.25

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_60"
end

att.ExcludeFlags = {"m16_usas", "m16_9mm", "m16_50beo"}