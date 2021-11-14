att.PrintName = ".50 Beowulf 12-Round Standard Mag"
att.AbbrevName = "12-Round Standard Mag"
att.Icon = Material("entities/att/acwatt_ud_m16_mag_30.png", "smooth mips")
att.Description = "Standard 5.56mm magazines converted to load .50 Beowulf rounds in a single stack. Requires a bit of elbow grease to squeeze them in."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "ud_m16_mag"

att.AutoStats = true
att.HideIfBlocked = true
att.Free = true -- since this is just the standard mag

att.SortOrder = 2
att.Override_ClipSize = 12

att.Mult_SightTime = 1.1
att.Mult_ReloadTime = 1.15
att.Mult_Sway = 1.5

att.Mult_SpeedMult = 0.975

att.RequireFlags = {"m16_50beo"}