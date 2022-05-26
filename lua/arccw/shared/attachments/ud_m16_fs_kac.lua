att.PrintName = "KAC Flip-Up Front Sight"
att.AbbrevName = "KAC Front Sight"
att.Icon = Material("entities/arc9_att_rs_kac.png", "mips smooth")
att.Description = [[Removable front sight made by Knight's Armament Company. Designed to be mounted on forend rails.]]
att.Desc_Neutrals = {"uc.cosmetic"}
att.SortOrder = 1
att.IgnorePickX = true

att.Model = "models/weapons/arc9/atts/kac_fs.mdl"
att.ModelScale = Vector(0.9, 0.9, 0.9)
att.Slot = {"ud_m16_fs"}
att.RequireFlags = {"ud_m16_rscompatible"}
att.GivesFlags = {"ud_m16_rs"}

att.FrontSight = 1