att.PrintName = "Mini-14 60-Round Casket Magazine"
att.AbbrevName = "60-Round Casket Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Patriot 809 60-Round Casket Magazine"
end

att.SortOrder = 30
att.Icon = Material("entities/att/acwatt_ud_mini14_mag_60.png", "smooth mips")
att.Description = "Quad-stack magazine for sustained vermin hunting. Has a tendency to jam."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.jam"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_mag"

att.AutoStats = true

att.Override_ClipSize = 60

att.Mult_SightTime = 1.2
att.Mult_ReloadTime = 1.5
att.Mult_Sway = 2

att.Mult_SpeedMult = 0.95
att.Mult_ShootSpeedMult = 0.9

att.Mult_DrawTime = 1.25
att.Mult_HolsterTime = 1.25

att.Override_Malfunction = true

att.ActivateElements = {"ud_mini14_mag_60"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_60"
end

att.ExcludeFlags = {"mini14_762", "mini14_22lr"}
att.HideIfBlocked = true