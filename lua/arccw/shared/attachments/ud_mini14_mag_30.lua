att.PrintName = "30-Round Ranch Rifle Extended Mag"
att.SortOrder = 30
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Extended magazine for the Mini-14. Allows more shots to be taken before reloading."
att.Desc_Pros = {
    "Increased magazine capacity"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_mag"

att.AutoStats = true

att.Mult_SightTime = 1.1
att.Mult_ReloadTime = 1.15
att.Override_ClipSize = 30
att.Mult_Sway = 1.5

att.ActivateElements = {"ud_mini14_30_mag"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_30"
end