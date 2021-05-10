att.PrintName = "60-Round STANAG Casket Mag"
att.SortOrder = 60
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Quad-stacked magazine for the M16. Quite bulky, but provides double the ammo capacity of a typical STANAG magazine. Has a tendency to jam."
att.Desc_Pros = {
    "pro.magcap"
}
att.Desc_Cons = {
    "ud.jam"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_mag"

att.AutoStats = true

att.Mult_SightTime = 1.2
--att.Mult_Recoil = 0.9
att.Mult_ReloadTime = 1.2
att.Mult_SpeedMult = 0.92
att.Mult_DrawTime = 1.06
att.Override_ClipSize = 60
att.Mult_Sway = 2

att.ActivateElements = {"ud_m16_60_mag"}

att.Override_Jamming = true
att.Override_HeatCapacity = 300
att.Override_HeatDissipation = 5
att.Override_HeatDelayTime = 3

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_60"
end

att.ExcludeFlags = {"m16_usas"}