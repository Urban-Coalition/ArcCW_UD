att.PrintName = "100 Round Mag"
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Twin-drum magazine for the Glock. Defeats the purpose of a handgun, but it does allow a very long time between reloads."
att.Desc_Pros = {
    "Increased magazine capacity"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_mag"

att.AutoStats = true

--att.Mult_SightTime = 1.4
--att.Mult_Recoil = 0.9
att.Mult_ReloadTime = 1.14
--att.Mult_SpeedMult = 0.9
att.Override_ClipSize = 100

att.ActivateElements = {"ud_glock_100_mag"}

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_100"
end