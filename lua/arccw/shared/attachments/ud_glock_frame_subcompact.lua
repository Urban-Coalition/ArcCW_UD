att.PrintName = "GEN3K Subcompact Frame"
att.AbbrevName = "Subcompact Frame"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Glock 26 Subcompact Frame"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "A smaller frame that is noticably shorter on the magwell.\nFast to handle, but the smaller grip surface affects handling."
att.Desc_Pros = {
    "ud.glock.subcompact"
}
att.Desc_Cons = {
    "ud.nostocks"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_frame"

att.AutoStats = true

att.Mult_DrawTime = 0.85
att.Mult_HolsterTime = 0.75
att.Mult_Recoil = 1.15
att.Mult_SightedSpeedMult = 1.05
att.Mult_SightTime = 0.9

-- Put this on the slide attachment you fucking moron
-- att.Mult_DrawTime = .85
-- att.Mult_SightTime = .9
-- att.Add_BarrelLength = -4
-- att.Mult_AccuracyMOA = 1.5
-- att.Mult_Range = .45
-- att.Mult_Recoil = 1.25

att.ActivateElements = {"ud_glock_frame_subcompact"}
att.AddFlags = {"ud_glock_frame_subcompact"}