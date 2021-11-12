att.PrintName = "AMCAR-NG Automatic Receiver"
att.AbbrevName = "Automatic Receiver"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16A3 Automatic Receiver"
end

att.Description = "A receiver that allows automatic fire. Comes in semi-auto-safe configuration."

att.Icon = Material("entities/att/acwatt_ud_m16_receiver_auto.png", "smooth mips")
att.Desc_Pros = {
    "uc.auto",
    --"ud.flattop"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_receiver"
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
        Mode = 1,
    },
    {
        Mode = 0
    }
}

att.GivesFlags = {"m16_auto"}
att.ExcludeFlags = {"m16_noauto"}
-- att.ActivateElements = {"ud_m16_upper_flat"}
