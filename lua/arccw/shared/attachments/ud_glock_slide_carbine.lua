att.PrintName = "GEN3 Carbine Slide"
att.AbbrevName = "Carbine Slide"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Glock 17 Euro Carbine Slide"
end

att.Icon = Material("entities/att/acwatt_ud_glock_slide_carbine.png", "smooth mips")
att.Description = "Extraordinarily long extended barrel. Designed for use in countries where handguns are banned, in order to fulfil minimum length requirements."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_slide"

att.AutoStats = true

att.Mult_SightTime = 1.75
att.Mult_Recoil = 0.5
att.Mult_AccuracyMOA = 0.25
att.Mult_Sway = 2
att.Mult_Range = 3

att.Mult_DrawTime = 1.5
att.Mult_HolsterTime = 1.5

att.Add_BarrelLength = 32

att.ActivateElements = {"ud_glock_slide_carbine"}