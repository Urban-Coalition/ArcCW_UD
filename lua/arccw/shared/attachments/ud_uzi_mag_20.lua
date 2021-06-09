att.PrintName = "20-Round Uzi Compact Mag"
att.AbbrevName = "20-Round Compact Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "20-Round STAP Compact Mag"
end

att.SortOrder = 20
att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Low-capacity flush magazine. The lighter load makes the weapon even more ergonomic."
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
att.Override_ClipSize = 20
att.Mult_Sway = 0.85
att.Mult_ShootSpeedMult = 1.1

att.ActivateElements = {"ud_uzi_16_mag"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_16"
end