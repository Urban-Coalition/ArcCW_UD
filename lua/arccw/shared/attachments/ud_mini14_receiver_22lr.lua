att.PrintName = "Mini-14 .22 LR Receiver"
att.AbbrevName = ".22 LR Receiver"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Patriot 809 .22 LR Receiver"
end

att.Icon = Material("entities/att/acwatt_ud_mini14_receiver_22lr.png", "smooth mips")
att.Description = "Aftermarket .22 Long Rifle conversion for the Mini-14. While the light, weak cartridge has poor stopping power, its recoil is extremely manageable, making it a cinch to follow up shots."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_receiver"

att.AutoStats = true

att.Mult_SightTime = 0.8
att.Mult_ReloadTime = 0.85
att.Mult_Sway = 0.75

att.Mult_Damage = 0.4
att.Mult_DamageMin = 0.4
att.Mult_Range = 0.5
att.Mult_Recoil = 0.25
att.Mult_VisualRecoilMult = 0.25
att.Mult_RPM = 1000 / 540
att.Mult_Penetration = 0.1
att.Mult_ShootSpeedMult = 1.2

att.Override_ClipSize = 15

att.ActivateElements = {"ud_mini14_mag_15_22lr", "ud_mini14_receiver_22lr"}
att.GivesFlags = {"mini14_22lr"}

att.Override_Ammo = "plinking"
att.Override_Trivia_Calibre = ".22 Long Rifle"
att.Override_ShellModel = "models/weapons/arccw/uc_shells/22lr.mdl"
att.Override_ShellScale = 1
att.Override_ShellSounds = ArcCW.TinyShellSoundsTable

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_15_22lr"
end

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/mini14/fire_22_supp.ogg" -- Not Placeholder
    else
        return "weapons/arccw_ud/mini14/fire_22.ogg" -- Not Placeholder
    end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then
        return "weapons/arccw_ud/mini14/fire_22_dist.ogg" end
end

local slotinfo = {
    [7] = {"15-Round Mag", "15-Round Mag", Material("entities/att/acwatt_ud_mini14_mag_15_22lr.png", "smooth mips")},
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