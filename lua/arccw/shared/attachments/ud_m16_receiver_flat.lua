att.PrintName = "AMCAR Flat Top Receiver"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16 Flat Top Receiver"
end

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "A hand-made flat top receiver that milled off the carry handle."
att.Desc_Pros = {
    "ud.flattop"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_receiver"
att.Free = true
att.SortOrder = 100

att.AutoStats = true

att.ActivateElements = {"ud_m16_upper_flat"}