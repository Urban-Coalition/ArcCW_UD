att.PrintName = "Tactical Laser Position"
att.Icon = Material("entities/att/arccw_ud_keepitretro.png", "smooth mips")
att.Description = "Give your AN/PEQ a reason to be thin."
att.Desc_Pros = {}
att.Desc_Cons = {}
--[[]
att.Desc_Neutrals = {
    " This attachment is cosmetic in nature, but your sight will be elevated, and you may obtain a less obstructed sight picture.",
    " However, while hip firing, your view will be more obstructed.",
    " Other than that, there is little benefit or detriment to your performance.",
    " This will disable alternate iron sight attachments."
}
]]
att.Slot = "ud_m16_charm"

att.ActivateElements = {"bravo_dicks_going_fart"}
att.AdditionalSights = {
    {
        Pos = Vector(0, 10, -4), -- relative to where att.Model is placed
        Ang = Angle(0, 0, -45),
        GlobalPos = false,
        GlobalAng = true,
        Magnification = 1
    }
}

att.SortOrder = 1000