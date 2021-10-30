att.PrintName = "Mini-30 7.62x39mm 10-Round Flush Mag"
att.AbbrevName = "10-Round Flush Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Patriot 816 7.62x39mm 10-Round Flush Mag"
end

att.SortOrder = 10
att.Icon = Material("entities/att/acwatt_ud_mini14_mag_10.png", "smooth mips")
att.Description = "Low-capacity 7.62mm flush magazine. It is much less likely to jam thanks to the low capaacity."
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

att.Mult_MalfunctionMean = 1.5

att.ActivateElements = {"ud_mini14_mag_10"}
att.RequireFlags = {"mini14_762"}
att.HideIfBlocked = true

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_10"
end