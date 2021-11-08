att.PrintName = "GEN3 Op. CS Slide"
att.AbbrevName = "Op. CS Slide"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "G18C Op. CS Slide"
end

att.Icon = Material("entities/att/acwatt_ud_glock_slide_cs.png", "smooth mips")
att.Description = "Custom-made 3 round burst slide, used by various counter-terrorism units and 'agents' around the world. The standard-length magazines are also tweaked for increased capacity."
att.Desc_Pros = {
    "uc.3burst",
    "ud.glock.cs",
}
att.Desc_Cons = {
    "uc.jam"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_slide"

att.AutoStats = true

att.Mult_HipDispersion = 1.15
att.Mult_ShootSpeedMult = 0.9

att.Override_Malfunction = true

att.Override_Firemodes = {
    {
        Mode = -3,
        Mult_RPM = 3,
        PostBurstDelay = 0.2,
        RunawayBurst = true,
        Override_ShotRecoilTable = {
            [1] = 0.85,
            [2] = 0.7,
            [3] = 0.5,
        },
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

--[[]
function att.Hook_GetCapacity(wep,cap)
    if not wep.Attachments[6].Installed then
        return cap + 3
    end
end
]]
att.A_Hook_Add_ClipSize = function(wep, data)
    if not wep.Attachments[8].Installed then
        data.add = (data.add or 0) + 3
    end
end

att.Hook_GetDefaultAttName = function(wep, slot)
    if slot == 8 then
        return "20-Round Mag"
    end
end

att.ActivateElements = {"ud_glock_slide_cs"}