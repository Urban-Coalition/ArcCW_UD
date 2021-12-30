att.PrintName = "Glock .380 ACP Conversion"
att.AbbrevName = ".380 ACP"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "GEN3 .380 ACP Conversion"
end

att.SortOrder = 50
att.Icon = Material("entities/att/acwatt_ud_glock_caliber.png", "smooth mips")
att.Description = "An old and smaller pistol caliber that is somewhat obsolete.\nHas lower recoil but also lower range and weaker stopping power."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_caliber"

att.AutoStats = true

att.Override_Trivia_Calibre = ".380 ACP"

att.Mult_Range = 0.75
att.Mult_Damage = 0.9
att.Mult_DamageMin = 0.9
att.Mult_Recoil = 0.65

att.Override_ShellModel = "models/weapons/arccw/uc_shells/357sig.mdl"
att.Override_ShellScale = 1

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp_380.ogg"
    else
        return "weapons/arccw_ud/glock/fire_380.ogg"
    end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then
        return "weapons/arccw_ud/glock/fire_dist_380.ogg" end
end