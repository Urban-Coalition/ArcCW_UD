att.PrintName = "AMCAR .300 Blackout Upper Receiver"
att.AbbrevName = ".300 BLK Upper"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "AR-15 .300 Blackout Upper Receiver"
end

att.Description = "Aftermarket receiver that fires .300 Blackout cartridges, identical to 5.56x45mm in diameter but with a much larger projectile.\nIts subsonic muzzle velocity makes it well suited for suppressor use."

att.Icon = Material("entities/att/acwatt_ud_m16_receiver_auto.png", "smooth mips")
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_receiver"

att.AutoStats = true
att.SortOrder = 4

att.Mult_Damage = 1.17
att.Mult_DamageMin = 0.75
att.Mult_Penetration = 10 / 14
att.Mult_ShootVol = 105 / 120

att.Mult_HeatDissipation = 1.5

att.Override_PhysBulletMuzzleVelocity = 310

att.Override_PhysTracerProfile = 7
att.Override_TracerNum = 0

att.Override_ShellModel = "models/weapons/arccw/uc_shells/300blk.mdl"
att.Override_ShellScale = 1

att.Override_Trivia_Calibre = ".300 AAC Blackout"
att.AddSuffix = " .300"

local path = "weapons/arccw_ud/m16/"

att.Hook_GetShootSound = function(wep, sound) -- Temporary
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return {
            path .. "fire-300-01.ogg",
            path .. "fire-300-02.ogg",
            path .. "fire-300-03.ogg",
            path .. "fire-300-04.ogg",
            path .. "fire-300-05.ogg",
            path .. "fire-300-06.ogg"
        }
    end
end

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return { 
            path .. "fire-dist-300-01.ogg",
            path .. "fire-dist-300-02.ogg",
            path .. "fire-dist-300-03.ogg",
            path .. "fire-dist-300-04.ogg",
            path .. "fire-dist-300-05.ogg",
            path .. "fire-dist-300-06.ogg"
        }
    end
end