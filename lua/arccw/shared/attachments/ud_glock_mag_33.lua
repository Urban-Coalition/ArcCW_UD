att.PrintName = "33-Round G17 Extended Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "33-Round GEN3 Extended Mag"
end

att.SortOrder = 33
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Extended magazine for the Glock. Allows many more rounds to be fired before reloading, but comes with extra weight."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "ud_glock_mag"

att.AutoStats = true

att.Mult_SightTime = 1.1
att.Mult_ReloadTime = 1.15
att.Override_ClipSize = 33

att.Mult_HipDispersion = 1.25
att.Mult_Sway = 1.5
att.Mult_ShootSpeedMult = 0.95

att.ActivateElements = {"ud_glock_33_mag"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_33"
end

att.Hook_TranslateAnimation = function(wep, anim)
    if (anim == "fix") then
        return anim .. "_33"
    end
end