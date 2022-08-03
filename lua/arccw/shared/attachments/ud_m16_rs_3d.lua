att.PrintName = "3D Rear Sight"
att.Icon = Material("entities/att/acwatt_ud_m16_rs_3d.png", "smooth mips")
att.Description = "A 3D-printed rear sight for flat top receivers. You probably want a top rail to mount the matching front sight as well."
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
    Pos = Vector(-2.80, 0, 2.2),
    Ang = Angle(1.05, 0, 0),
    Magnification = 1.1
}
att.Model = "models/weapons/arccw/atts/3d_rs.mdl"
att.ModelOffset = Vector(-2, -0.002, 0)
att.ModelScale = Vector(.86, .86, .86)

att.HideIfBlocked = true