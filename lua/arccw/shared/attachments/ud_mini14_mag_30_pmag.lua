att.PrintName = "Mini-14 30-Round ProMag"
att.AbbrevName = "30-Round Polymer Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Patriot 809 30-Round Polymer Mag"
end

att.SortOrder = 29
att.Icon = Material("entities/att/acwatt_ud_mini14_mag_30_polymer.png", "smooth mips")
att.Description = "Polymer aftermarket magazine. The grooves give a better grip surface, but the mag is heavier overall than the steel equivalent."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_mag"

att.AutoStats = true

att.Mult_SightTime = 1.1
att.Mult_ReloadTime = 1.1
att.Override_ClipSize = 30
att.Mult_Sway = 1.58
att.Mult_ShootSpeedMult = 0.95

att.ActivateElements = {"ud_mini14_mag_42"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_30_tac"
end

att.ExcludeFlags = {"mini14_762", "mini14_22lr"}
att.HideIfBlocked = true