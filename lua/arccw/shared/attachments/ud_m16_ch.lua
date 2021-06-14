att.PrintName = "Keep it Retro"
att.Icon = Material("entities/att/arccw_ud_keepitretro.png", "smooth mips")
att.Description = "Do not butcher your classic black rifle. Keep the carry handle while attaching an optic."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {
    " This attachment is cosmetic in nature, but your sight will be elevated, and you may obtain a less obstructed sight picture.",
    " However, while hip firing, your view will be more obstructed.",
    " Other than that, there is little benefit or detriment to your performance.",
    " This will disable alternate iron sight attachments."
}
att.Slot = "ud_m16_charm"

att.ActivateElements = {"ud_m16_upper_charm"}
att.GivesFlags = {"ud_m16_retro"}
att.ExcludeFlags = {"ud_m16_not_retro"}
att.KeepRetro = true

att.SortOrder = 1000