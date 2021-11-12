att.PrintName = "GEN3K Subcompact Slide"
att.AbbrevName = "Subcompact Slide"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Glock 26 Subcompact Slide"
end

att.Icon = Material("entities/att/acwatt_ud_glock_slide_subcompact.png", "smooth mips")
att.Description = "Shortest available slide, popular for concealed carry.\nReduced length means less holster to clear and improved handling, but more muzzle rise and terrible effective range."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.noubs"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_slide"

att.AutoStats = true

att.Mult_DrawTime = 0.85
att.Mult_HolsterTime = 0.85
att.Add_BarrelLength = -4

att.Mult_Sway = 0.75
att.Mult_HipDispersion = 0.85
att.Mult_SightTime = 0.85

att.Mult_AccuracyMOA = 1.5
att.Mult_Range = 0.75
att.Mult_Recoil = 1.25

att.ActivateElements = {"ud_glock_slide_subompact"}
att.GivesFlags = {"ud_glock_slide_subcompact"}
att.RequireFlags = {"ud_glock_frame_subcompact"}