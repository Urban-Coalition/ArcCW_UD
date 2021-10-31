att.PrintName = "9\" SMG Barrel"
att.Icon = Material("entities/att/obsolete.png", "mips smooth")
att.Description = "Short barrel for use with a 9mm receiver."
att.Desc_Pros = {
    --"uc.auto"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_barrel"
att.SortOrder = -0.1

att.AutoStats = true

att.Mult_SightTime = 0.85
att.Mult_SpeedMult = 1.025
att.Mult_SightedSpeedMult = 1.1

att.Mult_RPM = 1.242
att.Mult_Recoil = 1.5
att.Mult_AccuracyMOA = 2
att.Mult_Range = 0.75
att.Mult_Sway = 0.75

att.Add_BarrelLength = -6

--[[]
att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}
]]

att.ActivateElements = {"hg_smg"}
att.RequireFlags = {"m16_9mm"}
att.HideIfBlocked = true

att.Description = "OBSOLETE"
att.Ignore = true