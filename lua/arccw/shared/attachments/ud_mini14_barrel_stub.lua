att.PrintName = "15\" Ranch Rifle Stub Barrel"
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.SortOrder = 1
att.Description = "No, using your hacksaw on the barrel is not gunsmithing."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_barrel"

att.Mult_SightTime = 0.65
att.Mult_Recoil = 1.2
att.Mult_AccuracyMOA = 3
att.Mult_Range = 0.4
att.Mult_Sway = 0.5

att.Mult_SightedSpeedMult = 1.2

att.Add_BarrelLength = -8

att.AutoStats = true

att.A_Hook_Add_SightsDispersion = function(wep, data)
    if not wep.Attachments[1].Installed then
        data.add = data.add + 200
    end
end