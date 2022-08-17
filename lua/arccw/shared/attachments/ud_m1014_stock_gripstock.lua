att.PrintName = "M4 Pistol Grip Fixed Stock"
att.AbbrevName = "Grip Stock"
att.Icon = Material("entities/att/acwatt_ud_m1014_stock_buffer.png", "smooth mips")
att.Description = "Fixed pistol grip style stock for the M4. Provides better stability and recoil control, but is marginally more cumbersome than the collapsible stock."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_1014_stock"

att.Model = "models/weapons/arccw/atts/autoshotgun_stock_gripstock.mdl"
att.ModelOffset = Vector(-0.5, 0, 0.40)
att.ModelScale = Vector(0.85, 0.97, 0.9)
att.OffsetAng = Angle(0, 0, 0)

att.AutoStats = true

att.Mult_DrawTime = 1.15

att.Mult_Recoil = .9
att.Mult_RecoilSide = .8

att.Mult_SightedSpeedMult = .90

att.Add_BarrelLength = -12
att.Mult_Sway = .85

att.ActivateElements = {"ud_autoshotgun_stock_gripstock"}
