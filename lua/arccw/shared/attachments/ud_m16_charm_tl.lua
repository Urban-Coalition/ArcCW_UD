att.PrintName = "Tactical Laser Position"
att.Icon = Material("entities/att/arccw_ud_pointshoot.png", "smooth mips")
att.Description = "Give your AN/PEQ a reason to be thin."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {
    "ud.m16_tl.1",
    "ud.m16_tl.2",
    "ud.m16_nors"
}
att.Slot = "ud_m16_charm"

att.ActivateElements = {"bravo_dicks_going_fart"}
att.AdditionalSights = {
    {
        Pos = Vector(0, 20, -6),
        Ang = Angle(0, 0, -25),
        GlobalPos = false,
        GlobalAng = true,
        Magnification = 1
    }
}

att.SortOrder = 998
att.TacLaserPos = true
att.RequireFlags = {"tac"}

att.Ignore = true