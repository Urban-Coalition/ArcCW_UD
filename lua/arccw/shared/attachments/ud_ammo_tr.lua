att.PrintName = "\"TR\" Tracers"

att.SortOrder = 1
att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "A pyrotechnic charge inside the bullet creates a bright, colorful trail behind it during flight. The bright trails help predict ballistic trajectories without using sights."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "Visible bullet trail"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_ammo"

att.AutoStats = true

att.Mult_HipDispersion = .9

att.ToggleStats = {
    {
        PrintName = "Red",
        Override_PhysTracerProfile = 1
    },
    {
        PrintName = "Green",
        Override_PhysTracerProfile = 2
    },
    {
        PrintName = "Violet",
        Override_PhysTracerProfile = 5
    },
    {
        PrintName = "Yellow",
        Override_PhysTracerProfile = 4
    },
} -- ripped from GSO lul