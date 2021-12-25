att.PrintName = "Express-12 Sawn-off Stock"
att.AbbrevName = "Sawn-off Stock"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Remington 870 Sawn-off Stock"
end

att.Icon = Material("entities/att/acwatt_ud_870_stock_sawnoff.png", "smooth mips")
att.Description = "Wooden stock with only a grip remaining. In case you want to roleplay as a bank robber."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_870_stock"

att.AutoStats = true

att.Mult_SpeedMult = 1.025
att.Mult_SightTime = 0.75
att.Mult_SightedSpeedMult = 1.1
att.Mult_ShootSpeedMult = 1.05

att.Mult_DrawTime = 0.75
att.Mult_HolsterTime = 0.75

att.Mult_Recoil = 1.5
att.Mult_RecoilSide = 2
att.Mult_VisualRecoilMult = 0.5

att.Add_BarrelLength = -4
att.Mult_Sway = 3

att.ActivateElements = {"ud_870_stock_sawnoff"}

att.Override_ActivePos = Vector(0.5, 5, 0.5)
att.Override_HoldtypeActive = "shotgun"
att.Override_HoldtypeSights = "ar2"