att.PrintName = "Uzi 4.6\" Micro Barrel"
att.AbbrevName = "4.6\" Micro Barrel"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "STAP 4.6\" Micro Barrel"
end

att.Icon = Material("entities/att/acwatt_ud_uzi_body_micro.png", "smooth mips")
att.Description = "Extremely compact frame that turns this sub-machine gun into a machine pistol. Without an attach point for stocks, recoil is dramatically increased. Converts weapon to closed bolt operation."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.nostocks",
    "uc.noubs"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_uzi_frame"

att.AutoStats = true
att.SortOrder = 4.6

att.Mult_AccuracyMOA = 1.75
att.Mult_SightTime = 0.6
att.Mult_Recoil = 1.5
att.Mult_RecoilSide = 1.5
att.Mult_RPM = 1.5
att.Mult_Range = 0.5
att.Mult_HipDispersion = 1.5

att.Mult_DrawTime = 0.6
att.Mult_HolsterTime = 0.6

att.Add_BarrelLength = -8

att.Override_ChamberSize = 1
att.Mult_TriggerDelayTime = 0

att.LHIK = true

att.Override_HoldtypeActive = "pistol"
att.Override_HoldtypeSights = "revolver"
att.Override_Trivia_Class = "Machine Pistol"
att.Override_Trivia_Mechanism = "Blowback"

att.Model = "models/weapons/arccw/atts/mini_lhik.mdl"

att.ActivateElements = {"ud_uzi_body_micro"}
att.GivesFlags = {"micro"}

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_micro"
end