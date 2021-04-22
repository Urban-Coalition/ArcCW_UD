att.PrintName = "14\" Wood M603 Barrel"
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Wooden handguard replicating that of the Colt Model 603. No such official product has ever been made, so all examples are the result of individual gunsmiths. Performs identically to the M4 barrel."
att.Desc_Pros = {
    "Full-auto"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_barrel"

att.AutoStats = true

--att.Mult_SightTime = 1
--att.Mult_Recoil = 1
--att.Mult_SpeedMult = 1

att.Mult_Recoil = 1.1
att.Mult_AccuracyMOA = 1.5
att.Mult_Range = 0.9
att.Mult_RPM = 0.8

att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

att.LHIK = true

att.Model = "models/weapons/arccw/atts/wood_short_lhik.mdl"

att.ActivateElements = {"ud_m16_wood_short_barrel"}