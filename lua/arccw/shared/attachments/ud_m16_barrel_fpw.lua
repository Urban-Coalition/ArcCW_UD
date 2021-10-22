att.PrintName = "11\" FPW Barrel"

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Barrel from an M231 Firing Port Weapon. Originally intended to be fired from inside an IFV, the FPW has an insanely high cyclic rate and makes no considerations for recoil, accuracy or heat."
att.Desc_Pros = {
    --"uc.auto"
}
att.Desc_Cons = {
    "uc.nofs",
    "uc.overheat"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_barrel"

att.AutoStats = true

att.Mult_SightTime = 0.9
att.Mult_SightedSpeedMult = 1.1

att.Mult_RPM = 1.389
att.Mult_Recoil = 1.25
att.Mult_RecoilSide = 1.5
att.Mult_Range = 0.65
--att.Mult_Sway = 1.25
att.Mult_AccuracyMOA = 3

att.Override_Jamming = true
att.Override_HeatLockout = true
att.Override_HeatCapacity = 75
att.Hook_PostOverheat = function(wep)
    wep:SetHeat(wep:GetHeat() - 20)
end

att.A_Hook_Add_SightsDispersion = function(wep, data)
    if data and !wep.Attachments[1].Installed then
        data.add = data.add + 100
    end
end

att.Add_BarrelLength = -3

--[[]
att.Override_Firemodes_Priority = 10
att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0
    }
}
att.ExcludeFlags = {"m16_auto", "m16_semi"}
att.GivesFlags = {"m16_noauto"}
]]

att.LHIK = true

att.Model = "models/weapons/arccw/atts/fpw_lhik.mdl"

att.ActivateElements = {"ud_m16_fpw_barrel"}
