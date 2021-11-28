att.PrintName = "Mini-14 15\" Stub Barrel"
att.AbbrevName = "15\" Stub Barrel"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Patriot 809 15\" Stub Barrel"
end

att.Icon = Material("entities/att/acwatt_ud_mini14_barrel_stub.png", "smooth mips")
att.SortOrder = 15
att.Description = "No, using your hacksaw on the barrel is not gunsmithing."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.nofs",
    "uc.nomuzzle",
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_barrel"

att.Mult_SightTime = 0.65
att.Mult_Recoil = 1.25
att.Mult_AccuracyMOA = 3
att.Mult_Range = 0.25
att.Mult_Sway = 0.5
att.Mult_SightedSpeedMult = 1.25

att.Add_BarrelLength = -8

att.AutoStats = true

att.GivesFlags = {"nomuzzle"}

att.A_Hook_Add_SightsDispersion = function(wep, data)
    if data and !wep.Attachments[1].Installed then
        data.add = data.add + 50
    end
end