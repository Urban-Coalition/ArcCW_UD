att.PrintName = "Mini-30 7.62x39mm 30-Round Extended Mag"
att.AbbrevName = "30-Round Extended Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Patriot 816 7.62x39mm 30-Round Extended Mag"
end

att.SortOrder = 30
att.Icon = Material("entities/att/acwatt_ud_mini14_mag_30_762.png", "smooth mips")
att.Description = "Effectively an AK magazine with a modified feeding lip, this magazine is proof of gun hobbyists' dedication (and lunacy) in search of more dakka."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_mag"

att.AutoStats = true

att.Mult_SightTime = 1.15
att.Mult_ReloadTime = 1.2
att.Override_ClipSize = 30
att.Mult_Sway = 1.5
att.Mult_ShootSpeedMult = 0.95

att.Mult_MalfunctionMean = 0.75

att.ActivateElements = {"ud_mini14_mag_30_762"}
att.RequireFlags = {"mini14_762"}
att.HideIfBlocked = true

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_762"
end