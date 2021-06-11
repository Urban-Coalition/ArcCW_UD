att.PrintName = "GEN3 Op. CS Slide"
att.AbbrevName = "Op. CS Slide"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "G18C Op. CS Slide"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "3 round burst conversion, custom-made and used by various counter-terrorism units and 'agents' around the world."
att.Desc_Pros = {
    "ud.3burst",
}
att.Desc_Cons = {
    "ud.jam"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_slide"

att.AutoStats = true

--att.Mult_SightTime = 1
--att.Mult_Recoil = 1
--att.Mult_SpeedMult = 1
att.Mult_MoveDispersion = 1.4
att.Mult_HipDispersion = 1.20
att.Mult_ShootSpeedMult = 0.85

att.Override_Malfunction = true

att.Override_Firemodes = {
    {
        Mode = -3,
        Mult_RPM = 4,
        PostBurstDelay = 0.15
    },
    {
        Mode = 1,
    },
    {
        PrintName = "LOW",
        Mode = 0,
    }
}

-- att.Hook_TranslateAnimation = function(wep, anim)
--     if (anim == "fire" || anim == "fire_empty") then
--         return anim .. "_18"
--     end
-- end

att.ActivateElements = {"ud_glock_slide_cs"}