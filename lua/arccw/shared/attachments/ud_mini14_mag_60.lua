att.PrintName = "Mini-14 60-Round Extended Magazine"
att.AbbrevName = "60-Round Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Patriot 809 60-Round Extended Magazine"
end

att.SortOrder = 30
att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Largest available magazine for the Mini-14. Allows more shots to be taken before reloading. BALANc"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_mag"

att.AutoStats = true

att.Mult_SightTime = 1.1
att.Mult_ReloadTime = 1.15
att.Override_ClipSize = 60
att.Mult_Sway = 1.5
att.Mult_ShootSpeedMult = 0.95

att.ActivateElements = {"ud_mini14_mag_60"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_30"
end