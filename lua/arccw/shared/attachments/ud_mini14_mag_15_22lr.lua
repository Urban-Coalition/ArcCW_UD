att.PrintName = "15 Round Ranch Rifle .22LR"
att.SortOrder = 15
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = ".22 Long Rifle conversion for the Mini-14. While the light, weak cartridge has poor stopping power, its recoil is extremely manageable, making it a cinch to follow up shots."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "Reduced magazine capacity"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_mag"

att.Override_Ammo = "pistol"

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

att.Override_ClipSize = 15

att.ActivateElements = {"ud_mini14_15_22lr_mag"}

att.Override_Ammo = "pistol"
att.Override_Trivia_Calibre = ".22 Long Rifle"

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_15_22lr"
end

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw/hk416/lowpolyhk416_762supp.ogg" -- Placeholder
    else
        return "weapons/arccw/hk416/lowpolyhk416_762fire.ogg" -- Placeholder
    end
end