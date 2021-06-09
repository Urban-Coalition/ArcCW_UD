att.PrintName = "40-Round STANAG Extended Mag"
att.SortOrder = 40
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Extended magazine for the M16. Enables slightly longer mag dumps, which may save your life, but the longer mag is more awkward to load."
att.Desc_Pros = {
    "pro.magcap"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_mag"

att.AutoStats = true
att.HideIfBlocked = true

att.Override_ClipSize = 40

att.Mult_SightTime = 1.1
att.Mult_ReloadTime = 1.15
att.Mult_Sway = 1.5

att.Mult_SpeedMult = 1.025
att.Mult_ShootSpeedMult = 0.95

att.ActivateElements = {"ud_m16_40_mag"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_40"
end

att.ExcludeFlags = {"m16_usas", "m16_9mm"}