att.PrintName = "10 Round Mag"
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Reduced magazine for the Mini-14. The lighter load makes the weapon even more ergonomic."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "Reduced magazine capacity"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_mag"

att.AutoStats = true

--att.Mult_SightTime = 1.4
--att.Mult_Recoil = 0.9
att.Mult_ReloadTime = 0.95
--att.Mult_SpeedMult = 0.9
att.Override_ClipSize = 10

att.ActivateElements = {"ud_mini14_10_mag"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_10"
end