att.PrintName = "32-Round AMSMG Mag"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "32-Round 9mm AR-15 Mag"
end

att.SortOrder = -2
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "A long stick magazine for the 9mm AR-15 conversion."
att.Desc_Pros = {
    "pro.magcap"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_mag"

att.AutoStats = true

att.Override_ClipSize = 32
att.Mult_SightTime = 1.1
att.Mult_ReloadTime = 1.15
att.Mult_Sway = 1.25

att.RequireFlags = {"m16_9mm"}