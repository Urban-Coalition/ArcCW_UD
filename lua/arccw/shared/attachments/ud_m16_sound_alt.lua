att.PrintName = "Alternate Firing Sound"
att.AbbrevName = "Alt Sound"

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Change the firing sound to a more realistic variant."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_sound"
-- att.SortOrder = -10

att.AutoStats = true

att.Hook_GetShootSound = function(wep, fsound)
    if fsound == wep.FirstShootSound then return "weapons/arccw_ud/m16/first.ogg" end
    if fsound == wep.ShootSound then return {"weapons/arccw_ud/m16/auto1.ogg", "weapons/arccw_ud/m16/auto2.ogg", "weapons/arccw_ud/m16/auto3.ogg", "weapons/arccw_ud/m16/auto4.ogg"} end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then return "weapons/arccw_ud/m16/dist.ogg" end
end