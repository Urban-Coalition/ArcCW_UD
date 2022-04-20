att.PrintName = "Uzi 12-Round Flush Mag"
att.AbbrevName = "12-Round Flush Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "IAL-9 12-Round Flush Mag"
end

att.SortOrder = 20
att.Icon = Material("entities/att/acwatt_ud_uzi_mag_20.png", "smooth mips")
att.Description = "Low-capacity flush magazine. The lighter load makes the weapon more ergonomic."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_uzi_mag"

att.AutoStats = true

att.Mult_SightTime = 0.9
att.Mult_ReloadTime = 0.85
att.Override_ClipSize = 12
att.Override_ClipSize_Priority = 2
att.Mult_Sway = 0.75
att.Mult_ShootSpeedMult = 1.1

att.ActivateElements = {"ud_uzi_16_mag"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_16"
end

att.RequireFlags = {"uzi_45"}
att.HideIfBlocked = true