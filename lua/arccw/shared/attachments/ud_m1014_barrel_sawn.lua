att.PrintName = "12\" M4 Super 90 Sawn-Off Barrel"
att.AbbrevName = "12\" Sawn-Off Barrel"
att.Icon = Material("entities/att/acwatt_ud_m1014_barrel_short.png", "smooth mips")
att.Description = "Homemade short barrel with a very large spread and cannot use muzzle attachments. Marginally increases rate of fire."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.nofs",
    "uc.nomuzzle"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_1014_barrel"

att.AutoStats = true

att.Mult_AccuracyMOA = 2
att.Mult_Recoil = 1.25
att.Mult_Range = 0.5

att.Mult_Sway = 0.5
att.Mult_SightTime = 0.6
att.Mult_SpeedMult = 1.05
att.Mult_ShootSpeedMult = 1.2
att.Mult_RPM = 240 / 220

att.Add_BarrelLength = -6

att.ActivateElements = {"ud_autoshotgun_barrel_sawnoff"}
att.GivesFlags = {"nomuzzle"}

att.A_Hook_Add_SightsDispersion = function(wep, data)
    if data and !wep.Attachments[1].Installed then
        data.add = data.add + 50
    end
end