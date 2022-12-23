att.PrintName = "Uzi 8\" Mini Barrel"
att.AbbrevName = "8\" Mini Barrel"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "STAP 8\" Mini Barrel"
end

att.Icon = Material("entities/att/acwatt_ud_uzi_body_mini.png", "smooth mips")
att.Description = "Compact frame with a higher firerate."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_uzi_frame"

att.AutoStats = true
att.SortOrder = 8

att.Mult_AccuracyMOA = 1.25
att.Mult_SightTime = 0.85
att.Mult_Recoil = 1.5
att.Mult_RecoilSide = 1.15
att.Mult_RPM = 1.25
att.Mult_Range = 0.75
att.Mult_HipDispersion = 1.25

att.Add_BarrelLength = -4

att.Mult_TriggerDelayTime = 0.75

att.LHIK = true

att.Override_HoldtypeActive = "pistol"
att.Override_HoldtypeSights = "revolver"

att.Model = "models/weapons/arccw/atts/tactical_lhik.mdl"
att.ModelOffset = Vector(2, -4.1, -1.9)
att.OffsetAng = Angle(10, 5, 0)

att.ActivateElements = {"ud_uzi_body_mini"}