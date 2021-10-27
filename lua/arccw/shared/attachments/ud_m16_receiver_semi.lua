att.PrintName = "AMCAR-NG Automatic Receiver"
att.AbbrevName = "Sporting Receiver"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "AR-15 Sporting Receiver"
end

att.Description = "A semi-automatic receiver sold in civilian markets. Designed for sport shooting, this receiver is more accurate and lightweight."

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.semionly"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_receiver"

att.AutoStats = true

att.Mult_RPM = 600 / 900
att.Mult_Recoil = 0.9
att.Mult_AccuracyMOA = 0.5
att.Mult_Range = 1.25
att.Mult_MoveDispersion = 0.75

att.Override_Firemodes_Priority = 0.5
att.Override_Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}
