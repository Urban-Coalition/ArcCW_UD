att.PrintName = "Mini-14 15-Round .22 LR Mag"
att.AbbrevName = "15-Round .22 LR Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Patriot 809 15-Round .22 LR Mag"
end

att.SortOrder = 15
att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Aftermarket .22 Long Rifle conversion for the Mini-14. While the light, weak cartridge has poor stopping power, its recoil is extremely manageable, making it a cinch to follow up shots."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_mag"

att.AutoStats = true

att.Mult_SightTime = 0.8
att.Mult_ReloadTime = 0.85
att.Mult_Sway = 0.75

att.Mult_Damage = 0.4
att.Mult_DamageMin = 0.4
att.Mult_Range = 0.5
att.Mult_Recoil = 0.4
att.Mult_VisualRecoilMult = 0.25
att.Mult_RPM = 2
att.Mult_Penetration = 0.1
att.Mult_ShootSpeedMult = 1.2

att.Override_ClipSize = 15

att.ActivateElements = {"ud_mini14_15_22lr_mag"}

att.Override_Ammo = "pistol"
att.Override_Trivia_Calibre = ".22 Long Rifle"
att.Override_ShellModel = "models/shells/shell_9mm.mdl"
att.Override_ShellMaterial = "models/weapons/arcticcw/shell_9mm"
att.Override_ShellScale = 0.75
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