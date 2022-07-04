att.PrintName = "SIG Flip-Up Front Sight"
att.AbbrevName = "SIG Front Sight"
att.Icon = Material("entities/arc9_att_fs_sig.png", "mips smooth")
att.Description = [[Removable front sight made by SIG Sauer. Designed to be mounted on forend rails.]]
att.Desc_Neutrals = {"uc.cosmetic"}
att.SortOrder = 1
att.IgnorePickX = true

att.Model = "models/weapons/arc9/atts/sig_fs.mdl"
att.ModelScale = Vector(0.7, 0.7, 0.7)
att.Slot = {"ud_m16_fs"}
att.RequireFlags = {"ud_m16_rscompatible"}
att.GivesFlags = {"ud_m16_rs"}

att.FrontSight = 1