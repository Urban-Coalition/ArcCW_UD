att.PrintName = "AMCAR Civ. Flat Top Receiver"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16 Civ. Flat Top Receiver"
end

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Semi-automatic only receiver with removed carry handle."
att.Desc_Pros = {
    "ud.flattop"
}
att.Desc_Cons = {
    "ud.nofs",
    "ud.semionly"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_receiver"

att.AutoStats = true
att.SortOrder = -1.1

att.Mult_AccuracyMOA = 0.8
att.Mult_Range = 1.2

att.Override_Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

att.GivesFlags = {"m16_semi"}
att.ActivateElements = {"ud_m16_upper_flat"}