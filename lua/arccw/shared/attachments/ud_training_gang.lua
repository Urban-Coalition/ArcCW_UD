att.PrintName = "Gangster Training"

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Hold that niner wide and spray it while you've got it."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_training"

att.AutoStats = true

att.Mult_HipDispersion = 0.75
att.Mult_SightTime = 1.5
att.Mult_Recoil = 1.2
att.Mult_RecoilSide = 1.2

-- BANDIT STYLE IS BACK, BABY

att.LHIK = true
att.LHIKHide = true

-- sry bby u too OP
--att.Override_ShootWhileSprint = true

att.Override_ActivePos = Vector(0, 0, 1)
att.Override_ActiveAng = Angle(0, 0, -60)

att.Override_RecoilDirection = Angle(0.707, -0.707, 0)
att.Override_RecoilDirectionSide = Angle(0.707, 0.707, 0)

att.Override_AddSightRoll = -45