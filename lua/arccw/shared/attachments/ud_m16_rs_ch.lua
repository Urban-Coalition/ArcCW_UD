att.PrintName = "Carry Handle"
att.Icon = Material("entities/att/acwatt_ud_m16_rs.png", "smooth mips")
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

--att.M16Sights = 1
att.IronSight = true
att.Model = "models/weapons/arccw/atts/colt_ch.mdl"
att.ModelOffset = Vector(-2,0,0)
att.ModelScale = Vector(.86,.8,.8)