att.PrintName = "AMCAR-NG Automatic Receiver"
att.AbbrevName = "Sporting Receiver"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "AR-15 Sporting Receiver"
end

att.Description = "A semi-automatic only receiver on civilian markets. Designed for sport shooting, this receiver is more accurate and lightweight."

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.semi"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_receiver"

att.AutoStats = true

att.Mult_AccuracyMOA = 0.6
att.Mult_SightTime = 0.85
att.Mult_MoveDispersion = 0.75

att.Override_Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}
