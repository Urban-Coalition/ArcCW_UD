att.PrintName = "\"Service Rifle\" Wooden Handguard"
att.AbbrevName = "Wooden Handguard"

att.Icon = Material("entities/att/acwatt_ud_m16_hg_triangle.png", "smooth mips")
att.Description = "Custom wooden handguard created by independent gunsmiths from the state of California. Its heft gives it some extra stability."
att.Slot = "ud_m16_hg"
att.AutoStats = true

att.Mult_Sway = 0.8
att.Mult_RecoilSide = 0.85
att.Mult_Recoil = 0.9

att.Mult_SightedSpeedMult = 0.8
att.Mult_ShootSpeedMult = 0.9

att.LHIK = true
att.Model = "models/weapons/arccw/atts/classic_lhik.mdl"
att.DroppedModel = "models/items/boxsrounds.mdl"
att.ModelOffset = (Vector(0.41, 0, -1.63) - Vector(11.5, 2.8, -4.2))

att.ActivateElements = {"hg_m16a1_wood"}
att.GivesFlags = {"hg_no11"}
att.ExcludeFlags = {"blen_11"}