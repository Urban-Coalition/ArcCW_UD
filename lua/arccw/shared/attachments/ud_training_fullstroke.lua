att.PrintName = "Full Stroke"

att.Icon = Material("entities/att/arccw_ud_full_stroke.png", "smooth mips")
att.Description = "Specialist training with your weapon allow you to cycle the action more quickly after a shot, improving your rate of fire."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_training"

att.AutoStats = true
att.SortOrder = 15

att.Mult_CycleTime = .9

att.Hook_Compatible = function(wep)
    if !wep:GetBuff_Override("Override_ManualAction", wep.ManualAction) then
        return false
    end
end