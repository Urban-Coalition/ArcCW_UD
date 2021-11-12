att.PrintName = "Express-12 4 Shell Tube"
att.AbbrevName = "4 Shell Tube"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Remington 870 4 Shell Tube"
end

att.Icon = Material("entities/att/acwatt_ud_870_tube_reduced.png", "smooth mips")
att.Description = "Shortened shell tube that holds fewer rounds, but reduces weapon weight."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "ud_870_tube"

att.AutoStats = true

att.Override_ClipSize = 4
att.Mult_Sway = 0.75
att.Mult_SightedSpeedMult = 1.1
att.Mult_SightTime = 0.85
att.Mult_ReloadTime = 0.9

att.ActivateElements = {"ud_870_tube_reduced"}