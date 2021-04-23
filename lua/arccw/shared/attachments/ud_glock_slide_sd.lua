att.PrintName = "GEN3 Silent Mistress Slide"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "G17SD Hush Puppy Slide"
end

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "A slide with an integrated silencer installed. A slide lock system prevents the weapon from cycling when fired, reducing its audible report."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_slide"

att.AutoStats = true

att.Mult_SightTime = 1.15
att.Mult_Recoil = 0.85
att.Mult_AccuracyMOA = 0.75
att.Mult_Sway = 1.75
att.Mult_Range = 1.25

att.Mult_ShootVol = 0.6

att.Silencer = true
att.Override_MuzzleEffect = "muzzleflash_suppressed"

att.Add_BarrelLength = 8

att.ActivateElements = {"ud_glock_slide_sd"}

att.GivesFlags = {"sd"}