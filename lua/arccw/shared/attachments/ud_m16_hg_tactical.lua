att.PrintName = "AU RIS Forearm Grip" -- "Armorers United"
if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "KAC RAS Forend Assembly"
end
att.AbbrevName = "Tactical Handguard"

att.Description = "Barrel shroud equipped with a quad-rail RIS interface, allowing the rifle to accept the attachment of tactical devices or foregrips without any additional modification.\n\nFunctionally identical to the stock handguard."
att.Desc_Neutrals = {
    "uc.cosmetic"
}
att.Slot = "ud_m16_hg"
att.SortOrder = 99

att.Free = true
att.IgnorePickX = true

att.ActivateElements = {"mount_tactical"}
att.GivesFlags = {"ud_m16_rscompatible"}