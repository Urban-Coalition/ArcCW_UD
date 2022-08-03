att.PrintName = "Flip-up Rear Sight"
att.Icon = Material("entities/att/acwatt_ud_m16_rs.png", "smooth mips")
att.Description = "A rail-mounted rear sight for flat top receivers.\nLooks more modern, but that's it."
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
att.Model = "models/weapons/arccw/atts/sig_rs.mdl"
att.ModelOffset = Vector(-2, -0.002, 0)
att.ModelScale = Vector(.86, .86, .86)

att.HideIfBlocked = true