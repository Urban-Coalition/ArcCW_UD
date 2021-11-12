att.PrintName = "AMCAR Cam-lock Burst Receiver"
att.AbbrevName = "Alt. Burst Receiver"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16A2 Cam-lock Burst Receiver"
end

att.Description = "An alternative burst fire receiver that fires the entire burst with one trigger pull. This has a slight benefit for recoil control, but is mostly down to preference."

att.Icon = Material("entities/att/acwatt_ud_m16_receiver_default.png", "smooth mips")
att.Desc_Pros = {
    "ud.m16_altburst.1"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "ud.m16_altburst.2"
}
att.Slot = "ud_m16_receiver"

att.AutoStats = true
att.Free = true
att.SortOrder = 10


att.Override_Firemodes_Priority = 0.5
att.Override_Firemodes = {
    {
        Mode = -3,
        PostBurstDelay = 0.08,
        Mult_Recoil = 0.9,
        RunawayBurst = true, -- https://en.wikipedia.org/wiki/Burst_mode_(weapons)
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}
