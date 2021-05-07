att.PrintName = "AMCAR Automatic Receiver"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16 Automatic Receiver"
end

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "An automatic receiver with auto-semi-safe firemodes, used in small quantities by the U.S. Navy."
att.Desc_Pros = {
    "ud.auto"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_receiver"

att.AutoStats = true

att.Mult_AccuracyMOA = 1.25
att.Mult_RPM = 0.85

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