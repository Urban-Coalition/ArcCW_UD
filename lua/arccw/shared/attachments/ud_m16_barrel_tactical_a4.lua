att.PrintName = "20\" AMR-16 A4 Barrel"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "20\" M16A4 RIS Barrel"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Standard barrel shrouded by a quad-rail RIS handguard, giving the rifle the ability to accept the attachment of tactical devices or foregrips without any additional modification. Functionally identical to the A2 handguard."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_barrel"

att.ActivateElements = {"ud_m16_barrel_tactical_a4"}
-- The tactical A4 barrel seems to have been removed!