att.PrintName = "RUCAR 225 Short Wooden Handguard"

att.Icon = Material("entities/att/acwatt_ud_m16_hg_adar.png", "smooth mips")
att.Description = "Wooden handguard used on Russian sporting variants. The heavier material allows for lower recoil than handguards of similar length."

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "ADAR 2-15 Short Wooden Handguard"
end

att.AbbrevName = "Short Wooden Handguard"
att.Slot = "ud_m16_hg"
att.AutoStats = true

att.Mult_Sway = 0.9
att.Mult_RecoilSide = 0.85
att.Mult_Recoil = 0.95

att.Mult_SightedSpeedMult = 0.95
att.Mult_ShootSpeedMult = 0.95

att.LHIK = true
att.Model = "models/weapons/arccw/atts/adar_lhik.mdl"
att.DroppedModel = "models/items/boxsrounds.mdl"
att.ModelOffset = (Vector(0.41, 0, -1.63) - Vector(11.5, 2.8, -4.2))
