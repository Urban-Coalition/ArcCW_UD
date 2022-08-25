att.PrintName = "RAYCAR TACTICS Forend Assembly" -- "Armorers United" ?? WHO
if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "KAC RAS Forend Assembly"
end
att.AbbrevName = "Tactical Handguard"
att.Icon = Material("entities/att/acwatt_ud_m16_hg_ris.png", "smooth mips")
att.Description = "Barrel shroud equipped with a quad-rail RIS interface, allowing the rifle to accept the attachment of tactical devices or foregrips without any additional modification.\n\nFunctionally identical to the stock handguard."
att.Desc_Neutrals = {
    "ud.m16.allowfs",
}
att.Slot = "ud_m16_hg"
att.SortOrder = 99

att.Free = true
att.IgnorePickX = true

att.LHIK = true
att.Model = "models/weapons/arccw/atts/tactical_lhik.mdl"
att.DroppedModel = "models/items/boxsrounds.mdl"
att.ModelOffset = (Vector(0.41, 0, -1.63) - Vector(11.5, 2.8, -4.2))

att.ActivateElements = {"mount_tactical"}
att.GivesFlags = {"ud_m16_rscompatible"}

