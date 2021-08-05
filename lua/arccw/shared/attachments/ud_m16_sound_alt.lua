att.PrintName = "Alternate Firing Sound"
att.AbbrevName = "Alt Sound"
att.Ignore = true

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Change the firing sound to a heavier, more exaggerated variant."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_charm"
-- att.SortOrder = -10

att.AutoStats = true

local path = "weapons/arccw_ud/m16/"

att.Hook_GetShootSound = function(wep, fsound)
    if fsound == wep.FirstShootSound then return path .. "fire_first.ogg" end
    if fsound == wep.ShootSound then return {path .. "fire_auto_1.ogg", path .. "fire_auto_2.ogg", path .. "fire_auto_3.ogg"} end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then return path .. "fire_dist.ogg" end
end