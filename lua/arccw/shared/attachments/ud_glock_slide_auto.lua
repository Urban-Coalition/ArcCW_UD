att.PrintName = "G18 Slide"
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Description"
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
att.Mult_RPM = 2

att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
}

att.Hook_TranslateAnimation = function(wep, anim)
    if (anim == "fire" || anim == "fire_empty") then
        return anim .. "_18"
    end
end

att.ActivateElements = {"ud_glock_slide_auto"}