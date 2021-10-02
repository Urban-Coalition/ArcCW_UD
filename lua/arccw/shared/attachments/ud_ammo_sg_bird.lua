att.PrintName = "\"BIRD\" #9 Birdshot"

att.SortOrder = 4
att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = [[Hunting rounds with a wide spread and a very large number of pellets, designed to shoot birds out of the sky.
While not generally as lethal as buckshot, the loose clump spread makes it easier to hit small targets.]]
att.Desc_Pros = {
    "30 more pellets"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_ammo_shotgun"

att.AutoStats = true

att.Add_Num = 30 -- the game can't handle 585 bullets at once :c
att.Mult_Damage = .9
att.Mult_DamageMin = .9
att.Mult_Recoil = .9
att.Mult_AccuracyMOA = 2