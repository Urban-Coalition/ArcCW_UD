att.PrintName = "Civvy Conversion"

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Adapt the gun for use in civilian markets, where fully-automatic firing weapons are usually outlawed."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "ud.semionly"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_fg"
att.AutoStats = true

att.Hook_Compatible = function(wep)
    if wep:GetIsManualAction() then
        return false
    end
end

att.Override_Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}
att.Override_Firemodes_Priority = 10

att.Mult_Range = 1.25
att.Mult_RPM = .9