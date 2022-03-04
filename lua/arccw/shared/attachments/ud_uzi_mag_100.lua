att.PrintName = "Uzi 100-Round C-Mag"
att.AbbrevName = "100-Round C-Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "STAP 100-Round C-Mag"
end


att.SortOrder = 100
att.Icon = Material("entities/att/acwatt_ud_uzi_mag_100.png", "smooth mips")
att.Description = "Twin-drum magazine for the Uzi. Allows for a long period between reloads, but harms the weapon's ergonomics significantly. Prone to jamming."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.jam"
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
att.Mult_Sway = 2
att.Mult_ShootSpeedMult = 0.85

att.ActivateElements = {"ud_uzi_100_mag"}

--att.Override_Jamming = true
att.Override_Malfunction = true
att.Mult_MalfunctionMean = 0.75
att.Mult_MalfunctionVariance = 1.5

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_100"
end

att.ExcludeFlags = {"uzi_45","uzi_22"}
att.HideIfBlocked = true
