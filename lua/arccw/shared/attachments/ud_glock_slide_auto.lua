att.PrintName = "GEN3 Auto Slide"
att.AbbrevName = "Auto Slide"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Glock 18C Auto Slide"
end

att.Icon = Material("entities/att/acwatt_ud_glock_slide_auto.png", "smooth mips")
att.Description = "An automatic slide capable of a very high rate of fire. Compensator cuts at the top improve recoil control, although that does not change the fact that this is a hell of a bullet nozzle."
att.Desc_Pros = {
    "uc.auto",
}
att.Desc_Cons = {
    "uc.jam"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_slide"

att.AutoStats = true

att.Override_Trivia_Class = "Machine Pistol"

--att.Mult_SightTime = 1
--att.Mult_Recoil = 1
--att.Mult_SpeedMult = 1
att.Mult_MoveDispersion = 1.5
att.Mult_HipDispersion = 1.25
att.Mult_Recoil = 0.95
att.Mult_RPM = 2.38
att.Mult_ShootSpeedMult = 0.85

att.Override_Malfunction = true

att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        PrintName = "fcg.safe2",
        Mode = 0,
    }
}

-- att.Hook_TranslateAnimation = function(wep, anim)
--     if (anim == "fire" || anim == "fire_empty") then
--         return anim .. "_18"
--     end
-- end

att.ActivateElements = {"ud_glock_slide_auto"}
att.GivesFlags = {"ud_glock_auto"}
att.ExcludeFlags = {"ud_glock_not_9mil"}