att.PrintName = "Mini-30 7.62x39mm Receiver"
att.AbbrevName = "7.62x39mm Receiver"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Patriot 816 7.62x39mm Receiver"
end

att.SortOrder = 30
att.Icon = Material("entities/att/uc_bullets/762x39.png", "smooth mips")
att.Description = "A curious yet offically produced receiver variant made to circumvent caliber restrictions in deer hunting. The high pressure of this round makes this model liable to feeding failures."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.jam"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_receiver"

att.AutoStats = true

att.Mult_ReloadTime = 1.15
att.Mult_ShootSpeedMult = 0.8
att.Mult_RPM = 360 / 540

att.Mult_Recoil = 1.25
att.Mult_RecoilSide = 1.5
att.Mult_HipDispersion = 1.5

att.Mult_Damage = ArcCW.UC.CalConv("556", "762_39", "max")
att.Mult_DamageMin = ArcCW.UC.CalConv("556", "762_39", "min")
att.Mult_Penetration = ArcCW.UC.CalConv("556", "762_39", "pen")
att.Mult_Range = 2

att.Override_Malfunction = true
att.Mult_MalfunctionVariance = 1.5

att.Override_Ammo = "ar2"
att.Override_Trivia_Calibre = "7.62x39mm Soviet"
att.Override_ShellModel = "models/weapons/arccw/uc_shells/762x39.mdl"
att.Override_ShellScale = 0.666

att.ActivateElements = {"ud_mini14_receiver_762"}
att.GivesFlags = {"mini14_762"}

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/mini14/fire_762_supp.ogg" -- Not Placeholder
    else
        return "weapons/arccw_ud/mini14/fire_762.ogg" -- Not Placeholder
    end
end

local tail = ")/arccw_uc/common/762x39/"

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return {
            tail .. "fire-dist-762x39-rif-ext-01.ogg",
            tail .. "fire-dist-762x39-rif-ext-02.ogg",
            tail .. "fire-dist-762x39-rif-ext-03.ogg",
            tail .. "fire-dist-762x39-rif-ext-04.ogg",
            tail .. "fire-dist-762x39-rif-ext-05.ogg",
            tail .. "fire-dist-762x39-rif-ext-06.ogg"
        }
    end
end