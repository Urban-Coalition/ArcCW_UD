att.PrintName = "M16 Civilian Receiver"
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Semi-automatic only receiver for civilian use."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "ud.semionly"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_receiver"

att.AutoStats = true
att.SortOrder = -1

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