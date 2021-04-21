att.PrintName = "15 Round .22 LR Mag"
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

att.AutoStats = true

--att.Mult_SightTime = 1.4
--att.Mult_Recoil = 0.9
att.Mult_ReloadTime = 0.94
--att.Mult_SpeedMult = 0.9
att.Override_ClipSize = 15

att.ActivateElements = {"ud_mini14_15_22lr_mag"}

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_15_22lr"
end

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw/hk416/lowpolyhk416_762supp.ogg" -- Placeholder
    else
        return "weapons/arccw/hk416/lowpolyhk416_762fire.ogg" -- Placeholder
    end
end