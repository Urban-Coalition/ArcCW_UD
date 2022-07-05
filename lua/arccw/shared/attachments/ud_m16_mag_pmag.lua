att.PrintName = "STANAG 30-Round Magpul PMAG"
att.AbbrevName = "30-Round PMAG"
att.SortOrder = 40
att.Icon = Material("entities/att/acwatt_ud_m16_mag_40.png", "smooth mips")
att.Description = "American aftermarket magazine. The grooves give it a slightly better grip surface, but the difference in practice is negligible."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "ud_m16_mag"

att.AutoStats = true
att.HideIfBlocked = true

-- att.Mult_SightTime = 1.1
-- att.Mult_ReloadTime = 1.15
-- att.Mult_Sway = 1.5

-- att.Mult_SpeedMult = 0.975
-- att.Mult_ShootSpeedMult = 0.95

att.ActivateElements = {"ud_m16_pmag"}

att.Hook_SelectReloadAnimation = function(wep, anim) -- this is so red mountian man can make plasticc soudn
    return anim .. "_pmag"
end

att.ExcludeFlags = {"m16_usas", "m16_9mm", "m16_50beo"}