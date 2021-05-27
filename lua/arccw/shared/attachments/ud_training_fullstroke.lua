att.PrintName = "Full Stroke"

att.Icon = Material("entities/att/arccw_ud_full_stroke.png", "smooth")
att.Description = "Specialist training with your weapon allow you to cycle the action more quickly after a shot, improving your rate of fire."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_training"

att.AutoStats = true

att.Mult_CycleTime = .9

att.Hook_Compatible = function(wep)
    if !wep.ManualAction then
        return false
    end
end