att.PrintName = "GEN3 Subcompact Frame"
att.AbbrevName = "Subcompact Frame"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Glock 17 Subcompact Frame"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Subcompact frame. balance me lo"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_frame"

att.AutoStats = true

--att.Mult_ReloadTime = 0.8

att.ActivateElements = {"ud_glock_frame_subcompact"}