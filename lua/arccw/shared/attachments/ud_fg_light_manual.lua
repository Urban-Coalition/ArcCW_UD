att.PrintName = "Light Bolt"

att.Icon = Material("entities/att/arccw_ud_lightbolt.png", "mips smooth")
att.Description = "A low weight set of bolt components that speeds up bolt handling but increases recoil."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_fg"
att.AutoStats = true
att.SortOrder = 3
att.InvAtt = "ud_fg_light"

att.Mult_Recoil = 1.25
att.Mult_CycleTime = 0.9

att.Hook_Compatible = function(wep)
    if not wep:GetIsManualAction() then
        return false
    end
end