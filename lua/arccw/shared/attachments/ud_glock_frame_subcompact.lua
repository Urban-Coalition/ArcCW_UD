att.PrintName = "GEN3K Subcompact Frame"
att.AbbrevName = "Subcompact Frame"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Glock 26 Subcompact Frame"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Subcompact frame. The smaller magwell is marginally easier to insert mags into, but offers less grip space."
att.Desc_Pros = {
    "Enables 10-Round Compact Mag"
}
att.Desc_Cons = {
    "ud.nostocks"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_frame"

att.AutoStats = true

--att.Mult_ReloadTime = 0.8

att.Mult_ReloadTime = .975
att.Mult_DrawTime = .9
att.Mult_Sway = 1.15

-- Put this on the slide attachment you fucking moron
-- att.Mult_DrawTime = .85
-- att.Mult_SightTime = .9
-- att.Add_BarrelLength = -4
-- att.Mult_AccuracyMOA = 1.5
-- att.Mult_Range = .45
-- att.Mult_Recoil = 1.25

att.ActivateElements = {"ud_glock_frame_subcompact"}
att.AddFlags = {"ud_glock_frame_subcompact"}