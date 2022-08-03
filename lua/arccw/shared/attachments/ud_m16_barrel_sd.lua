att.PrintName = "10\" Suppressed Barrel"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "10\" M16 SD Barrel"
end

att.Icon = Material("entities/att/acwatt_ud_m16_barrel_sd.png", "smooth mips")
att.Description = "Integrally suppressed short barrel made by hobbyists. Dampens sound effectively, but the suppressor adds to weapon weight.\nPerformance may degrade with sustained fire."
att.Desc_Pros = {
    --"uc.auto"
}
att.Desc_Cons = {
    "uc.overheat"
}
att.Desc_Neutrals = {
    "uc.supptail",
    "ud.m16.allowfs",
}
att.Slot = "ud_m16_blen"

att.AutoStats = true

att.Mult_SightTime = 1.05

att.Mult_Range = 0.65
att.Mult_Recoil = 1.15
att.Mult_AccuracyMOA = 1.5
att.Mult_RPM = 1.111
att.Mult_HipDispersion = 0.75


att.Add_BarrelLength = -10
att.Mult_PhysBulletMuzzleVelocity = 0.78

att.LHIK = true

att.Model = "models/weapons/arccw/atts/m4_lhik.mdl"

att.Mult_ShootVol = 0.65
att.Silencer = true
att.Override_MuzzleEffect = "muzzleflash_suppressed"
att.GivesFlags = {"sd", "ud_m16_rscompatible", "ud_m16_sd"}
att.SDBarrel = true

att.ActivateElements = {"hg_sd"}

att.Override_Jamming = true
att.Override_HeatLockout = false
att.Override_HeatFix = false
att.Override_HeatCapacity = 90
att.Override_HeatDelayTime = 2
att.Override_HeatDissipation = 7.5

att.Hook_ModifyRPM = function(wep, delay)
    local heat = math.Clamp(wep:GetHeat() / wep:GetMaxHeat(), 0, 1)
    if heat > 0.5 then
        return delay * (1 + ((heat - 0.5) / 0.5) * 0.5)
    end
end

att.M_Hook_Mult_ShootVol = function(wep, data)
    local heat = math.Clamp(wep:GetHeat() / wep:GetMaxHeat(), 0, 1)
    data.mult = data.mult * (1 + heat * 0.25)
end

att.M_Hook_Mult_ShootPitch = function(wep, data)
    local heat = math.Clamp(wep:GetHeat() / wep:GetMaxHeat(), 0, 1)
    if heat > 0.5 then
        data.mult = data.mult * (1 - (heat - 0.5) / 0.5 * 0.15)
    end
end

att.M_Hook_Mult_AccuracyMOA = function(wep, data)
    local heat = math.Clamp(wep:GetHeat() / wep:GetMaxHeat(), 0, 1)
    if heat > 0.5 then
        data.mult = data.mult * (1 + ((heat - 0.5) / 0.5))
    end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if wep:GetBuff("PhysBulletMuzzleVelocity") < ArcCW.UC.SubsonicThreshold then
        return false
    end
end