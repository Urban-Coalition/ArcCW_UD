att.PrintName = "Mini-14 10-Round Flush Mag"
att.AbbrevName = "10-Round Flush Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Patriot 809 10-Round Flush Mag"
end

att.SortOrder = 10
att.Icon = Material("entities/att/acwatt_ud_mini14_mag_10.png", "smooth mips")
att.Description = "Low-capacity 5.56mm flush magazine. The lighter load makes the weapon even more ergonomic."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_mag"

att.AutoStats = true

att.Mult_SightTime = 0.85
att.Mult_ReloadTime = 0.9
att.Override_ClipSize = 10
att.Mult_Sway = 0.75

att.ActivateElements = {"ud_mini14_mag_10"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_10"
end

att.ExcludeFlags = {"mini14_762", "mini14_22lr"}
att.HideIfBlocked = true