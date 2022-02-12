att.PrintName = "Glock 100-Round C-Mag"
att.AbbrevName = "100-Round C-Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "GEN3 100-Round C-Mag"
end

att.SortOrder = 100
att.Icon = Material("entities/att/acwatt_ud_glock_mag_100.png", "smooth mips")
att.Description = "Twin-drum magazine ideal for suppressive fire (a nicer way to say \"mag dump\"). Bulky construction and high ammo capacity substantially increases weight and shifts the weapon's center of balance. Prone to jamming."
att.Desc_Pros = {}
att.Desc_Cons = {
    "uc.jam"
}
att.Desc_Neutrals = {}
att.Slot = "ud_glock_mag"

att.AutoStats = true

att.Mult_SpeedMult = 0.95
att.Mult_SightTime = 1.2
att.Mult_ReloadTime = 1.5
att.Override_ClipSize = 100

att.Mult_HipDispersion = 1.5
att.Mult_Sway = 3
att.Mult_ShootSpeedMult = 0.9

att.Override_Malfunction = true
att.Mult_MalfunctionMean = 0.75
att.Mult_MalfunctionVariance = 1.5

att.ActivateElements = {"ud_glock_100_mag"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_100"
end

att.Hook_TranslateAnimation = function(wep, anim)
    if (anim == "fix") then
        return anim .. "_100"
    end
end