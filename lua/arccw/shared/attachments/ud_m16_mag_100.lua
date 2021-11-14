att.PrintName = "STANAG 100-Round C-Mag"
att.AbbrevName = "100-Round C-Mag"
att.SortOrder = 100
att.Icon = Material("entities/att/acwatt_ud_m16_mag_100.png", "smooth mips")
att.Description = "Twin-drum magazine compliant with STANAG 4179 dimensions, ideal for suppressive fire. Bulky construction and high ammo capacity substantially increases weight, making the weapon difficult to handle. Prone to feeding failures."
att.Desc_Pros = {}
att.Desc_Cons = {
    "uc.jam"
}
att.Desc_Neutrals = {}
att.Slot = "ud_m16_mag"

att.AutoStats = true
att.HideIfBlocked = true

att.Override_ClipSize = 100

att.Mult_SightTime = 1.5
att.Mult_ReloadTime = 1.5
att.Mult_Sway = 3

att.Mult_SpeedMult = 0.9
att.Mult_ShootSpeedMult = 0.8

att.Mult_DrawTime = 1.25
att.Mult_HolsterTime = 1.25

att.ActivateElements = {"ud_m16_mag_100"}

--[[]
att.Override_Jamming = true
att.Override_HeatCapacity = 200
att.Override_HeatDissipation = 4
att.Override_HeatDelayTime = 3
]]

att.Override_Malfunction = true
att.Mult_MalfunctionMean = 0.75
att.Mult_MalfunctionVariance = 1.5

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_100"
end

att.Hook_TranslateAnimation = function(wep, anim)
    if (anim == "fix") then
        return anim .. "_100"
    end
end

att.ExcludeFlags = {"m16_usas", "m16_9mm", "m16_50beo"}