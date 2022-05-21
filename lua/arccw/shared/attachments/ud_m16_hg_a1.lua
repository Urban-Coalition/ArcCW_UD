att.PrintName = "Prototype Triangular Handguard"
if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16A1 Triangular Handguard"
end
att.AbbrevName = "Triangular Handguard"

att.Description = "Classic handguard issued with the rifle's original models.\nIn comparison to the modern \"ribbed\" handguard, it is more comfortable to hold but prone to slipping."
att.Slot = "ud_m16_hg"
att.AutoStats = true

att.Mult_RecoilSide = 1.35
att.Mult_Recoil = 1.15

att.Mult_SightTime = .875
att.Mult_HipDispersion = .85

att.LHIK = true
att.Model = "models/weapons/arccw/atts/classic_lhik.mdl"
att.DroppedModel = "models/items/boxsrounds.mdl"

att.ActivateElements = {"hg_m16a1"}
att.GivesFlags = {"hg_no11"}
att.ExcludeFlags = {"blen_11"}