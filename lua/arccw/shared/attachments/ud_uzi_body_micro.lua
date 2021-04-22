att.PrintName = "Micro Frame"
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Extremely compact frame that turns this sub-machine gun into a machine pistol. Without an attach point for stocks, recoil is dramatically increased."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_uzi_frame"

att.AutoStats = true

att.Mult_SightTime = 0.6
att.Mult_Recoil = 1.75
att.Mult_RecoilSide = 2
att.Mult_RPM = 2

att.Add_BarrelLength = -8

att.LHIK = true

att.Override_HoldtypeActive = "pistol"

att.Model = "models/weapons/arccw/atts/mini_lhik.mdl"

att.ActivateElements = {"ud_uzi_body_micro"}
att.GivesFlags = {"micro"}