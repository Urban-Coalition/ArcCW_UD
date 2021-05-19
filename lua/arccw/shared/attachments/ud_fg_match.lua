att.PrintName = "Match Trigger"

att.Icon = Material("entities/att/arccw_ud_matchgradetrigger.png", "mips smooth")
att.Description = "Hair trigger for competition shooting allows crisp trigger pulls, improving first shot performance."
att.Desc_Pros = {
    "ud.match",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_fg"
att.SortOrder = 2
att.AutoStats = true

att.Hook_Compatible = function(wep)
    if wep:GetIsManualAction() or wep:GetIsShotgun() then
        return false
    end
end

--att.Mult_RPM = 0.9
att.Override_ShotRecoilTable = {0.7}
--[[]
att.M_Hook_Mult_AccuracyMOA = function(wep, data)
    if wep:GetBurstCount() == 0 then
        data.mult = data.mult * 0.5
    end
end
]]