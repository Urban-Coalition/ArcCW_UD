att.PrintName = "Pointman"

att.Icon = Material("entities/att/arccw_ud_tp_pointman.png", "smooth mips")
att.Description = "Firearms and dexterity training for quick response in breaching situations.\nThe pointman is always the first to enter, and the first to identify and disable threats."
att.Desc_Pros = {
    "ud.pointman"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_training"

att.AutoStats = true
att.SortOrder = 7

att.M_Hook_Mult_RPM = function(wep, data)
    if wep:GetCurrentFiremode().Mode == 1 then
        data.mult = data.mult * 1.15
    end
end