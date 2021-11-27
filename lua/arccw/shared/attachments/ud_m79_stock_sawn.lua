att.PrintName = "Sawn-off Stock"
att.Icon = Material("entities/att/acwatt_ud_m79_stock_sawn.png", "smooth mips")
att.Description = "Removing the wooden stock and leaving only a grip massively increases the agility of the weapon, but also makes it difficult to fire accurately or controllably."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.sightdisp.50"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m79_stock"

att.AutoStats = true
att.Free = true

att.Add_SightsDispersion = 50

att.Mult_Recoil = 1.5
att.Mult_RecoilSide = 1.5
att.Mult_Sway = 3

att.Mult_SightTime = 0.75
att.Mult_HipDispersion = 0.75

att.Mult_SpeedMult = 1.05
att.Mult_SightedSpeedMult = 1.1
att.Mult_ShootSpeedMult = 1.1

att.Mult_DrawTime = 0.5
att.Mult_HolsterTime = 0.5

att.ActivateElements = {"m79_nostock"}

att.Override_ActivePos = Vector(0.5, 2, 1.5)