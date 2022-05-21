att.PrintName = "RU556 Handguard"

att.Icon = Material("entities/att/acwatt_ud_m16_barrel_ru556.png", "smooth mips")
att.Description = "Short handguard from the RU556 line of AMCAR accessories, featuring a unique barrel shroud. The thin aluminum frame has extremely low weight."

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M-LOK Handguard"
    att.Description = "Short handguard from the M-LOK line of AR-15 accessories, featuring a unique barrel shroud. The thin aluminum frame has extremely low weight."
end

att.AbbrevName = att.PrintName

att.Slot = "ud_m16_hg"
att.AutoStats = true

att.Mult_Sway = .8
att.Mult_SpeedMult = 1.05
att.Mult_SightedSpeedMult = 1.2
att.Mult_HipDispersion = 1.1
att.Mult_Recoil = 1.175