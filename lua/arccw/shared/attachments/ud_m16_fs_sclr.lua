att.PrintName = "Scalarworks Front Sight"
att.AbbrevName = "Scalarworks Front Sight"
att.Icon = Material("entities/att/acwatt_ud_m16_fs_sclr.png", "mips smooth")
att.Description = [[Removable front sight made by Knight's Armament Company. Designed to be mounted on forend rails.]]
att.Desc_Neutrals = {"uc.cosmetic"}
att.SortOrder = 1
att.IgnorePickX = true

att.Model = "models/weapons/arccw/atts/scalerworks_fs.mdl"
att.ModelOffset = Vector(0, 0.01, -0.1)
att.ModelScale = Vector(0.95, 0.95, 0.95)
att.Slot = {"ud_m16_fs"}
att.RequireFlags = {"ud_m16_rscompatible"}
att.GivesFlags = {"ud_m16_rs"}

att.FrontSight = 1