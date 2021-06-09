att.PrintName = "10-Round STANAG Flush Mag"
att.AbbrevName = "10-Round Flush Mag"
att.SortOrder = 10
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Extremely low capacity magazines designed to comply with firearm laws. Bit cringe innit, bruv?"
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "ud_m16_mag"

att.AutoStats = true
att.HideIfBlocked = true

att.Override_ClipSize = 10

att.Mult_SightTime = 0.7
att.Mult_ReloadTime = 0.8
att.Mult_Sway = 0.5

att.Mult_SpeedMult = 1.05
att.Mult_SightedSpeedMult = 1.1
att.Mult_ShootSpeedMult = 1.1

att.ActivateElements = {"ud_m16_mag_20"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_20"
end

att.ExcludeFlags = {"m16_usas", "m16_9mm"}