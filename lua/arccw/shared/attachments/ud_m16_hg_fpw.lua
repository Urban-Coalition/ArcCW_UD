att.PrintName = "FPW Handguard"

att.Icon = Material("entities/att/acwatt_ud_m16_hg_fpw.png", "smooth mips")
att.Description = "Specialist handguard that interlocks into an IFV firing port. It withstands sustained fire better, but the lack of grip surface harms stability."
att.Desc_Neutrals = {
    
}
att.Slot = "ud_m16_hg"
att.AutoStats = true

att.Mult_HeatCapacity = 160 / 120
att.Mult_Recoil = 1.1

att.LHIK = true
att.Model = "models/weapons/arccw/atts/m4_lhik.mdl"
att.DroppedModel = "models/items/boxsrounds.mdl"
att.ModelOffset = (Vector(0.41, 0, -1.63) - Vector(11.5, 2.8, -4.2))

att.GivesFlags = {"patr2"}