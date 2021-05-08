att.PrintName = "10.5\" AMCAR SD Barrel"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "10.5\" M16 SD Barrel"
end

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Integrally suppressed short barrel made by hobbyists. Dampens sound effectively, but fires slower and adds to weapon weight."
att.Desc_Pros = {
    --"ud.auto"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_barrel"

att.AutoStats = true

att.Mult_SightTime = 1.1
att.Mult_SpeedMult = 0.975
att.Mult_SightedSpeedMult = 0.9

att.Mult_Recoil = 1.25
att.Mult_AccuracyMOA = 0.8
att.Mult_Range = 0.8
att.Mult_Sway = 1.5

att.Add_BarrelLength = -6

att.Mult_ShootVol = 0.65
att.Silencer = true
att.Override_MuzzleEffect = "muzzleflash_suppressed"
att.GivesFlags = {"sd"}