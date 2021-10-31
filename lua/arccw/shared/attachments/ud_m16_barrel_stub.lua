att.PrintName = "2\" Stub Barrel"
att.Icon = Material("entities/att/obsolete.png", "mips smooth")
att.Description = "OBSOLETE" --"Jesus Christ, I think I see the bullet sticking out."
att.Desc_Pros = {
    --"uc.auto"
}
att.Desc_Cons = {
    "uc.nofs",
    "uc.noubs"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_barrel"
att.SortOrder = -1

att.AutoStats = true
att.Hidden = true

--att.Mult_SightTime = 1
--att.Mult_Recoil = 1
--att.Mult_SpeedMult = 1

att.Mult_Recoil = 2
att.Mult_AccuracyMOA = 5
att.Mult_Range = 0.25
att.Mult_RPM = 1.35
att.Mult_SpeedMult = 1.1
att.Mult_SightedSpeedMult = 1.25
att.Mult_SightTime = 0.6

att.A_Hook_Add_SightsDispersion = function(wep, data)
    if not wep.Attachments[1].Installed then
        data.add = data.add + 100
    end
end

att.Add_BarrelLength = -8

--[[]
att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0
    }
}
]]

att.LHIK = true

att.Model = "models/weapons/arccw/atts/stub_lhik.mdl"

att.ActivateElements = {"hg_stub", "barrel_stub"}
att.GivesFlags = {"m16_stub"}