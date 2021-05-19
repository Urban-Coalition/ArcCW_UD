att.PrintName = "Precision Rifling"

att.Icon = Material("entities/att/arccw_ud_precisionrifling.png", "mips smooth")
att.Description = "High-precision machined rifling allows the weapon to shoot much more consistently."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_fg"
att.AutoStats = true
att.SortOrder = 1

att.Hook_Compatible = function(wep)
    if wep:GetIsShotgun() then
        return false
    end
end

att.Mult_AccuracyMOA = 0.5