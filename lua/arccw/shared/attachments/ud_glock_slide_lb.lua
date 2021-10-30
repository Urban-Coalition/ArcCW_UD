att.PrintName = "GEN3L Long Slide"
att.AbbrevName = "Long Slide"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Glock 17L Long Slide"
end

att.Icon = Material("entities/att/acwatt_ud_glock_slide_lb.png", "smooth mips")
att.Description = "A somewhat uncommon long polymer slide.\nThe longer barrel improves precision but is awkward to handle."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_slide"

att.AutoStats = true

att.Mult_DrawTime = 1.15
att.Mult_HolsterTime = 1.15
att.Add_BarrelLength = 4

att.Mult_Sway = 1.25
att.Mult_HipDispersion = 1.15
att.Mult_SightTime = 1.1

att.Mult_AccuracyMOA = 0.85
att.Mult_Recoil = 0.85
att.Mult_Range = 1.25

att.ActivateElements = {"ud_glock_slide_lb"}