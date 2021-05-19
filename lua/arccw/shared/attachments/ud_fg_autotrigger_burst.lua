att.PrintName = "Forced Reset Trigger"

att.Icon = Material("entities/att/arccw_ud_forcedresettrigger.png", "mips smooth")
att.Description = "Trigger system that pushes back against the shooter's finger, allowing them to fire much more rapidly. By the definition of the ATF, this does not count as full-automatic, for the time being at least."
att.Desc_Pros = {
    "ud.auto"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "ud.frcd_burst"
}
att.Slot = "ud_fg"
att.AutoStats = true
att.InvAtt = "ud_fg_autotrigger"
att.SortOrder = 2

att.Hook_Compatible = function(wep)
    if wep:GetIsManualAction() then return false end

    local burst = false
    for i, v in pairs(wep.Firemodes) do
        if !v then continue end
        if !v.Mode then continue end
        if v.Mode == 2 then
            -- Not available if gun has automatic firemode
            return false
        elseif v.Mode < 0 then
            -- Burst *needed* for this variant
            burst = true
        end
    end
    if !burst then return false end
end

att.Override_Firemodes_Priority = 100
att.Override_Firemodes = {
    {
        PrintName = "FRCD",
        Mode = 2,
    },
    {
        Mode = 0
    }
}

att.Mult_RPM = .8