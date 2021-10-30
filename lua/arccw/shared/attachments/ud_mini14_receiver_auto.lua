att.PrintName = "AC-556 Automatic Receiver"
att.AbbrevName = "Automatic Receiver"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Patriot ACC Automatic Receiver"
end

att.Icon = Material("entities/att/acwatt_ud_mini14_receiver_auto.png", "smooth mips")
att.Description = "Receiver adapted with a military auto sear and fire selector."
att.Desc_Pros = {
    "uc.auto"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_receiver"

att.AutoStats = true

att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = -3,
        Override_ShotRecoilTable = {
            [1] = 0.9,
            [2] = 0.8,
            [3] = 0.7,
        },
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

att.ActivateElements = {"ud_mini14_receiver_auto"}

att.Mult_RPM = 750 / 540

att.Mult_RecoilSide = 1.5
att.Mult_HipDispersion = 1.25
att.Mult_AccuracyMOA = 2
att.Mult_ShootSpeedMult = 0.85
att.Mult_MalfunctionMean = 0.75
att.Mult_MalfunctionVariance = 1.25