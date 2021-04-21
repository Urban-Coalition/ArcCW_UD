att.PrintName = "60 Round Mag"
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Quad-stacked magazine for the M16. Quite bulky, but provides double the ammo capacity of a typical STANAG magazine."
att.Desc_Pros = {
    "Increased magazine capacity"
}
att.Desc_Cons = {
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

att.ActivateElements = {"ud_m16_60_mag"}

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_60"
end