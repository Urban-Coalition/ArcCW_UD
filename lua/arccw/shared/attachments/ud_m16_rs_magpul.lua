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

att.MountPositionOverride = 0.5
att.IronSight = true
att.Override_IronSightStruct = {
    Pos = Vector(-2.80, 0, 0.85),
    Ang = Angle(1.05, 0, 0),
    Magnification = 1.1
}
att.Model = "models/weapons/arccw/atts/magpul_rs.mdl"
att.ModelOffset = Vector(-1.5, -0.005, 0)
att.ModelScale = Vector(0.87, 0.87, 0.87)

att.HideIfBlocked = true