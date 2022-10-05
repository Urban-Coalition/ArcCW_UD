att.PrintName = "Benelli M4 Gripstock"
att.AbbrevName = "M4 Gripstock"
att.Icon = Material("entities/att/acwatt_ud_m1014_stock_buffer.png", "smooth mips")
att.Description = "Solid stock with a pistol grip. Reduces recoil with minimal side effects."
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

att.Mult_Recoil = .85
att.Mult_SightedSpeedMult = .9
att.Mult_SightTime = 1.1

att.ActivateElements = {"ud_autoshotgun_stock_gripstock"}
