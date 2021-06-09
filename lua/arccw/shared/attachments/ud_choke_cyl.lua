att.PrintName = "Cylinder Choke"

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "A mildly tight shotgun choke. Tightens pellet spread at the cost of straight recoil."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "choke"
att.AutoStats = true

att.Hook_Compatible = function(wep)
    if !wep:GetIsShotgun() then
        return false
    end
end

att.Mult_Recoil = 1.1
att.Mult_AccuracyMOA = .9