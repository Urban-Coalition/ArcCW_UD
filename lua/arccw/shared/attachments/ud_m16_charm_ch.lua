att.PrintName = "Keep it Retro"
att.Icon = Material("entities/att/arccw_ud_keepitretro.png", "smooth mips")
att.Description = "Reject flat top. Return to carry handle."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {
    "ud.m16_ch.1",
    "ud.m16_ch.2",
    "ud.m16_nors"
}
att.Slot = "ud_m16_charm"

att.ActivateElements = {"ud_m16_upper_charm"}
att.GivesFlags = {"ud_m16_retro"}
att.ExcludeFlags = {"ud_m16_not_retro"}
att.KeepRetro = true

att.SortOrder = 1000