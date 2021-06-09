att.PrintName = "Slamfire Kit"

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Reckless removal of trigger safety features allows shells to fire immediately upon being cycled while the trigger is held. This enables rapid \"rack and fire\" behavior similar to old trench guns, but impacts weapon performance."
att.Desc_Pros = {
    "ud.slam"
}
att.Desc_Cons = {
    "ud.disp.100"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_fg"
att.AutoStats = true

att.Hook_Compatible = function(wep)
    if !wep:GetIsShotgun() or !wep:GetIsManualAction() then
        return false
    end
end

att.Mult_Recoil = 1.2
att.Mult_RecoilSide = 1.5

att.Add_HipDispersion = 100
att.Add_SightsDispersion = 100

att.Override_Firemodes = {
    {
        Mode = 2,
        PrintName = "SLAM",
    },
    {
        Mode = 0
    }
}