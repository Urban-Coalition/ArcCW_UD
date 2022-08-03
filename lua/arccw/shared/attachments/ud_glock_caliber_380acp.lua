att.PrintName = "Glock .380 ACP Conversion"
att.AbbrevName = ".380 ACP"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "GEN3 .380 ACP Conversion"
end

att.SortOrder = 50
att.Icon = Material("entities/att/acwatt_uc_cal_380acp.png", "smooth mips")
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


att.Mult_Damage = ArcCW.UC.CalConv("9mm", "380acp", "max")
att.Mult_DamageMin = ArcCW.UC.CalConv("9mm", "380acp", "min")
att.Mult_Penetration = ArcCW.UC.CalConv("9mm", "380acp", "pen")

att.Mult_Recoil = 0.65
att.Override_PhysBulletMuzzleVelocity = 310

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
        -- fallback to script
    else
        return { "weapons/arccw_ud/glock/fire_dist_380.ogg" }
    end
end

local path = ")^weapons/arccw_ud/glock/"
att.Hook_GetDistantShootSoundIndoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return {
            path .. "fire-dist-int-light-01.ogg",
            path .. "fire-dist-int-light-02.ogg",
            path .. "fire-dist-int-light-03.ogg",
            path .. "fire-dist-int-light-04.ogg",
            path .. "fire-dist-int-light-05.ogg",
            path .. "fire-dist-int-light-06.ogg"
        }
    end
end

att.GivesFlags = {"cal_subsonic"}
att.ExcludeFlags = {"powder_subsonic"}
