att.PrintName = "10-Round Ranch Rifle Compact Mag"
att.SortOrder = 10
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Low-capacity flush magazine for the Mini-14. The lighter load makes the weapon even more ergonomic."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "Reduced magazine capacity"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_mag"

att.AutoStats = true

att.Mult_SightTime = 0.85
att.Mult_ReloadTime = 0.9
att.Override_ClipSize = 10
att.Mult_Sway = 0.75

att.ActivateElements = {"ud_mini14_10_mag"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_10"
end