att.PrintName = "AMCAR-NG Automatic Receiver"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16A4 Automatic Receiver"
end

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "A receiver made to imitate the M16A4. Comes in semi-auto-safe configuration and has milled flat top with backup iron sights."
att.Desc_Pros = {
    "ud.auto",
    "ud.flattop"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_receiver"
--att.InvAtt = "ud_m16_receiver_auto"

att.AutoStats = true

att.Mult_AccuracyMOA = 1.25
att.Mult_RPM = 0.85
att.Mult_HipDispersion = 1.125

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
att.ActivateElements = {"ud_m16_upper_flat"}
