att.PrintName = "18\" M4 Super 90 Competition Barrel"
att.AbbrevName = "18\" Competition Barrel"
att.Icon = Material("entities/att/acwatt_ud_m1014_barrel.png", "smooth mips")
att.Description = "Hardened barrel with integral muzzle brake. Abiding by competition restrictions, it has a reduced rate of fire."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.nomuzzle"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_1014_barrel"

att.AutoStats = true
att.Add_BarrelLength = -1

att.Mult_RecoilSide = 0.75
att.Mult_Recoil = 0.85
att.Mult_SightTime = 0.9
att.Mult_Sway = 0.85

att.Mult_RangeMin = 0.5
att.Mult_RPM = 180 / 220

att.ActivateElements = {"ud_autoshotgun_barrel_sport"}
att.GivesFlags = {"nomuzzle"}