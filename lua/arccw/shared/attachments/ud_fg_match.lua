att.PrintName = "Match Trigger"

att.Icon = Material("entities/att/arccw_ud_matchgradetrigger.png", "mips smooth")
att.Description = "Hair trigger for competition shooting allows crisp trigger pulls, improving first shot recoil."
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

att.Override_ShotRecoilTable = {0.75}