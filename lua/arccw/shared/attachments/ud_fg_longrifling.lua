att.PrintName = "Long Rifling"

att.Icon = Material("entities/att/arccw_ud_longrifling.png", "mips smooth")
att.Description = "Custom rifling improves muzzle velocity, allowing the weapon to shoot further."
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

att.Mult_Range = 1.1