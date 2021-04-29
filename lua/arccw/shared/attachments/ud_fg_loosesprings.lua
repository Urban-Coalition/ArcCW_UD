att.PrintName = "Loose Springs"

att.Icon = Material("entities/att/arccw_ud_loosesprings.png", "mpis smooth")
att.Description = "With help from some loose magazine springs, it is possible to stuff more ammo in a magazine than is usually recommended."
att.Desc_Pros = {
    "+5% Magazine capacity"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_fg"
att.AutoStats = true

-- att.Hook_Compatible = function(wep)
--     if math.floor(wep.Primary.ClipSize * 1.05) == wep.Primary.ClipSize then
--         return false
--     end
-- end

function att.Hook_GetCapacity(wep,cap)
    return math.floor(cap * 1.05)
end

att.Mult_RPM = .85