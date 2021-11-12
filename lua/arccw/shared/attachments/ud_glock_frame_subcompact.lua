att.PrintName = "GEN3K Subcompact Frame"
att.AbbrevName = "Subcompact Frame"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Glock 26 Subcompact Frame"
end

att.Icon = Material("entities/att/acwatt_ud_glock_frame_subcompact.png", "smooth mips")
att.Description = "A smaller frame that is noticably shorter on the magwell.\nFast to handle, but the smaller grip surface affects recoil control."
att.Desc_Pros = {
    "ud.glock.subcompact"
}
att.Desc_Cons = {
    "uc.nostocks"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_frame"

att.AutoStats = true

att.Mult_DrawTime = 0.75
att.Mult_HolsterTime = 0.75
att.Mult_Recoil = 1.15
att.Mult_SightedSpeedMult = 1.05
att.Mult_SightTime = 0.8

att.ActivateElements = {"ud_glock_frame_subcompact"}
att.GivesFlags = {"ud_glock_frame_subcompact"}