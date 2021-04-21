att.PrintName = "16 Round Uzi Compact Mag"
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Reduced-size flush magazine. The lighter load makes the weapon even more ergonomic."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "Reduced magazine capacity"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_uzi_mag"

att.AutoStats = true

--att.Mult_SightTime = 1.4
--att.Mult_Recoil = 0.9
att.Mult_ReloadTime = 0.9
--att.Mult_SpeedMult = 0.9
att.Override_ClipSize = 16

att.ActivateElements = {"ud_uzi_16_mag"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_16"
end