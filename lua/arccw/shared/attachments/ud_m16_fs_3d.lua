att.PrintName = "3D Low Profile Front Sight"
att.AbbrevName = "3D Front Sight"
att.Icon = Material("entities/att/acwatt_ud_m16_fs_3d.png", "mips smooth")
att.Description = [[A2 style rail-mounted front sight for picatinny rails.]]
att.Desc_Neutrals = {"uc.cosmetic"}
att.SortOrder = 1
att.IgnorePickX = true

att.Model = "models/weapons/arccw/atts/3d_fs.mdl"
att.ModelScale = Vector(0.7, 0.7, 0.7)
att.Slot = {"ud_m16_fs"}
att.RequireFlags = {"ud_m16_rscompatible"}
att.GivesFlags = {"ud_m16_rs"}
att.Ignore = false

att.FrontSight = 1