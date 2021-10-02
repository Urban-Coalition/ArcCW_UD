att.PrintName = "\"TR\" Near-empty tracers"

att.SortOrder = 1
att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "The last 5 rounds of the magazine are tracer rounds, providing a visual indication when the magazine is almost empty."
att.Desc_Pros = {
    "Low ammo indication"
}
att.Desc_Cons = {
    "Visible bullet trail at low ammo"
}
att.Desc_Neutrals = {
    "Requires physical bullets"
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
}