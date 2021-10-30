att.PrintName = "Mini-14 30-Round Extended Mag"
att.AbbrevName = "30-Round Extended Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Patriot 809 30-Round Extended Mag"
end

att.SortOrder = 30
att.Icon = Material("entities/att/acwatt_ud_mini14_mag_30.png", "smooth mips")
att.Description = "An official but rare extended magazine. Despite its similar appearance, this is not STANAG compatible."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_mag"

att.AutoStats = true

att.Mult_SightTime = 1.1
att.Mult_ReloadTime = 1.15
att.Override_ClipSize = 30
att.Mult_Sway = 1.5
att.Mult_ShootSpeedMult = 0.95

att.ActivateElements = {"ud_mini14_mag_30"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_30"
end

att.ExcludeFlags = {"mini14_762", "mini14_22lr"}
att.HideIfBlocked = true