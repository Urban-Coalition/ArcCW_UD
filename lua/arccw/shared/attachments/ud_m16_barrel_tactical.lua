att.PrintName = "14.5\" CAR-4 RIS Barrel"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "14.5\" M4A1 RIS Barrel"
end

att.Icon = Material("entities/att/acwatt_ud_m16_barrel_tactical.png", "smooth mips")
att.Description = "Handguard from the SOPMOD I kit, giving the rifle the ability to better take the attachment of tactical devices or foregrips. Functionally identical to the carbine barrel."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_barrel"

att.AutoStats = true

att.Mult_SightTime = 0.85
att.Mult_SightedSpeedMult = 1.1
att.Mult_HipDispersion = 0.85

att.Mult_Recoil = 1.25
att.Mult_AccuracyMOA = 1.5
att.Mult_Range = 0.75
att.Mult_RPM = 1.111 --0.945
att.Mult_Sway = 0.85

att.Add_BarrelLength = -4
att.Mult_PhysBulletMuzzleVelocity = 0.833333

att.LHIK = true

att.Model = "models/weapons/arccw/atts/tactical_lhik.mdl"

att.ActivateElements = {"hg_m4a1_ris", "barrel_14"}