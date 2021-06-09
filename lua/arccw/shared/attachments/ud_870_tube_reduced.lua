att.PrintName = "4 Shell Tube"
att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Shortened shell tube holding 4 rounds. Slightly reduces weapon weight."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "con.magcap"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_870_tube"

att.AutoStats = true

att.Override_ClipSize = 4
att.Mult_Sway = 0.75
att.Mult_SightedSpeedMult = 1.1
att.Mult_SightTime = 0.85
att.Mult_ReloadTime = 0.9

att.ActivateElements = {"ud_870_tube_reduced"}