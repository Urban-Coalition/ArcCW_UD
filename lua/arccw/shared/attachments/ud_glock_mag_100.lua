att.PrintName = "100-Round G17 C-Mag"
att.SortOrder = 100
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Twin-drum magazine for pistols, ideal for suppressive fire. Bulky construction and high ammo capacity substantially increases weight and shifts the weapon's center of balance."
att.Desc_Pros = {
    "Increased magazine capacity"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_mag"

att.AutoStats = true

att.Mult_SpeedMult = 0.95
att.Mult_SightTime = 1.2
att.Mult_ReloadTime = 1.25
att.Override_ClipSize = 100

att.Mult_HipDispersion = 1.5
att.Mult_Sway = 3

att.ActivateElements = {"ud_glock_100_mag"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_100"
end