att.PrintName = "Underload"

att.Icon = Material("entities/att/arccw_ud_tp_underload.png", "smooth")
att.Description = "Just because it fits, does not mean you have to fill it. Partially filled magazines reduces follower stress and improves feeding rate."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "ud.underload"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_training"

att.AutoStats = true

-- I give up, arctic help pls

function att.Hook_GetCapacity(wep, cap)
    return math.max(math.floor(cap * (1 - 0.14)), 1)
end

-- att.Add_ClipSize = math.floor(att.Hook_GetCapacity() * -.25)
att.Mult_MalfunctionMean = 1.25
att.Mult_HeatCapacity = 1.25
att.Mult_RPM = 1.05
att.Mult_ReloadTime = 0.95