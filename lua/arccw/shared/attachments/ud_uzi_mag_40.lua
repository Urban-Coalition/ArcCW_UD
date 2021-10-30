att.PrintName = "Uzi 40-Round Extended Mag"
att.AbbrevName = "40-Round Extended Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "STAP 40-Round Extended Mag"
end

att.SortOrder = 40
att.Icon = Material("entities/att/acwatt_ud_uzi_mag_40.png", "smooth mips")
att.Description = "Extended magazine for the Uzi. It is only somewhat longer than the standard magazine, making it not that difficult to handle."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_uzi_mag"

att.AutoStats = true

att.Mult_SightTime = 1.08
--att.Mult_Recoil = 0.9
att.Mult_ReloadTime = 1.12
--att.Mult_SpeedMult = 0.9
att.Override_ClipSize = 40
att.Mult_Sway = 1.15

att.ActivateElements = {"ud_uzi_41_mag"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_41"
end