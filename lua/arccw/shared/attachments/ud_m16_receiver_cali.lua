att.PrintName = "M16 California Compliant Receiver"
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "bolt action m16 :trollscream:"
att.Desc_Pros = {
}
att.Desc_Cons = {
    "ud.manual"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_receiver"
att.AutoStats = true
att.Ignore = true

att.Override_Firemodes = {
    {
        Mode = 1,
        PrintName = "BOLT",
    },
    {
        Mode = 0
    }
}

att.Hook_TranslateAnimation = function(wep, anim)
    if (anim == "fire" || anim == "fire_empty") then
        return "fire_cycle"
    end
end

att.Override_ManualAction = true
att.Mult_AccuracyMOA = 0.75