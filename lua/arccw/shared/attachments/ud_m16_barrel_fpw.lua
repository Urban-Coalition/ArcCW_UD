att.PrintName = "15.6\" FPW Barrel"
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Barrel from an M231 Firing Port Weapon. Originally intended to be fired from inside the M2 Bradley IFV, the M231 FPW has an insanely high cyclic rate and makes no considerations for recoil, accuracy or heat."
att.Desc_Pros = {
    "pro.ud.auto"
}
att.Desc_Cons = {
    "con.fpw",
    "con.jam"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_barrel"

att.AutoStats = true

--att.Mult_SightTime = 1
--att.Mult_Recoil = 1
--att.Mult_SpeedMult = 1
att.Mult_RPM = 1.389
att.Mult_Recoil = 1.5
att.Mult_RecoilSide = 2
att.Mult_Range = 0.65
--att.Mult_Sway = 1.25
att.Mult_AccuracyMOA = 3

att.Override_Jamming = true
att.Override_HeatLockout = false
att.Override_HeatDissipation = 2
att.Override_HeatDissipation_Priority = 100
att.Mult_HeatCapacity = 0.5

att.A_Hook_Add_SightsDispersion = function(wep, data)
    if !data then return end

    if not wep.Attachments[1].Installed then
        data.add = data.add + 200
    end
end

att.Add_BarrelLength = -3

att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0
    }
}

att.LHIK = true

att.Model = "models/weapons/arccw/atts/fpw_lhik.mdl"

att.ActivateElements = {"ud_m16_fpw_barrel"}