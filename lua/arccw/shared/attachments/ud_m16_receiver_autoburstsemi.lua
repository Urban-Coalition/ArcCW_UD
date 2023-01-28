att.PrintName = "AMCAR-1 4-Position Receiver"
att.AbbrevName = "4-Position Lower"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "CAR-15 4-Position Receiver"
end

att.Description = "A fire control group that supports fully automatic fire. Comes in semi-auto-safe configuration."

att.Icon = Material("entities/att/acwatt_ud_m16_receiver_auto.png", "smooth mips")
att.Desc_Pros = {
    "uc.auto",
    "2x RPM in burst"
    --"ud.flattop"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_fcg"
--att.InvAtt = "ud_m16_receiver_auto"

att.AutoStats = true
att.SortOrder = 5

att.Mult_AccuracyMOA = 1.25
att.Mult_RPM = 0.85
att.Mult_HipDispersion = 1.125
att.Mult_ShootSpeedMult = 0.85

att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = -2,
        PostBurstDelay = 0.08,
        Mult_RPM = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

att.GivesFlags = {"m16_auto"}
att.ExcludeFlags = {"m16_noauto"}
-- att.ActivateElements = {"ud_m16_upper_flat"}
