att.PrintName = "Glock 10-Round Compact Mag"
att.AbbrevName = "10-Round Compact Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "GEN3 10-Round Compact Mag"
end

att.SortOrder = 10
att.Icon = Material("entities/att/acwatt_ud_glock_mag_10.png", "smooth mips")
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
att.RequireFlags = {"ud_glock_frame_subcompact"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_10"
end

att.Hook_TranslateAnimation = function(wep, anim)
    if (anim == "fix") then
        return anim .. "_10"
    end
end