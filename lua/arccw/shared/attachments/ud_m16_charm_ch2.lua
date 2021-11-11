att.PrintName = "Classic Rail Mount"
att.Icon = Material("entities/att/acwatt_ud_m16_charm_ch2.png", "smooth mips")
att.Description = "Keep it extra retro with this old-school rail mount."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {
    "ud.m16_ch.1",
    "ud.m16_ch.2",
    "ud.m16_nors"
}
att.Slot = "ud_m16_charm"

att.ActivateElements = {"ud_m16_upper_charm2"}
att.GivesFlags = {"ud_m16_retro"}
att.ExcludeFlags = {"ud_m16_not_retro", "ud_m16_a1"}
att.TopMount = 4

att.SortOrder = 1000