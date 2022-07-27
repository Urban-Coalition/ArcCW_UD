att.PrintName = "PMAG 30 AR/M4 GEN M2 MOE"
att.AbbrevName = "30-Round PMAG"
att.SortOrder = 40
att.Icon = Material("entities/att/acwatt_ud_m16_mag_pmag.png", "smooth mips")
att.Description = "American aftermarket magazine. The grooves give it a slightly better grip surface, but the difference in practice is negligible."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {"uc.cosmetic"}
att.Slot = "ud_m16_mag"

att.AutoStats = true
att.HideIfBlocked = true

-- att.Mult_SightTime = 1.1
-- att.Mult_ReloadTime = 1.15
-- att.Mult_Sway = 1.5

-- att.Mult_SpeedMult = 0.975
-- att.Mult_ShootSpeedMult = 0.95

att.ActivateElements = {"ud_m16_pmag"}

att.ExcludeFlags = {"m16_usas", "m16_9mm", "m16_50beo"}