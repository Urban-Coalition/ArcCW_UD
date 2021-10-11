att.PrintName = "10.5\" AMCAR-S Barrel"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "10.5\" M16 SD Barrel"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Integrally suppressed short barrel made by hobbyists. Dampens sound effectively, but fires slower and adds to weapon weight."
att.Desc_Pros = {
    --"uc.auto"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_barrel"

att.AutoStats = true

att.Mult_SightTime = 1.2

att.Mult_Recoil = 1.25
att.Mult_AccuracyMOA = 0.8
att.Mult_RPM = 1.111

att.Add_BarrelLength = -6

att.Mult_ShootVol = 0.65
att.Silencer = true
att.Override_MuzzleEffect = "muzzleflash_suppressed"
att.GivesFlags = {"sd"}
att.SDBarrel = true