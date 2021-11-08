att.PrintName = "Uzi 13\" Carbine Barrel"
att.AbbrevName = "13\" Carbine Barrel"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "STAP 13\" Carbine Barrel"
end

att.Icon = Material("entities/att/acwatt_ud_uzi_body_carbine.png", "smooth mips")
att.Description = "Long barrel for the Uzi, built for long range patrols. Improves range and recoil."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_uzi_frame"

att.AutoStats = true
att.SortOrder = 13

att.Mult_AccuracyMOA = 0.75
att.Mult_SightTime = 1.15
att.Mult_Recoil = 0.9
att.Mult_RecoilSide = 0.75
att.Mult_RPM = 0.9
att.Mult_Range = 1.25
att.Mult_Sway = 1.5

att.Mult_TriggerDelayTime = 1.15

att.Add_BarrelLength = 5

att.ActivateElements = {"ud_uzi_body_carbine"}