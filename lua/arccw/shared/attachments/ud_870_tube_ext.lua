att.PrintName = "Express-12 8 Shell Tube"
att.AbbrevName = "8 Shell Tube"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Remington 870 8 Shell Tube"
end


att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Longer shell tube holding more rounds, but increases weapon weight."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "ud_870_tube"

att.AutoStats = true

att.Override_ClipSize = 8
att.Mult_Sway = 1.5
att.Mult_SightedSpeedMult = 0.8
att.Mult_SightTime = 1.15
att.Mult_ReloadTime = 1.1


att.ActivateElements = {"ud_870_tube_ext"}