att.PrintName = "32-Round AMSMG Mag"
att.AbbrevName = "32-Round Mag"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "32-Round 9mm AR-15 Mag"
end

att.Icon = Material("entities/att/acwatt_ud_m16_9mm_32.png", "smooth mips")
att.Description = "A long stick magazine for the 9mm caliber conversion."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "ud_m16_mag"

att.AutoStats = true
att.HideIfBlocked = true

att.Override_ClipSize = 32
att.Mult_SightTime = 1.1
att.Mult_ReloadTime = 1.15
att.Mult_Sway = 1.25
att.Mult_ShootSpeedMult = 0.95

att.ActivateElements = {"ud_m16_9mm_mag_32"}
att.RequireFlags = {"m16_9mm"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_9mm"
end