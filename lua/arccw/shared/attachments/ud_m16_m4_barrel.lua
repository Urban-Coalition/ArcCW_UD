att.PrintName = "14.5\" M4 Carbine Barrel"
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Barrel of a similar length to the M4 carbine. Provides fully-automatic capability at a well rounded fire rate, with good range and accuracy."
att.Desc_Pros = {
    "Full-auto"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_barrel"

att.AutoStats = true

--att.Mult_SightTime = 1
--att.Mult_Recoil = 1
--att.Mult_SpeedMult = 1

att.Mult_Recoil = 1.1
att.Mult_AccuracyMOA = 1.5
att.Mult_Range = 0.9
att.Mult_RPM = 0.8

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

att.ActivateElements = {"ud_m16_cqbr_barrel"}