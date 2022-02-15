att.PrintName = "KKM Precision Compensator"
att.AbbrevName = "KKM Compensator"
att.Icon = Material("entities/att/kkm.png", "mips smooth")
att.Description = "write here something about roland special idk A muzzle device that redirects propellant gasses to the sides to reduce the recoil of the gun."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.AutoStats = true
att.Slot = {"ud_glock_muzzle"}
-- att.Slot = {"muzzle"}

att.SortOrder = 500

att.Model = "models/weapons/arccw/atts/uc_kkm_brake.mdl"
att.ModelOffset = Vector(0.07, 0, 0.165)
att.ModelScale = Vector(1.25, 1.25, 1.25)
att.OffsetAng = Angle(0, 0, 0)

att.IsMuzzleDevice = true

att.Mult_Recoil = .75
att.Mult_RecoilSide = .8

att.Add_BarrelLength = 1.5
att.Mult_SightTime = 1.1
att.Mult_Sway = 1.2
att.Mult_ShootVol = 1.2

att.AttachSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
