att.PrintName = "GEN3 Homeboy Slide"
att.AbbrevName = "Homeboy Slide"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "G17 NyteSite Slide"
end

att.Icon = Material("entities/att/acwatt_ud_glock_slide_nytesyte.png", "smooth mips")
att.Description = "Be the first in the hood to have the HoMeBoY brand Night Sights installed on your New-Model Glock!"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "ud.glock.nytesyte.1",
    "ud.glock.nytesyte.2",
}
att.Slot = "ud_glock_slide"

att.AutoStats = true

att.ActivateElements = {"ud_glock_slide_nytesyte"}

att.O_Hook_Override_RecoilDirection = function(wep, data)
    if wep:GetState() == ArcCW.STATE_SIGHTS then
        return {current = Angle(0, -1, 0)}
    end
end

att.O_Hook_Override_RecoilDirectionSide = function(wep, data)
    if wep:GetState() == ArcCW.STATE_SIGHTS then
        return {current = Angle(1, 0, 0)}
    end
end