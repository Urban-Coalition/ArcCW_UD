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

att.Mult_SpeedMult = 1.25
att.Mult_SightTime = 0.65
att.Mult_SightedSpeedMult = 1.25
att.Mult_ShootSpeedMult = 1.25

att.Mult_DrawTime = 0.5
att.Mult_HolsterTime = 0.5

att.Mult_Recoil = 2.15
att.Mult_RecoilSide = 3.15
att.Mult_VisualRecoilMult = 0.5

att.Add_BarrelLength = -4
att.Mult_Sway = 3.25

att.ActivateElements = {"ud_870_stock_raptor"}