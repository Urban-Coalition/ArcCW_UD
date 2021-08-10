att.PrintName = "Glock .40 S&W Conversion"
att.AbbrevName = ".40 S&W"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "GEN3 .40 S&W Conversion"
end

att.SortOrder = 100
att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Law-enforcement caliber with a slightly larger bullet and shorter case.\nPerforms better at range."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_caliber"

att.AutoStats = true

att.Override_Trivia_Calibre = ".40 S&W"

att.Mult_DamageMin = 1.17
att.Mult_RangeMin = 0.75
att.Mult_Recoil = 1.15

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp.ogg" -- Placeholder
    else
        return "weapons/arccw_ud/glock/fire_10.ogg" -- Not Placeholder
    end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then
        return "weapons/arccw_ud/glock/fire_dist_40.ogg" end
end