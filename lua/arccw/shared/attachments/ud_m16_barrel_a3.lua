att.PrintName = "20\" Auto M16A3 Barrel"
att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Visually and functionally identical to the M16A2, this barrel and receiver is custom modified for automatic fire. As it is a hand-made reproduction of the A3, it suffers from lower cyclic rate and worse precision."
att.Desc_Pros = {
    "ud.auto"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_barrel"

att.AutoStats = true
att.Ignore = true

att.Mult_AccuracyMOA = 1.25
att.Mult_RPM = 0.85

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