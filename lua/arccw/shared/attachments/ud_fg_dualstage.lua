att.PrintName = "Dual-Stage Trigger"

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Eat your heart out Arctic"
att.Desc_Pros = {
    "+15% Fire rate after first shot"
}
att.Desc_Cons = {
    "-50% Fire rate for first shot"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_fg"

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

function att.Hook_ModifyRPM(wep,delay)
    if wep:GetBurstCount() > 0 then
        return delay * .85
    else
        return delay * 1.5
    end
end