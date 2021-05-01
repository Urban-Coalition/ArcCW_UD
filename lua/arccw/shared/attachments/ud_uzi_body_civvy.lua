att.PrintName = "16\" Uzi Civilian Barrel"
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Civilian barrel for the Uzi, elongated to fit minimum length requirements. Substantially improves range and recoil, at the cost of prohibiting fully-automatic fire."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_uzi_frame"

att.AutoStats = true

att.Mult_AccuracyMOA = 0.5
att.Mult_SightTime = 1.25
att.Mult_Recoil = 0.75
att.Mult_RecoilSide = 0.75
att.Mult_RPM = 0.9
att.Mult_Range = 1.5

att.Override_Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

att.Add_BarrelLength = 8

att.ActivateElements = {"ud_uzi_body_civvy"}