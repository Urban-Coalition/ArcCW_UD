att.PrintName = "2\" Stub Barrel"
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Description"
att.Desc_Pros = {
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

att.Mult_Recoil = 2
att.Mult_AccuracyMOA = 4
att.Mult_Range = 0.25
att.Mult_RPM = 2

att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0
    }
}

att.LHIK = true

att.Model = "models/weapons/arccw/atts/stub_lhik.mdl"

att.ActivateElements = {"ud_m16_stub_barrel"}