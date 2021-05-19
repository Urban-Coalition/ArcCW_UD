att.PrintName = "Heavy Bolt"

att.Icon = Material("entities/att/arccw_ud_heavybolt.png", "mips smooth")
att.Description = "Heavyweight bolt that slows down cycling but improves recoil."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_fg"
att.AutoStats = true
att.InvAtt = "ud_fg_heavy"
att.SortOrder = 3

att.Mult_Recoil = 0.75
att.Mult_CycleTime = 1.1

att.Hook_Compatible = function(wep)
    if not wep:GetIsManualAction() then
        return false
    end
end