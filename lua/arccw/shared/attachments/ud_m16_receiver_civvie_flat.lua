att.PrintName = "AMCAR Civilian FT Receiver"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16 Civilian FT Receiver"
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
att.InvAtt = "ud_m16_receiver_civvie"

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

att.A_Hook_Add_SightsDispersion = function(wep, data)
    if data and !wep.Attachments[1].Installed then
        data.add = data.add + 100
    end
end

att.GivesFlags = {"m16_semi"}
att.ActivateElements = {"ud_m16_upper_flat"}