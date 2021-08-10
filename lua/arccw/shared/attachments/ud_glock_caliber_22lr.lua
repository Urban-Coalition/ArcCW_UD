att.PrintName = "Glock .22 LR Conversion"
att.AbbrevName = ".22 LR"

if not GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = ".22 LR Conversion"
end

att.SortOrder = 00
att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "A plinking cartridge that is easy to handle but not very lethal.\nIts form factor allows more rounds to be stuffed into magazines."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_caliber"

att.AutoStats = true

--att.Override_ClipSize = 20
--att.Override_ClipSize_Priority = -1

att.Override_Trivia_Calibre = ".22 LR"

att.Mult_Damage = 0.4
att.Mult_DamageMin = 0.4

att.Mult_Recoil = 0.4
att.Mult_VisualRecoilMult = 0.25
att.Mult_RPM = 1.5
att.Mult_Penetration = 0.1
att.Mult_ShootSpeedMult = 1.2

att.Mult_ClipSize = 1.2

att.Override_ShellScale = 0.75
att.Override_ShellSounds = ArcCW.TinyShellSoundsTable

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