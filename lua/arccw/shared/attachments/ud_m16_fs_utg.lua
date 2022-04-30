att.PrintName = "UTG Low Profile Rear Sight"
att.AbbrevName = "RS - UTG"
att.Icon = Material("entities/arc9_att_fs_colta2.png", "mips smooth")
att.Description = [[A2 style rail-mounted rear sight for picatinny rails.]]
att.SortOrder = 1

att.Model = "models/weapons/arc9/atts/colt_fs.mdl"
att.ModelScale = Vector(0.9, 0.9, 0.9)
att.Slot = {"ud_m16_fs"}
att.RequireFlags = {"ud_m16_rscompatible"}
att.GivesFlags = {"ud_m16_rs"}
att.Ignore = false