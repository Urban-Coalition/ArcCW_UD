att.PrintName = "Mini-14 30-Round Polymer Mag"
att.AbbrevName = "30-Round Poly Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Patriot 809 30-Round Polymer Mag"
end

att.SortOrder = 30
att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Extended magazine for the Mini-14. Allows more shots to be taken before reloading. BALANc"
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
att.Override_ClipSize = 30
att.Mult_Sway = 1.5
att.Mult_ShootSpeedMult = 0.95

att.ActivateElements = {"ud_mini14_mag_30_polymer"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_30"
end