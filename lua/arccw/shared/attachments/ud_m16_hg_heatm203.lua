att.PrintName = "Prototype Heatshield M203 Handguard"
if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16A1 Heatshield M203 Handguard"
end
att.AbbrevName = "PLACEHOLDER M203 Handguard"

att.Description = "Placeholder grenadier/heatshield handguard with *extra* placeholder M203."
att.Slot = "ud_m16_hg"
att.AutoStats = true

att.Mult_RecoilSide = 1.35

att.Mult_SightTime = 0.9
att.Mult_HipDispersion = 0.9

att.LHIK = true
att.Model = "models/weapons/arccw/atts/classic_lhik.mdl"
att.ModelOffset = Vector(0, 0, -2)
att.DroppedModel = "models/items/boxsrounds.mdl"

att.ActivateElements = {"hg_m16a1"}
att.GivesFlags = {"hg_no11"}
att.ExcludeFlags = {"blen_11"}