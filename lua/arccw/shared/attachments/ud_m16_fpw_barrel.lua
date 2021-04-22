att.PrintName = "15.6\" FPW Barrel"
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Barrel from an M231 Firing Port Weapon. Originally intended to be fired from inside the M2 Bradley IFV, the M231 FPW retains a high fire rate, though it makes no considerations for recoil or accuracy."
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

att.Mult_Recoil = 1.45
att.Mult_AccuracyMOA = 3
att.Mult_Range = 0.85
att.Mult_RPM = 0.95
att.Mult_Sway = 1.25

att.Add_BarrelLength = -3

att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0
    }
}

att.LHIK = true

att.Model = "models/weapons/arccw/atts/fpw_lhik.mdl"

att.ActivateElements = {"ud_m16_fpw_barrel"}