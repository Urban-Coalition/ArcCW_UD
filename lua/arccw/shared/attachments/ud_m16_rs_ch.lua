att.PrintName = "Carry Handle"
att.Icon = Material("entities/att/acwatt_ud_m16_rs_ch.png", "mips smooth")
att.Description = "Mountable carry handle that is independent from the receiver."
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

att.MountPositionOverride = 0.64
att.IronSight = true
att.Override_IronSightStruct = {
    Pos = Vector(-2.80, 0, 1.11),
    Ang = Angle(0.4, 0, 0),
    Magnification = 1.1
}
att.Model = "models/weapons/arccw/atts/colt_ch.mdl"
att.ModelOffset = Vector(-2.2, -0.004, 0)
att.ModelScale = Vector(.78, .78, .78)

att.HideIfBlocked = true