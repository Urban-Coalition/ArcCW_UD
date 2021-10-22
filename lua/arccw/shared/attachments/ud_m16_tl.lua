att.PrintName = "Tactical Laser Position"
att.Icon = Material("entities/att/arccw_ud_pointshoot.png", "smooth mips")
att.Description = "Give your AN/PEQ a reason to be thin."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {
    "uc.cosmetic"
}
att.Slot = "ud_m16_charm"

att.ActivateElements = {"bravo_dicks_going_fart"}
att.AdditionalSights = {
    {
        Pos = Vector(0, 22.5, -4),
        Ang = Angle(0, 0, -45),
        GlobalPos = false,
        GlobalAng = true,
        Magnification = 1
    }
}

att.SortOrder = 1000