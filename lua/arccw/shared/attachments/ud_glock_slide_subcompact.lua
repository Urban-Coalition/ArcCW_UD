att.PrintName = "GEN3K Subcompact Slide"
att.AbbrevName = "Subcompact Slide"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Glock 26 Subcompact Slide"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Shortest available slide. Reduced length means less holster to clear and improved handling. However, this comes at the cost of accuracy, range and control."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_slide"

att.AutoStats = true

-- Put this on the slide attachment you fucking moron
-- ok
att.Mult_DrawTime = 0.85
att.Mult_SightTime = 0.9
att.Add_BarrelLength = -4
att.Mult_AccuracyMOA = 1.5
att.Mult_Range = 0.45
att.Mult_Recoil = 1.25
-- :)

att.ActivateElements = {"ud_glock_slide_subompact"}
att.AddFlags = {"ud_glock_slide_subcompact"}
att.RequireFlags = {"ud_glock_frame_subcompact"}