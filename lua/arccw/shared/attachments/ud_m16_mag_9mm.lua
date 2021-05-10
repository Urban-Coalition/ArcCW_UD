att.PrintName = "32-Round UZI 9mm Mag"
att.SortOrder = -1
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Description"
att.Desc_Pros = {
    "Increased magazine capacity"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_mag"

att.AutoStats = true

--att.Mult_SightTime = 0.85
--att.Mult_Recoil = 0.9
--att.Mult_ReloadTime = 0.9
--att.Mult_SpeedMult = 1.05
att.Override_ClipSize = 32
--att.Mult_Sway = 0.75

att.ActivateElements = {"ud_m16_9mm_mag"}

att.Override_Ammo = "pistol"
att.Override_Trivia_Calibre = "9x19 Parabellum"
att.Override_ShellModel = "models/shells/shell_9mm.mdl"
att.Override_ShellMaterial = "models/weapons/arcticcw/shell_9mm"
att.Override_ShellScale = 1

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/uzi/fire_supp.ogg" -- Placeholder
    else
        return "weapons/arccw_ud/uzi/fire.ogg" -- Placeholder
    end
end

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_9mm"
end