if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Glock 18C Slide"
end

att.PrintName = "GEN 3 Auto Slide"
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "An automatic slide capable of a very high rate of fire. Compensator cuts at the top improve recoil control, although that does not change the fact that this is a hell of a bullet nozzle."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_slide"

att.AutoStats = true

--att.Mult_SightTime = 1
--att.Mult_Recoil = 1
--att.Mult_SpeedMult = 1
att.Mult_MoveDispersion = 1.5
att.Mult_HipDispersion = 1.25
att.Mult_Recoil = 0.9
att.Mult_RPM = 3

att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
}

-- att.Hook_TranslateAnimation = function(wep, anim)
--     if (anim == "fire" || anim == "fire_empty") then
--         return anim .. "_18"
--     end
-- end

att.ActivateElements = {"ud_glock_slide_auto"}