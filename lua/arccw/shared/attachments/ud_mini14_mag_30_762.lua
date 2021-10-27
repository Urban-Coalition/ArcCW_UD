att.PrintName = "Mini-30 7.62x39mm Magazine"
att.AbbrevName = "30-Round 7.62 Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Patriot 816 30-Round 7.62x39mm Mag"
end

att.SortOrder = 30
att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "You should kill yourself NOW!"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_mag"

att.AutoStats = true

att.Mult_SightTime = 1.1
att.Mult_ReloadTime = 1.15
att.Override_ClipSize = 30
att.Mult_Sway = 1.5
att.Mult_ShootSpeedMult = 0.95

att.ActivateElements = {"ud_mini14_30_mag"}

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/mini14/fire_762_supp.ogg" -- Not Placeholder
    else
        return "weapons/arccw_ud/mini14/fire_762.ogg" -- Not Placeholder
    end
end

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_30"
end