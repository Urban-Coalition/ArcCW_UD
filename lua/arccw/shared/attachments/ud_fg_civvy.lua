att.PrintName = "Civvy Conversion"

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Eat your heart out Arctic"
att.Desc_Pros = {
}
att.Desc_Cons = {
    "Semi-auto only"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_fg"
att.AutoStats = true

att.Hook_Compatible = function(wep)
    -- Shamelessly robbed from CS+
    for i, v in pairs(wep.Firemodes) do
        if !v then continue end
        if v.Mode and v.Mode != 1 and v.Mode != 0 then
            return
        end
    end

    return false
end

att.Override_Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}
att.Override_Firemodes_Priority = 999

att.Mult_Range = 1.25
att.Mult_RPM = .9