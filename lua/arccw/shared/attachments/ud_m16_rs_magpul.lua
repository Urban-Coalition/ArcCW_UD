att.PrintName = "Magpul Rear Sight"
att.Icon = Material("entities/att/acwatt_ud_m16_rs_magpul.png", "smooth mips")
att.Description = "Aftermarket rear sight for flat top receivers. Functionally identical to other iron sights, but may look more tactical (or mall-ninja, depending on your taste)."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {
    "uc.cosmetic"
}
att.Slot = "ud_m16_rs"

att.ActivateElements = {"ud_m16_upper_flat"}
att.GivesFlags = {"ud_m16_not_retro"}
att.ExcludeFlags = {"ud_m16_retro"}
--att.HideIfBlocked = true

att.SortOrder = 1000
att.Free = true
att.IgnorePickX = true

--att.M16Sights = 2
att.IronSight = true
att.Model = "models/weapons/arccw/atts/magpul_rs.mdl"
att.ModelOffset = Vector(-2,0,0)
att.ModelScale = Vector(.8,.8,.8)