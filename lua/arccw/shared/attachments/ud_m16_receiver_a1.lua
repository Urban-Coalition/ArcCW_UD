att.PrintName = "AMRA1 Classic Receiver"
att.AbbrevName = "Classic Receiver"
att.Description = "Authentic receiver of the AMRA1 rifle, most notable for its use throughout the latter half of the Vietnam War and seldom wielded by fortunate ones. Functions identically to the Automatic Receiver."

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16A1 Classic Receiver"
    att.Description = "Authentic receiver of the M16A1 rifle, most notable for its use throughout the latter half of the Vietnam War and seldom wielded by fortunate ones. Functions identically to the Automatic Receiver."
end

att.Icon = Material("entities/att/acwatt_ud_m16_receiver_auto.png", "smooth mips")
att.Desc_Pros = {
    "uc.auto",
    --"ud.flattop"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "Triggers the effects of the Classic Rail Mount charm."
}
att.Slot = "ud_m16_receiver"
--att.InvAtt = "ud_m16_receiver_auto"

att.AutoStats = true

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

att.GivesFlags = {"m16_auto","ud_m16_retro"}
att.ExcludeFlags = {"m16_noauto","ud_m16_not_retro"}
att.ActivateElements = {"upper_classic","ud_m16_upper_charm2"}
att.TopMount = 4