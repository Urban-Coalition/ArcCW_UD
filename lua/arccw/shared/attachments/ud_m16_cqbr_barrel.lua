att.PrintName = "10.5\" CAR-15 Barrel"
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Short barrel of a length emulating the CAR-15 assault rifle. Technically classified as a submachine gun, it offers relatively high fire rates at the cost of range."
att.Desc_Pros = {
    "pro.ud.auto"
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

att.Mult_Recoil = 1.75
att.Mult_AccuracyMOA = 2
att.Mult_Range = 0.8
att.Mult_RPM = 0.9
att.Mult_Sway = 1.25

att.Add_BarrelLength = -6

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

att.ActivateElements = {"ud_m16_m4_barrel"}