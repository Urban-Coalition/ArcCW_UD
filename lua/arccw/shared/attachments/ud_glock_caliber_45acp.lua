att.PrintName = "Glock .45 ACP Conversion"
att.AbbrevName = ".45 ACP"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "GEN3 .45 ACP Conversion"
end

att.SortOrder = 70
att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "A venerable caliber with excellent stopping power.\nBecause of the large bullet diameter, magazine capacity is significantly reduced."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_caliber"

att.AutoStats = true

att.Override_Trivia_Calibre = ".45 ACP"

att.Mult_Damage = 1.2
att.Mult_DamageMin = 0.8

att.Mult_Recoil = 1.5
att.Mult_RecoilSide = 1.5
--att.Mult_RPM = 0.75
att.Mult_MalfunctionMean = 0.75

att.Mult_ClipSize = 0.75

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp.ogg" -- Placeholder
    else
        return "weapons/arccw_ud/glock/fire_45.ogg" -- Not Placeholder
    end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then
        return "weapons/arccw_ud/glock/fire_dist_45.ogg" end
end

--[[]
--att.Override_ClipSize = 13
--att.Override_ClipSize_Priority = -1
local slotinfo = {
    [7] = {"13-Round Mag", "13-Round Mag", nil},
}
att.Hook_GetDefaultAttName = function(wep, slot)
    if slotinfo[slot] then
        return GetConVar("arccw_truenames"):GetBool() and slotinfo[slot][2] or slotinfo[slot][1]
    end
end
att.Hook_GetDefaultAttIcon = function(wep, slot)
    if slotinfo[slot] then
        return slotinfo[slot][3]
    end
end
]]