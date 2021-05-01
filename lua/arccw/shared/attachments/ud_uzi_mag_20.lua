att.PrintName = "20-Round Uzi Compact Mag"
att.SortOrder = 20
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Low-capacity flush magazine. The lighter load makes the weapon even more ergonomic."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "con.magcap"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_uzi_mag"

att.AutoStats = true

att.Mult_SightTime = 0.9
att.Mult_ReloadTime = 0.85
att.Override_ClipSize = 20

att.ActivateElements = {"ud_uzi_16_mag"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_16"
end