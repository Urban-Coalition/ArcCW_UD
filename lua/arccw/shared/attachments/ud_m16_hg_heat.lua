att.PrintName = "Prototype Heatshield Handguard"
if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16A1 Heatshield Handguard"
end
att.AbbrevName = "PLACEHOLDER Heatshield Handguard"

att.Description = "Placeholder grenadier/heatshield handguard."
att.Slot = "ud_m16_hg"
att.AutoStats = true

att.Mult_RecoilSide = 1.35

att.Mult_SightTime = 0.9
att.Mult_HipDispersion = 0.9

att.LHIK = false
att.Model = "models/weapons/arccw/atts/classic_lhik.mdl"
att.DroppedModel = "models/items/boxsrounds.mdl"

att.ActivateElements = {"hg_m16a1"}
att.GivesFlags = {"hg_no11"}
att.ExcludeFlags = {"blen_11"}