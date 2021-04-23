att.PrintName = "Loose Springs"

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Eat your heart out Arctic"
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