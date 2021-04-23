att.PrintName = "Match Trigger"

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Eat your heart out Arctic"
att.Desc_Pros = {
    "-25% Recoil for first shot"
}
att.Desc_Cons = {
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

att.Hook_ModifyRecoil = function(wep,rec)
    local recoil = 1

    if wep:GetBurstCount() == 0 then
        recoil = .75
    end

    return {
        Recoil = recoil
    }
end