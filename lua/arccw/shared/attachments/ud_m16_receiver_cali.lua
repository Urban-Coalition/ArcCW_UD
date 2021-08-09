att.PrintName = "UKCAR .223 Receiver"
att.AbbrevName = "Manual Receiver"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "AR-15GB .223 Receiver"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Straight-pull bolt action receiver for the M16, designed to comply with British centrefire rifle laws."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "ud.manual"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_receiver"
att.AutoStats = true
att.SortOrder = -100
att.Override_CaseEffectAttachment = 6

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
att.Mult_Range = 1.15