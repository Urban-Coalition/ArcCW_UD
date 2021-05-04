att.PrintName = "Match Trigger"

att.Icon = Material("entities/att/arccw_ud_matchgradetrigger.png", "mips smooth")
att.Description = "Hair trigger for competition shooting allows crisp trigger pulls, improving first shot recoil."
att.Desc_Pros = {
    "ud.match"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_fg"

att.Hook_Compatible = function(wep)
    if wep:GetIsManualAction() or wep:GetIsShotgun() then
        return false
    end
end

att.Override_ShotRecoilTable = {0.75}