att.PrintName = "Forced Reset Trigger"

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Eat your heart out Arctic"
att.Desc_Pros = {
    "Fully automatic fire"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_fg"
att.AutoStats = true

att.Hook_Compatible = function(wep)
    if wep.ManualAction == true then return false end

    -- Shamelessly robbed from CS+
    for i, v in pairs(wep.Firemodes) do
        if !v then continue end
        if v.Mode == 2 or v.Mode < 0 then
            return false
        end
    end
end

att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0
    }
}

att.Mult_RPM = .95