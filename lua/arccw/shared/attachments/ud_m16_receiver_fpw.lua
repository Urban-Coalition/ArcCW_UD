att.PrintName = "AMFPW Receiver Package"
att.AbbrevName = "FPW Package"
att.Description = "Unique receiver group of the M231 Firing Port Weapon.\nOriginally intended to be fired from inside a fighting vehicle, the FPW has an insanely high cyclic rate, lacks a front sight and semi-automatic mode, fires from an open bolt, and makes no considerations for recoil, accuracy or heat. The trigger pull is also known to be very heavy."

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M231 FPW Receiver Package"
end

att.Icon = Material("entities/att/acwatt_ud_m16_receiver_a1.png", "smooth mips")
att.Desc_Pros = {
    "uc.auto"
}
att.Desc_Cons = {
    "uc.jam",
    "uc.nofs",
    "uc.overheat",
    "ud.m16.fpw1",
    "ud.m16.fpw2"
}
att.Desc_Neutrals = {
    "ud.m16_a1"
}
att.Slot = "ud_m16_fcg"
--att.InvAtt = "ud_m16_receiver_auto"

att.AutoStats = true
att.SortOrder = -6.5

att.Mult_RPM = 1103 / 900
att.Mult_Recoil = 1.25 / 1.1
att.Mult_RecoilSide = 1.5
att.Mult_Range = 0.9
--att.Mult_Sway = 1.25
att.Mult_AccuracyMOA = 4 / 3
att.Mult_HipDispersion = 0.85
att.Override_ChamberSize = 0

att.Override_TriggerDelay = true
att.Override_Malfunction = true

att.Override_Jamming = true
att.Override_HeatLockout = false
att.Override_HeatCapacity = 120
att.Override_HeatDissipation = 20

att.A_Hook_Add_SightsDispersion = function(wep, data)
    if data and (!wep.Attachments[1].Installed or wep.Attachments[1].Installed == "ud_m16_rs") then
        data.add = data.add + 50
    end
end

att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0
    }
}

att.Override_ChamberSize = 0

att.GivesFlags = {"m16_auto", "ud_m16_retro", "ud_m16_fpw", "sight_magpul", "patr3"}
att.ExcludeFlags = {"m16_noauto","ud_m16_not_retro"}
att.ActivateElements = {"upper_classic","ud_m16_upper_charm2"}
att.TopMount = 3