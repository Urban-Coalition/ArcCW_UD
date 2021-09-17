att.PrintName = "\"TR\" Low Ammo Tracers"

att.SortOrder = 1
att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Replace the last 5 rounds of the magazine with tracer rounds, providing a visual indication when the magazine is almost empty."
att.Desc_Pros = {
    "Low ammo indication"
}
att.Desc_Cons = {
    "Visible bullet trail at low ammo"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_ammo"

att.AutoStats = true

att.Override_TracerFinalMag = 5
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