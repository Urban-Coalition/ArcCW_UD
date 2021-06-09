att.PrintName = "AMCAR-NG Retro Receiver"
--att.AbbrevName = "Retro Receiver"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16A4 Retro Receiver"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Automatic bolt carrier receiver with the old school carry handle intact."
att.Desc_Pros = {
    "ud.auto"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_receiver"
att.InvAtt = "ud_m16_receiver_auto_flat"

att.AutoStats = true
att.Ignore = true

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
