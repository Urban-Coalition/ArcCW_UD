att.PrintName = "Mini-14 42-Round ProMag"
att.AbbrevName = "42-Round Polymer Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Patriot 809 42-Round Polymer Mag"
end

att.SortOrder = 30
att.Icon = Material("entities/att/acwatt_ud_mini14_mag_30_polymer.png", "smooth mips")
att.Description = "Polymer aftermarket extended magazine with a generous capacity."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_mag"

att.AutoStats = true

att.Override_ClipSize = 42

att.Mult_SightTime = 1.2
att.Mult_ReloadTime = 1.25
att.Mult_Sway = 1.75

att.Mult_SpeedMult = 0.975
att.Mult_ShootSpeedMult = 0.925


att.Mult_DrawTime = 1.15
att.Mult_HolsterTime = 1.15

att.ActivateElements = {"ud_mini14_mag_42"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_30_tac"
end

att.ExcludeFlags = {"mini14_762", "mini14_22lr"}
att.HideIfBlocked = true