att.PrintName = "Deep Rifling"

att.Icon = Material("entities/att/arccw_ud_deeprifling.png", "mips smooth")
att.Description = "A custom tailored rifling scheme allows bullets to strike with greater impact, penetrating deeper."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_fg"
att.AutoStats = true

att.Hook_Compatible = function(wep)
    if wep:GetIsShotgun() then
        return false
    end
end

att.Mult_Penetration = 1.25