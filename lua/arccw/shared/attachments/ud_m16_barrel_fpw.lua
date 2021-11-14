att.PrintName = "14.5\" FPW Barrel"

att.Icon = Material("entities/att/acwatt_ud_m16_barrel_fpw.png", "smooth mips")
att.Description = "Barrel from an M231 Firing Port Weapon. Originally intended to be fired from inside an IFV, the FPW has an insanely high cyclic rate and makes no considerations for recoil, accuracy or heat."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.nofs",
    "uc.overheat"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_barrel"

att.AutoStats = true

att.Mult_SightTime = 0.85

att.Mult_RPM = 1.601
att.Mult_Recoil = 1.25
att.Mult_RecoilSide = 1.5
att.Mult_Range = 0.65
--att.Mult_Sway = 1.25
att.Mult_AccuracyMOA = 2
att.Mult_HipDispersion = 0.85

att.Override_Jamming = true
att.Override_HeatLockout = false
att.Override_HeatCapacity = 180
att.Override_HeatDissipation = 20

att.A_Hook_Add_SightsDispersion = function(wep, data)
    if data and (!wep.Attachments[1].Installed or wep.Attachments[1].Installed == "ud_m16_rs") then
        data.add = data.add + 50
    end
end

att.Add_BarrelLength = -4
att.Mult_PhysBulletMuzzleVelocity = 0.729167

att.LHIK = true

att.Model = "models/weapons/arccw/atts/fpw_lhik.mdl"

att.ActivateElements = {"hg_fpw", "barrel_14", "mount_14"}

att.Hook_ModifyRPM = function(wep, delay)
    local heat = math.Clamp(wep:GetHeat() / wep:GetMaxHeat(), 0, 1)
    if heat > 0.5 then
        return delay * (1 + ((heat - 0.5) / 0.5) ^ 2 * 2)
    end
end

att.M_Hook_Mult_AccuracyMOA = function(wep, data)
    local heat = math.Clamp(wep:GetHeat() / wep:GetMaxHeat(), 0, 1)
    if heat > 0.5 then
        data.mult = data.mult * (1 + ((heat - 0.5) / 0.5) ^ 2)
    end
end