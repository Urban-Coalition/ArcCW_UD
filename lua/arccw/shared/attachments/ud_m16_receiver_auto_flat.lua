att.PrintName = "AMCAR FT Receiver w/ Automatic Bolt Carrier"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16 Automatic FT Receiver"
end

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "A FT reciever with an added automatic bolt carrier."
att.Desc_Pros = {
    "ud.auto",
    "ud.flattop"
}
att.Desc_Cons = {
    "ud.nofs"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_receiver"
att.InvAtt = "ud_m16_receiver_auto"

att.AutoStats = true

att.Mult_AccuracyMOA = 1.25
att.Mult_RPM = 0.9

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

att.A_Hook_Add_SightsDispersion = function(wep, data)
    if data and !wep.Attachments[1].Installed then
        data.add = data.add + 100
    end
end

att.GivesFlags = {"m16_auto"}
att.ExcludeFlags = {"m16_noauto"}
att.ActivateElements = {"ud_m16_upper_flat"}
