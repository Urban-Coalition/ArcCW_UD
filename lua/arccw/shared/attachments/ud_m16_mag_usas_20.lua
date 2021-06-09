att.PrintName = "20-Round AMSAS Drum Mag"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "20-Round USAR Drum Mag"
end

att.SortOrder = -1
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Extended drum magazine that offers extra magazine capacity. Almost no legitimate military uses, but makes a fun range toy."
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

att.Override_ClipSize = 20

att.Mult_SightTime = 1.25
--att.Mult_Recoil = 0.9
att.Mult_ReloadTime = 1.25
att.Mult_SpeedMult = 0.95
att.Mult_Sway = 3

att.ActivateElements = {"ud_m16_usas_mag_20"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_usas_20"
end


att.Hook_SelectFireAnimation = function(wep, anim)
    return anim .. "_usas"
end

att.RequireFlags = {"m16_usas"}