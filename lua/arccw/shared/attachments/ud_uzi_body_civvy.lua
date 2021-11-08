att.PrintName = "Uzi 16\" Civilian Barrel"
att.AbbrevName = "16\" Civilian Barrel"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "STAP 16\" Civilian Barrel"
end

att.Icon = Material("entities/att/acwatt_ud_uzi_body_civvy.png", "smooth mips")
att.Description = "Civilian barrel for the Uzi, elongated to fit minimum length requirements. Substantially improves range and recoil, at the cost of prohibiting fully-automatic fire. Changes weapon to closed bolt operation."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.semionly"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_uzi_frame"

att.AutoStats = true
att.SortOrder = 16

att.Mult_AccuracyMOA = 0.5
att.Mult_SightTime = 1.25
att.Mult_Recoil = 0.75
att.Mult_RecoilSide = 0.5
att.Mult_RPM = 0.9
att.Mult_Range = 1.5
att.Mult_Sway = 2

att.Mult_TriggerDelayTime = 0
att.Override_ChamberSize = 1

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