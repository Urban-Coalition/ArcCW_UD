att.PrintName = "Precision Rifling"

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Eat your heart out Arctic"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "Cannot be used with shotguns"
}
att.Slot = "ud_fg"
att.AutoStats = true

att.Hook_Compatible = function(wep)
    if wep:GetIsShotgun() then
        return false
    end
end

att.Mult_AccuracyMOA = 0.5