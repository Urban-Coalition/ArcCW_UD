att.PrintName = "Express-12 Raptor Grip"
att.AbbrevName = "Raptor Grip"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName =  "Remington 870 Tac-14 Grip"
    att.AbbrevName = "Tac-14 Grip"
end

att.Icon = Material("entities/att/acwatt_ud_870_stock_raptor.png", "smooth mips")
att.Description = "Stockless polymer grip for when you simply don't care about accuracy or control, and just want the lightest gun possible."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_870_stock"

att.AutoStats = true

att.Mult_SpeedMult = 1.05
att.Mult_SightTime = 0.6
att.Mult_SightedSpeedMult = 1.2
att.Mult_ShootSpeedMult = 1.1

att.Mult_DrawTime = 0.6
att.Mult_HolsterTime = 0.6

att.Mult_Recoil = 1.75
att.Mult_RecoilSide = 2
att.Mult_VisualRecoilMult = 0.5

att.Add_BarrelLength = -4
att.Mult_Sway = 3

att.ActivateElements = {"ud_870_stock_raptor"}

att.Override_ActivePos = Vector(0.5, 5, 0.5)
att.Override_HoldtypeActive = "shotgun"
att.Override_HoldtypeSights = "ar2"