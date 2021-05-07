att.PrintName = "100-Round Uzi C-Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "100-Round STAP C-Mag"
end


att.SortOrder = 100
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Twin-drum magazine for the Uzi. Allows for a long period between reloads, but harms the weapon's ergonomics significantly. Prone to jamming."
att.Desc_Pros = {
    "pro.magcap"
}
att.Desc_Cons = {
    "ud.jam"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_uzi_mag"

att.AutoStats = true

att.Mult_SightTime = 1.5
--att.Mult_Recoil = 0.9
att.Mult_ReloadTime = 1.4
att.Mult_SpeedMult = 0.9
att.Mult_DrawTime = 1.25
att.Override_ClipSize = 100
att.Mult_Sway = 1.5

att.ActivateElements = {"ud_uzi_100_mag"}

att.Override_Jamming = true

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_100"
end