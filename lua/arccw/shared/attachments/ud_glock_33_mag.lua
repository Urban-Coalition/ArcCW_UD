att.PrintName = "33-Round G17 Extended Mag"
att.SortOrder = 33
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Extended magazine for the Glock. Allows many more rounds to be fired before reloading."
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
att.Mult_ReloadTime = 1.02
--att.Mult_SpeedMult = 0.9
att.Override_ClipSize = 33

att.ActivateElements = {"ud_glock_33_mag"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_33"
end