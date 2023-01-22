att.PrintName = "RU556 Handguard"

att.Icon = Material("entities/att/acwatt_ud_m16_hg_ru556.png", "smooth mips")
att.Description = "Short handguard from the RU556 line of RAYCAR accessories, featuring a unique barrel shroud. The thin aluminum frame has extremely low weight."

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M-LOK Handguard"
    att.Description = "Short handguard from the M-LOK line of AR-15 accessories, featuring a unique barrel shroud. The thin aluminum frame has extremely low weight."
end

att.Desc_Neutrals = {
    "ud.m16.allowfs",
}

att.Slot = "ud_m16_hg"
att.AutoStats = true

att.Mult_Sway = .8
att.Mult_SpeedMult = 1.05
att.Mult_SightedSpeedMult = 1.2
att.Mult_HipDispersion = 1.1
att.Mult_Recoil = 1.175

att.LHIK = true
att.Model = "models/weapons/arccw/atts/ru556_lhik.mdl"
att.DroppedModel = "models/items/boxsrounds.mdl"
att.ModelOffset = (Vector(0.41, 0, -2.8) - Vector(11.5, 2.8, -4.2))
att.OffsetAng = Angle( 0, 5, 0 )

att.GivesFlags = {"ud_m16_rscompatible"}
att.ActivateElements = {"hg_ru556"}