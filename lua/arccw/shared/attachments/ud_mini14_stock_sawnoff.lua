att.PrintName = "Mini-14 Sawn-off Stock"
att.AbbrevName = "Sawn-off Stock"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Patriot 809 Sawn-off Stock"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Using your hacksaw on the stock is not gunsmithing either."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_stock"

att.AutoStats = true

att.Mult_SightTime = 0.75
att.Mult_DrawTime = 0.75
att.Mult_HolsterTime = 0.75
att.Mult_Recoil = 1.5
att.Mult_RecoilSide = 1.5
att.Mult_Sway = 2

att.Add_BarrelLength = -4

att.ActivateElements = {"ud_mini14_stock_sawnoff"}