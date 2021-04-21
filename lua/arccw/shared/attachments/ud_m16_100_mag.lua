att.PrintName = "100-Round STANAG C-Mag"
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Twin-drum magazine compliant with STANAG 4179 dimensions, ideal for suppressive fire. Bulky construction and high ammo capacity substantially increases weight and shifts the weapon's center of balance."
att.Desc_Pros = {
    "Increased magazine capacity"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_mag"

att.AutoStats = true

att.Mult_SightTime = 1.5
--att.Mult_Recoil = 0.9
att.Mult_ReloadTime = 1.4
att.Mult_SpeedMult = 0.85
att.Mult_DrawTime = 1.25
att.Override_ClipSize = 100

att.ActivateElements = {"ud_m16_100_mag"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_100"
end