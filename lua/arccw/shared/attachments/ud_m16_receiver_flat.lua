att.PrintName = "AMCAR Flat Top Receiver"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16 Flat Top Receiver"
end

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "A standard receiver that has had its carry handle cut off with an angle grinder. Lowers optic height, but has no rear sight."
att.Desc_Pros = {
    "ud.flattop"
}
att.Desc_Cons = {
    "ud.nofs"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_receiver"
att.Free = true
att.SortOrder = 100

att.A_Hook_Add_SightsDispersion = function(wep, data)
    if data and !wep.Attachments[1].Installed then
        data.add = data.add + 100
    end
end

att.AutoStats = true

att.ActivateElements = {"ud_m16_upper_flat"}