att.PrintName = "40-Round Uzi Extended Mag"
att.AbbrevName = "40-Round Extended Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "40-Round STAP Extended Mag"
end


att.SortOrder = 40
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Extended magazine for the Uzi. Enables slightly longer mag dumps, which may save your life, but the longer mag is more awkward to load."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_uzi_mag"

att.AutoStats = true

att.Mult_SightTime = 1.1
--att.Mult_Recoil = 0.9
att.Mult_ReloadTime = 1.15
--att.Mult_SpeedMult = 0.9
att.Override_ClipSize = 40
att.Mult_Sway = 1.15

att.ActivateElements = {"ud_uzi_41_mag"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_41"
end