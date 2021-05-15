att.PrintName = "5.56mm AMCAR-NG Receiver"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "5.56mm M16A4 Receiver"
end

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "A more modern receiver that did away with the carry handle sight. Lowers optic height and uses a rail-mounted backup rear sight."
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