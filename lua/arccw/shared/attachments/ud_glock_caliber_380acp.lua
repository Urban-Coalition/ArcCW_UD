att.PrintName = "Glock .380 ACP Conversion"
att.AbbrevName = ".380 ACP"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "GEN3 .380 ACP Conversion"
end

att.SortOrder = 50
att.Icon = Material("entities/att/acwatt_ud_glock_caliber.png", "smooth mips")
att.Description = "An old and smaller pistol caliber that is somewhat obsolete.\nHas lower recoil and reduced effective range."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_caliber"

att.AutoStats = true

att.Override_Trivia_Calibre = ".380 ACP"

att.Mult_Range = 0.8
att.Mult_DamageMin = 0.9
att.Mult_Recoil = 0.65
att.Mult_Penetration = 3 / 6
att.Override_PhysBulletMuzzleVelocity = 312

att.Override_ShellModel = "models/weapons/arccw/uc_shells/357sig.mdl"
att.Override_ShellScale = 1

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp_380.ogg"
    else
        return "weapons/arccw_ud/glock/fire_380.ogg"
    end
end

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        return { "weapons/arccw_ud/glock/fire_dist_380.ogg" }
    else
        return { "weapons/arccw_ud/glock/fire_dist_380.ogg" }
    end
end

att.Hook_GetDistantShootSoundIndoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- return { "arccw_uo/frag/explosion-close-01.ogg", "arccw_uo/frag/explosion-close-02.ogg" }
    else
        -- return { "arccw_uo/frag/explosion-close-01.ogg", "arccw_uo/frag/explosion-close-02.ogg" }
    end
end

att.GivesFlags = {"cal_subsonic"}
att.ExcludeFlags = {"powder_subsonic"}
