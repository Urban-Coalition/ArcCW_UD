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
}
att.Slot = "ud_glock_slide"

att.AutoStats = true

att.Mult_SightTime = 1.25
att.Mult_HipDispersion = 0.9

att.ActivateElements = {"ud_glock_slide_nytesyte"}