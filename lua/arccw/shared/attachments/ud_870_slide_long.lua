att.PrintName = "Express-12 Long Forend"
att.AbbrevName = "Long Forend"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Remington 870 Long Forend"
end

att.Icon = Material("entities/att/acwatt_ud_870_slide_long.png", "smooth mips")
att.Description = "Long wood forend for the R870. Additional heft improves grip but is slower to cycle."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_870_slide"

att.AutoStats = true

--att.Mult_SightTime = 1.75
--att.Mult_Recoil = 0.5
--att.Mult_Sway = 3

att.Mult_SightTime = 1.15

att.Mult_Sway = 0.75
att.Mult_Recoil = 0.9
att.Mult_RecoilSide = 0.5

att.Mult_CycleTime = 1.1

att.ActivateElements = {"ud_870_slide_long"}