att.PrintName = "2\" Stub Barrel"
att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Jesus Christ, I think I see the bullet sticking out."
att.Desc_Pros = {
    --"ud.auto"
}
att.Desc_Cons = {
    "ud.nofs",
    "ud.noubs"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_barrel"
att.SortOrder = -1

att.AutoStats = true

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

att.ActivateElements = {"ud_m16_stub_barrel"}
att.GivesFlags = {"m16_lmg"}