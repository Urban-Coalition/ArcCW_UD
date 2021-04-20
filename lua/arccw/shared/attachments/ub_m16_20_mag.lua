att.PrintName = "20 Round Mag"
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Placeholder"
att.Desc_Pros = {
}
att.Desc_Cons = {
    "Reduced magazine capacity"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_mag"

att.AutoStats = true

--att.Mult_SightTime = 1.4
--att.Mult_Recoil = 0.9
att.Mult_ReloadTime = 0.95
--att.Mult_SpeedMult = 0.9
att.Override_ClipSize = 20

att.ActivateElements = {"ud_m16_20_mag"}

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_20"
end