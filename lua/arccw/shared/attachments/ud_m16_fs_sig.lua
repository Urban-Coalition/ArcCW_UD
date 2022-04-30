att.PrintName = "SIG Flip-Up Rear Sight"
att.AbbrevName = "RS - SIG"
att.Icon = Material("entities/arc9_att_rs_sig.png", "mips smooth")
att.Description = [[Removable rear sight made by SIG Sauer. Designed to be mounted on flat top rifles.]]
att.SortOrder = 1

att.Model = "models/weapons/arc9/atts/sig_fs.mdl"
att.ModelScale = Vector(0.9, 0.9, 0.9)
att.Slot = {"ud_m16_fs"}
att.RequireFlags = {"ud_m16_rscompatible"}
att.GivesFlags = {"ud_m16_rs"}