att.PrintName = "KAC Flip-Up Rear Sight"
att.AbbrevName = "RS - KAC"
att.Icon = Material("entities/arc9_att_rs_kac.png", "mips smooth")
att.Description = [[Removable rear sight made by Knight's Armament Company. Designed to be mounted on flat top rifles.]]
att.SortOrder = 1

att.Model = "models/weapons/arc9/atts/kac_fs.mdl"
att.ModelScale = Vector(0.9, 0.9, 0.9)
att.Slot = {"ud_m16_fs"}
att.RequireFlags = {"ud_m16_rscompatible"}
att.GivesFlags = {"ud_m16_rs"}