att.PrintName = "Mini-30 7.62x39mm Receiver"
att.AbbrevName = "7.62x39mm Receiver"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Patriot 816 7.62x39mm Receiver"
end

att.SortOrder = 30
att.Icon = Material("entities/att/acwatt_ud_mini14_receiver_762.png", "smooth mips")
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

att.Mult_Damage = 1.5
att.Mult_DamageMin = 1.5
att.Mult_Range = 2

att.Override_Malfunction = true
att.Mult_MalfunctionVariance = 1.5

att.Override_Ammo = "ar2"
att.Override_Trivia_Calibre = "7.62x39mm"
att.Override_ShellModel = "models/weapons/arccw/uc_shells/762x39.mdl"
att.Override_ShellScale = 1

att.ActivateElements = {"ud_mini14_receiver_762"}
att.GivesFlags = {"mini14_762"}

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/mini14/fire_762_supp.ogg" -- Not Placeholder
    else
        return "weapons/arccw_ud/mini14/fire_762.ogg" -- Not Placeholder
    end
end