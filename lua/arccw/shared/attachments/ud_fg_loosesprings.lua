att.PrintName = "Loose Springs"

att.Icon = Material("entities/att/arccw_ud_loosesprings.png", "mpis smooth")
att.Description = "With help from some loose magazine springs, it is possible to stuff more ammo in a magazine than is usually recommended."
att.Desc_Pros = {
    "ud.loosesprings"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_fg"
att.AutoStats = true

function att.Hook_GetCapacity(wep,cap)
    return math.max(cap + 1, math.floor(cap * 1.08))
end

att.Mult_RPM = .85
att.Mult_MalfunctionMean = 0.9
att.GivesFlags = {"ud_loosesprings"}
att.ExcludeFlags = {"ud_underload"}