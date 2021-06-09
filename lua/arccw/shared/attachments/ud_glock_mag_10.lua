att.PrintName = "10-Round G17 Compact Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "10-Round GEN3 Compact Mag"
end

att.SortOrder = 10
att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Low-capacity magazine for the Glock, mostly used on subcompact variants like the Glock 26. The lighter load makes the weapon even more ergonomic."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "ud_glock_mag"

att.AutoStats = true

att.Mult_SightTime = 0.9
att.Mult_ReloadTime = 0.9
att.Override_ClipSize = 10

att.Mult_SpeedMult = 1.05
att.Mult_Sway = 0.5

att.ActivateElements = {"ud_glock_10_mag"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_10"
end

att.Hook_TranslateAnimation = function(wep, anim)
    if (anim == "fix") then
        return anim .. "_10"
    end
end