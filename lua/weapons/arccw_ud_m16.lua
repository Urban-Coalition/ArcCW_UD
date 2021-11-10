SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Coalition"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/weapons/arccw/ud_shells/556.mdl"
SWEP.ShellScale = 1.4
--SWEP.ShellMaterial = "models/weapons/arcticcw/shell_556"
SWEP.ShellPitch = 100

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.CamAttachment = 3
SWEP.TracerNum = 1
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "AMCAR"
-- AMCAR stands for (american) Colt Assault Rifle, not Carbine!! ~Fesiug
-- shut up retard ~zenith

-- True name --

SWEP.TrueName = "M16A2"

-- Trivia --
SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "Third generation of America's iconic military rifle. Army tests showed that soldiers were more likely to hit a target if they fired multiple shots, but were likely to spray in full-auto and fail to hit anything. As a result, they implemented a ratcheted three-round burst system which limited the maximum burst a soldier could fire to three shots. Well-rounded gun with no major downsides."
SWEP.Trivia_Manufacturer = "Stoner's Legacy Ltd."
SWEP.Trivia_Calibre = "5.56x45mm NATO"
SWEP.Trivia_Mechanism = "Gas-Operated Rotating Bolt"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1959

local origDesc = SWEP.Trivia_Desc
local m4Desc = "Carbine variant of the M16 rifle. Originally designed in response to design faults in the CAR-15 family, it eventually replaced the M16 across almost every branch of the Army for its favorably low weight and comparable performance. Well-rounded and light, but can become difficult to control without discipline."
local ncrDesc = "Standard-issue rifle of the New California Republic. Traditionally produced with a semi-automatic receiver, the wooden furniture is easily replaceable and adds additional recoil control for maximum accuracy. Well-rounded gun with no major downsides."

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Colt's Manufacturing Company"
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ud_m16.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ud_m16.mdl"
SWEP.ViewModelFOV = 70
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

-- Damage --

SWEP.Damage = 34 -- 3 shot kill
SWEP.DamageMin = 20 -- 5 shot kill
SWEP.RangeMin = 15
SWEP.Range = 175
SWEP.Penetration = 12
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 400

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 30
SWEP.ExtendedClipSize = 40
SWEP.ReducedClipSize = 20

-- Recoil --

SWEP.Recoil = 0.7
SWEP.RecoilSide = 0.3

SWEP.RecoilRise = 0.1
SWEP.RecoilPunch = 1
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 1
SWEP.MaxRecoilPunch = 1
SWEP.RecoilPunchBack = 1

SWEP.Sway = 0.5

-- Firerate / Firemodes --

SWEP.Delay = 60 / 900
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = -3,
        RunawayBurst = false, -- https://en.wikipedia.org/wiki/Burst_mode_(weapons)
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.ShootPitch = 100
SWEP.ShootVol = 120
SWEP.ShootPitchVariation = 0

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC --

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 60

-- Accuracy --

SWEP.AccuracyMOA = 4
SWEP.HipDispersion = 800
SWEP.MoveDispersion = 200
SWEP.JumpDispersion = 1000

SWEP.Primary.Ammo = "smg1"
SWEP.MagID = "m16"

SWEP.HeatCapacity = 150
SWEP.HeatDissipation = 10
SWEP.HeatDelayTime = 3

SWEP.MalfunctionMean = 200

-- Speed multipliers --

SWEP.SpeedMult = 0.925
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.5
SWEP.ShootSpeedMult = 0.9

-- Length --

SWEP.BarrelLength = 48
SWEP.ExtraSightDist = 7

-- Ironsights / Customization / Poses --

SWEP.HolsterPos = Vector(0.5, -1, 1.2)
SWEP.HolsterAng = Angle(-8.5, 8, -10)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-2.81, -3, 0.85),
     Ang = Angle(0, 0, 0),
     Magnification = 1.1,
     SwitchToSound = "",
}

SWEP.ActivePos = Vector(0.33, 0, 1)
SWEP.ActiveAng = Angle(0, 0, -3)

SWEP.CustomizePos = Vector(5, -2, -2)
SWEP.CustomizeAng = Angle(15, 25, 0)

SWEP.CrouchPos = Vector(-2.5, -2, -0.6)
SWEP.CrouchAng = Angle(0, 0, -14)

SWEP.BarrelOffsetHip = Vector(2, 0, -5)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-8, 4, -7.5),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Firing sounds --

local path = ")^weapons/arccw_ud/m16/"
local common = ")^/arccw_uc/common/"
SWEP.FirstShootSound = path .. "first.ogg"
SWEP.ShootSound = {path .. "auto1.ogg", path .. "auto2.ogg", path .. "auto3.ogg", path .. "auto4.ogg"}
SWEP.DistantShootSound = path .. "dist.ogg"
SWEP.ShootSoundSilenced = path .. "fire_sup.ogg"
SWEP.DistantShootSoundSilenced = path .. "fire_sup_dist.ogg"

-- Bodygroups --

SWEP.BulletBones = {
    [2] = "m16_bullets1",    [3] = "m16_bullets2"
}

local desg_barr = {
    ["ud_m16_barrel_lmg"]           =   8, -- amsaw lmg         20
    ["ud_m16_barrel_tactical_a4"]   =   9, -- Railed HG M16     20
    ["ud_m16_barrel_wood"]          =   4, -- service rifle     20
    ["ud_m16_barrel_fpw"]           =   3, -- FPW barrel        15.6
    ["ud_m16_barrel_m4"]            =   1, -- classic m4,       14.5
    ["ud_m16_barrel_wood_short"]    =   5, -- service carbine   14
    ["ud_m16_barrel_tactical"]      =   1, -- Railed HG M4      11.5
    ["ud_m16_barrel_cqbr"]          =   2, -- cant see the barr 10.5
    --["ud_m16_barrel_sd"]            =   2, -- amcar-s m4 sd     10.5
    ["ud_m16_barrel_stub"]          =   6, -- A BIT OF A STUB   2
    ["ud_m16_barrel_classic"]           =   10,
    ["ud_m16_barrel_classic_short"]           =   11, -- M605
    ["ud_m16_barrel_ru556"] = 12,
    ["ud_m16_barrel_adar"] = 13
}

local desg_rec = {
    ["ud_m16_receiver_auto"]        =   1,
    ["ud_m16_receiver_9mm"]         =   2,
    ["ud_m16_receiver_cali"]        =   3,
    ["ud_m16_receiver_usas"]        =   4,
    ["ud_m16_receiver_semi"]        =   5,
    ["ud_m16_receiver_50beo"]        =   5,
    ["ud_m16_receiver_a1"]          =   6,
}

local mftoflat = {
    ["AR"]     =   "M",
}

local nftoflat = {
    ["SMG"]     =   "SSMG", -- silenced smg
    ["16A2"]    =   "SB", -- silenced burst
    ["16A3"]    =   "SA", -- auto
    ["4"]       =   "SB", -- burst
    ["4A1"]     =   "SA", -- auto
    ["-15"]     =   "SS", -- semi
    ["-15GB"]   =   "SM", -- manual
}

SWEP.Hook_NameChange = function(wep, name)
    local barrel = desg_barr[wep.Attachments[2].Installed] or 0
    local rec = desg_rec[wep.Attachments[4].Installed] or 0
    local trueNames = GetConVar("arccw_truenames"):GetBool()

    wep.Trivia_Desc = origDesc
    wep.Trivia_Mechanism = "Gas-Operated Rotating Bolt"
    wep.Trivia_Country = "USA"

    -- service loadouts
    if barrel == 4 then
        wep.Trivia_Desc = ncrDesc
        wep.Trivia_Country = "NCR"
        if rec == 2 then
            return "Service SMG"
        end
        return "Service Rifle"
    end
    if barrel == 5 then
        wep.Trivia_Desc = ncrDesc
        wep.Trivia_Country = "NCR"
        if rec == 2 then
            return "Service SMG"
        end
        return "Service Carbine"
    end

    --[[]
    if trueNames and wep.Attachments[13].Installed == "ud_fg_civvy" then
        return "AR-15"
    end
    ]]

    local flat = (wep.Attachments[1].Installed or wep.Attachments[14].Installed) and !wep:GetBuff_Override("TopMount")

    if trueNames then
        local model = "M"
        local alt = "16A2"

        local sil = wep:GetBuff_Override("SDBarrel")
        local silHandled = !sil

        if barrel <= 2 and barrel > 0 then
            model = "XM"
            alt = "4"
            wep.Trivia_Desc = m4Desc
            if flat then
                model = "M"
                alt = "4 Carbine"
            end
        elseif rec == 0 and flat then
            alt = "16A4"
        end
        if rec == 1 then
            model = "M"
            alt = "16A3"
            wep.Trivia_Desc = m4Desc
            if barrel == 11 then
                alt = "605"
            elseif flat and barrel ~= 9 and barrel ~= 10 and barrel ~= 0 then
                alt = "4A1"
            elseif barrel == 1 then
                alt = "727"
            elseif barrel == 2 then
                alt = "733"
            else
                wep.Trivia_Desc = "Variant of the M16A2 with the original full-automatic trigger group, relegated to niche roles in the US Army. Well-rounded gun with no major downsides."
            end
        elseif rec == 2 then
            model = "R0"
            if flat then
                alt = "991"
            else
                alt = "635"
            end
            wep.Trivia_Desc = "Submachine gun based on the M16 rifle. Despite its similar appearance, it uses a different mechanism from its parent rifle. More accurate than other submachine guns due to its rifle frame and closed-bolt mechanism."
            wep.Trivia_Mechanism = "Blowback"
        elseif rec == 3 then
            model = "AR"
            alt = "-15GB"
            wep.Trivia_Desc = "AR-15 style rifles are a class of rifles linked to the M16, normally with a semi-automatic fire group for the civilian market. This one, however, has been neutered by authority of the British crown with a manual-action receiver. Bit cringe, innit?"
        elseif rec == 4 then
            model = "USAS"
            alt = "-12"
        elseif rec == 5 then
            if flat and barrel == 13 then
                model = "ADAR "
                alt = "2-15"
            else
                model = "AR"
                alt = "-15"
            end
            wep.Trivia_Desc = "AR-15 style rifles are a class of rifles linked to the M16, but with a semi-automatic fire group for the civilian market. Such rifles are controversial due to their use in mass shootings, but nonetheless popular for sporting and home defense. Well-rounded gun with no major downsides."
        end
        if barrel == 3 then
            alt = "231 FPW"
        elseif barrel == 6 then
            alt = "4 Stub"
        elseif barrel == 8 then
            alt = "16 LSW"
            wep.Trivia_Desc = "Configuration of the M16 designed for a light machine gun role, used vaguely within the Marine Corps before the adoption of the Minimi. Heavier than the standard platform, but the integral bipod can be deployed onto surfaces for excellent recoil control."
        end

        if !silHandled then
            if mftoflat[model] then model = mftoflat[model] silHandled = true end
            if nftoflat[alt] then alt = nftoflat[alt] silHandled = true end
            if !silHandled then alt = alt .. "-S" end
        end

        return model .. alt
    else
        -- work on this in a few
        if false then
            return "AMCAR-NG"
        elseif false then
            return "AMSAS-12"
        elseif false then
            return "AMPAW-9"
        elseif false then
            return "UKCAR .223"
        elseif false then
            return "RUCAR 225"
        else
            return "AMCAR"
        end
    end
end

SWEP.DefaultBodygroups = "000000000000000"

SWEP.AttachmentElements = {

    ["ud_m16_mag_20"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },
    ["ud_m16_mag_40"] = {
        VMBodygroups = {{ind = 2, bg = 2}},
    },
    ["ud_m16_mag_60"] = {
        VMBodygroups = {{ind = 2, bg = 3}},
    },
    ["ud_m16_mag_100"] = {
        VMBodygroups = {{ind = 2, bg = 4}},
    },
    ["ud_m16_9mm_mag"] = {
        VMBodygroups = {{ind = 2, bg = 5}},
    },
    ["ud_m16_9mm_mag_32"] = {
        VMBodygroups = {{ind = 2, bg = 8}},
    },
    ["ud_m16_usas_mag_20"] = {
        VMBodygroups = {{ind = 2, bg = 7}},
    },
    ["ud_m16_mag_50beo"] = {
        VMBodygroups = {{ind = 2, bg = 10}},
    },

    ["upper_flat"] = {
        -- handled by code
        --[[]
        VMBodygroups = {
            {ind = 1, bg = 1},
            {ind = 3, bg = 3}
        },
        ]]
    },
    ["upper_classic"] = {
        VMBodygroups = {
            {ind = 1, bg = 5},
        },
    },

    ["stock_231_ex"] = {
        VMBodygroups = {{ind = 7, bg = 2}},
    },
    ["stock_231_in"] = {
        VMBodygroups = {{ind = 7, bg = 3}},
    },
    ["stock_231_tube"] = {
        VMBodygroups = {{ind = 7, bg = 4}},
    },
    ["stock_607_ex"] = {
        VMBodygroups = {{ind = 7, bg = 5}},
    },
    ["stock_607_in"] = {
        VMBodygroups = {{ind = 7, bg = 6}},
    },
    ["stock_608"] = {
        VMBodygroups = {{ind = 7, bg = 7}},
    },
    ["stock_carbine_ex"] = {
        VMBodygroups = {{ind = 7, bg = 8}},
    },
    ["stock_carbine_in"] = {
        VMBodygroups = {{ind = 7, bg = 9}},
    },
    ["stock_wood"] = {
        VMBodygroups = {{ind = 7, bg = 10}},
    },
    ["stock_adar"] = {
        VMBodygroups = {
            {ind = 7, bg = 11},
            {ind = 8, bg = 4}
        },
    },
    ["stock_ru556"] = {
        VMBodygroups = {{ind = 7, bg = 12}},
    },
    ["grip_ergo"] = {
        VMBodygroups = {{ind = 8, bg = 1}},
    },
    ["grip_skel"] = {
        VMBodygroups = {{ind = 8, bg = 2}},
    },
    ["grip_wood"] = {
        VMBodygroups = {{ind = 8, bg = 3}},
    },

    ["gasblock_carbine"] = {
        VMBodygroups = {{ind = 6, bg = 3}},
    },
    ["fs_adar"] = {
        VMBodygroups = {{ind = 6, bg = 4}},
    },

    ["barrel_14"] = {
        VMBodygroups = {
            {ind = 4, bg = 1},
            {ind = 6, bg = 2},
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, 24.5),
                vang = Angle(90, 0, -90),
            },
            [6] = {
                vpos = Vector(0, 0.8, 20),
                vang = Angle(90, 0, -90),
            },
        }
    },
    ["barrel_11"] = {
        VMBodygroups = {
            {ind = 4, bg = 2},
            {ind = 6, bg = 2},
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, 19.75),
                vang = Angle(90, 0, -90),
            },
            [6] = {
                vpos = Vector(1, 0, 17.9),
                vang = Angle(90, 0, 0),
            },
        }
    },
    ["barrel_11_ru556"] = {
        VMBodygroups = {
            {ind = 4, bg = 4},
            {ind = 6, bg = 5},
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, 19.75),
                vang = Angle(90, 0, -90),
            },
            [6] = {
                vpos = Vector(1, 0, 17.9),
                vang = Angle(90, 0, 0),
            },
        }
    },

    ["hg_m16a4_ris"] = {
        VMBodygroups = {
            {ind = 5, bg = 2},
        },
        AttPosMods = {
            [5] = {
                vpos = Vector(-0.1, 1.05, 12),
                vang = Angle(90, 0, -90),
            },
            [6] = {
                vpos = Vector(1.1, 0, 20),
                vang = Angle(90, 0, 0),
            },
        }
    },
    ["hg_m4a1_ris"] = {
        VMBodygroups = {
            {ind = 5, bg = 5},
        },
        AttPosMods = {
            [5] = {
                vpos = Vector(-0.1, 1.05, 12),
                vang = Angle(90, 0, -90),
            },
            [6] = {
                vpos = Vector(1.1, 0, 14),
                vang = Angle(90, 0, 0),
            },
        },
    },
    ["hg_ru556"] = {
        VMBodygroups = {
            {ind = 5, bg = 7},
        },
        AttPosMods = {
            [5] = {
                vpos = Vector(-0.1, 1.05, 12),
                vang = Angle(90, 0, -90),
            },
            [6] = {
                vpos = Vector(1.1, 0, 14),
                vang = Angle(90, 0, 0),
            },
        },
    },
    ["hg_m4a1"] = {
        VMBodygroups = {
            {ind = 5, bg = 4},
        }
    },
    ["hg_cqbr"] = {
        VMBodygroups = {
            {ind = 5, bg = 4},
        },
    },
    ["hg_adar"] = {
        VMBodygroups = {
            {ind = 5, bg = 8},
        },
    },
    ["hg_fpw"] = {
        VMBodygroups = {
            {ind = 5, bg = 6},
            --{ind = 6, bg = 4},
        }
    },
    ["hg_m16a1"] = {
        VMBodygroups = {
            {ind = 5, bg = 1},
        }
    },
    ["hg_m16a1_wood"] = {
        VMBodygroups = {
            {ind = 5, bg = 1},
        },
        VMSkin = 1
    },
    ["hg_m605"] = {
        VMBodygroups = {
            {ind = 5, bg = 1},
            {ind = 4, bg = 1},
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, 25),
                vang = Angle(90, 0, -90),
            },
        }
    },
    ["hg_m605_wood"] = {
        VMBodygroups = {
            {ind = 5, bg = 1},
            {ind = 4, bg = 1},
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, 25),
                vang = Angle(90, 0, -90),
            },
        },
        VMSkin = 1
    },
    ["hg_lmg"] = {
        VMBodygroups = {
            {ind = 5, bg = 3},
        }
    },
    ["hg_sd"] = {
        VMBodygroups = {
            {ind = 5, bg = 9},
            {ind = 4, bg = 3},
            {ind = 6, bg = 5}
        },
        AttPosMods = { -- no rail, just pretend it's mounted to something
            [6] = {
                vpos = Vector(0, 0.5, 17.5),
                vang = Angle(90, 0, -90),
            },
        }
    },

    ["ud_m16_upper_charm"] = {
        AttPosMods = {
            [1] = {
                vpos = Vector(0, -4, 3),
                vang = Angle(90, 0, -90),
            },
        },
    },
    ["ud_m16_upper_charm2"] = {
        AttPosMods = {
            [1] = {
                vpos = Vector(0, -4.1, 3.5),
                vang = Angle(90, 0, -90),
            },
        },
    },
    ["m16_strap"] = {
        VMBodygroups = {
            {ind = 13, bg = 1},
        },
    },
    ["bravo_dicks_going_fart"] = {
        AttPosMods = {
            [6] = {
                vpos = Vector(0, -1.05, 10),
                vang = Angle(90, 0, 90),
            },
        },
    },

    ---- Cut content
    ["hg_stub"] = {
        VMBodygroups = {
            {ind = 5, bg = 7},
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(0, -0.35, 7),
                vang = Angle(90, 0, -90),
            },
            [6] = {
                vpos = Vector(1.1, -0.4, 9),
                vang = Angle(90, 0, 0),
            },
        }
    },
    ["barrel_stub"] = {
        VMBodygroups = {
            {ind = 4, bg = 4},
            {ind = 6, bg = 4},
        }
    },
    ["hg_smg"] = {
        VMBodygroups = {
            {ind = 5, bg = 0},
        }
    },
    ["hg_usas"] = {
        VMBodygroups = {
            {ind = 0, bg = 1},
            {ind = 1, bg = 2},
            {ind = 4, bg = 7},
            {ind = 5, bg = 1},
            {ind = 2, bg = 6},
        },
        AttPosMods = {
            --[[
            [1] = {
                vpos = Vector(0, -4, 3),
                vang = Angle(90, 0, -90),
            },
            ]]
            [6] = {
                vpos = Vector(0, 0.8, 20),
                vang = Angle(90, 0, -90),
            },
        }
    },
}

-- Animations --

SWEP.Hook_Think = ArcCW.UD.ADSReload

local rottle = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local ratel = {path .. "rattle_1.ogg", path .. "rattle_2.ogg", path .. "rattle_3.ogg"}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle_empty",
    },
    ["draw"] = {
        Source = "draw",
        SoundTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "shoulder.ogg", t = 0.15},
            {s = path .. "rattle_3.ogg", t = 0.2},
        },
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 20 / 30,
        SoundTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "shoulder.ogg", t = 0.15},
            {s = path .. "rattle_3.ogg", t = 0.2},
        },
    },
    ["holster"] = {
        Source = "holster",
        SoundTable = {
            {s = path .. "rattle_3.ogg", t = 0},
            {s = common .. "cloth_6.ogg", t = 0.2},
        },
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = 20 / 30,
        SoundTable = {
            {s = path .. "rattle_3.ogg", t = 0},
            {s = common .. "cloth_6.ogg", t = 0.2},
        },
    },
    ["fire"] = {
        Source = "fire",
        Time = 13 / 30,
        ShellEjectAt = 0.01,
        SoundTable = {
            {s = path .. "mech.ogg", t = 0}, -- Temporary
        },
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 13 / 30,
        ShellEjectAt = 0.01,
        SoundTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Temporary
        },
    },
    ["fire_usas"] = {
        Source = "fire_usas",
        Time = 20 / 30,
        ShellEjectAt = 0.01,
    },
    ["fire_empty_usas"] = {
        Source = "fire_empty_usas",
        Time = 20 / 30,
        ShellEjectAt = 0.01,
        SoundTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Temporary
        },
    },

    ["fire_cycle"] = {
        Source = "fire",
        Time = 13 / 30,
    },

    ["cycle"] = {
        Source = "fix",
        Time = 36 / 30 * 0.7,
        ShellEjectAt = 0.3,
        LHIK = true,
        LHIKIn = 0.3 * 0.7,
        LHIKEaseIn = 0.4 * 0.7,
        LHIKEaseOut = 0.15 * 0.7,
        LHIKOut = 0.4 * 0.7,
        SoundTable = {
            {s = path .. "chback.ogg",   t = 0.05},
            {s = common .. "cloth_4.ogg",  t = 0.2},
            {s = path .. "chamber.ogg",  t = 0.3},
        },
    },

    ["fix"] = {
        Source = "fix",
        Time = 45 / 30,
        ShellEjectAt = false,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = path .. "chback.ogg",   t = 0.15},
            {s = common .. "cloth_4.ogg",  t = 0.5},
            {s = path .. "chamber.ogg",  t = 0.5},
        },
    },
    ["fix_empty"] = {
        Source = "fix_empty",
        Time = 45 / 30,
        ShellEjectAt = false,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = path .. "chback.ogg",   t = 0.15},
            {s = common .. "cloth_4.ogg",  t = 0.5},
            {s = path .. "ch_forward_empty.ogg",  t = 0.5},
        },
    },
    ["fix_100"] = {
        Source = "fix_100",
        Time = 50 / 30,
        ShellEjectAt = false,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = path .. "chback.ogg",   t = 0.25},
            {s = common .. "cloth_4.ogg",  t = 0.75},
            {s = path .. "chamber.ogg",  t = 0.75},
        },
    },
    ["fix_empty_100"] = {
        Source = "fix_empty_100",
        Time = 50 / 30,
        ShellEjectAt = false,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = path .. "chback.ogg",   t = 0.1},
            {s = common .. "cloth_4.ogg",  t = 0.5},
            {s = path .. "chamber.ogg",  t = 0.5},
        },
    },

    -- 30 Round Reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 71 / 30,
        MinProgress = 1.5,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = ratel, t = 0.25},
            {s = path .. "magout.ogg", 	 t = 0.335},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = ratel, t = 1.1},
            {s = rottle,  t = 1.15},
            {s = common .. "grab.ogg", t = 1.81},
            {s = common .. "shoulder.ogg", t = 1.9},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 79 / 30,
        MinProgress = 2,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = ratel, t = 0.25},
            {s = path .. "magout.ogg", 	 t = 0.335},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = common .. "rifle_magdrop.ogg",  t = 0.8},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = ratel, t = 1.1},
            {s = rottle,  t = 1.39},
            {s = path .. "boltdrop.ogg", t = 1.82},
            {s = ratel, t = 1.9},
            {s = common .. "grab.ogg", t = 2.0},
            {s = common .. "shoulder.ogg", t = 2.15},
        },
    },

    -- 20 Round Reloads --

    ["reload_20"] = {
        Source = "reload_20",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 71 / 30,
        MinProgress = 1.5,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.35},
            {s = rottle,  t = 0.75},
            {s = path .. "magin.ogg",    t = 0.95},
            {s = rottle,  t = 1.1},
            {s = common .. "shoulder.ogg", t = 1.925},
        },
    },
    ["reload_empty_20"] = {
        Source = "reload_empty_20",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 79 / 30,
        MinProgress = 2,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.2},
            {s = rottle, t = 0.75},
            {s = common .. "rifle_magdrop.ogg",  t = 0.8},
            {s = path .. "magin.ogg",    t = 0.95},
            {s = rottle, t = 1.39},
            {s = path .. "boltdrop.ogg", t = 1.77},
            {s = common .. "shoulder.ogg", t = 2.13},
        },
    },

    -- 40 Round Reloads --

    ["reload_40"] = {
        Source = "reload_40",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 71 / 30,
        MinProgress = 1.5,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.4,
        LHIKOut = 0.6,
        SoundTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.35},
            {s = rottle, t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = rottle, t = 1.1},
            {s = common .. "shoulder.ogg", t = 1.85},
        },
    },
    ["reload_empty_40"] = {
        Source = "reload_empty_40",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 79 / 30,
        MinProgress = 2,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.35},
            {s = rottle,  t = 0.75},
            {s = common .. "rifle_magdrop.ogg",  t = 0.8},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = rottle,  t = 1.475},
            {s = path .. "boltdrop.ogg", t = 1.78},
            {s = common .. "shoulder.ogg", t = 2.2},
        },
    },

    -- 60 Round Reloads --

    ["reload_60"] = {
        Source = "reload_60",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 71 / 30,
        MinProgress = 1.5,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.35},
            {s = rottle, t = 0.75},
            {s = path .. "magin.ogg",    t = 1.1},
            {s = rottle, t = 1.1},
            {s = common .. "shoulder.ogg", t = 1.97},
        },
    },
    ["reload_empty_60"] = {
        Source = "reload_empty_60",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 79 / 30,
        MinProgress = 2,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.35},
            {s = rottle, t = 0.75},
            {s = common .. "rifle_magdrop.ogg",  t = 0.8},
            {s = path .. "magin.ogg",    t = 1.1},
            {s = rottle, t = 1.475},
            {s = path .. "boltdrop.ogg", t = 1.9},
            {s = common .. "shoulder.ogg", t = 2.2},
        },
    },

    -- 100 Round Reloads --

    ["reload_100"] = {
        Source = "reload_100",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 71 / 30,
        MinProgress = 1.75,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.5,
        LHIKEaseOut = 0.4,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.3},
            {s = rottle, t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = rottle, t = 1.1},
            {s = path .. "magtap.ogg",   t = 1.59},
            {s = common .. "cloth_4.ogg",  t = 1.65},
            {s = common .. "shoulder.ogg", t = 2.05},
        },
    },
    ["reload_empty_100"] = {
        Source = "reload_empty_100",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 90 / 30,
        MinProgress = 2.5,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.4,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.3},
            {s = rottle, t = 0.75},
            {s = common .. "magdrop.ogg",  t = 0.65},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = path .. "magtap.ogg",   t = 1.59},
            {s = rottle, t = 1.75},
            {s = path .. "chback.ogg",   t = 2.0},
            {s = common .. "cloth_4.ogg",  t = 2.05},
            {s = path .. "chamber.ogg",  t = 2.22},
            {s = common .. "shoulder.ogg", t = 2.6},
        },
    },

    -- 9mm 32 Round Reloads --

    ["reload_9mm"] = {
        Source = "reload_9mm",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 71 / 30,
        MinProgress = 1.5,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle, t = 0.0},
            {s = "weapons/arccw_ud/uzi/" .. "magout.ogg", 	 t = 16 / 30},
            {s = rottle, t = 0.75},
            {s = "weapons/arccw_ud/uzi/" .. "magin.ogg",    t = 27 / 30},
            {s = rottle, t = 1.1},
            {s = common .. "shoulder.ogg", t = 1.93},
        },
    },
    ["reload_empty_9mm"] = {
        Source = "reload_empty_9mm",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 79 / 30,
        MinProgress = 2,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = rottle, t = 0.0},
            {s = "weapons/arccw_ud/uzi/" .. "magout.ogg", 	 t = 0.2},
            {s = rottle, t = 0.75},
            {s = "weapons/arccw_ud/uzi/" .. "magin.ogg",    t = 0.98},
            {s = rottle, t = 1.39},
            {s = path .. "boltdrop.ogg", t = 56 / 30},
            {s = common .. "shoulder.ogg", t = 2.15},
        },
    },

    -- 20 USAS Reloads --

    ["reload_usas_20"] = {
        Source = "reload_empty_usas_20",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 71 / 30,
        MinProgress = 2.5,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.2},
            {s = rottle, t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = rottle, t = 1.75},
            {s = path .. "usas_chback.ogg",   t = 1.9},
            {s = common .. "cloth_4.ogg",  t = 2.0},
            {s = path .. "usas_chamber.ogg",  t = 2.2},
            {s = common .. "shoulder.ogg", t = 2.6},
        },
    },
    ["reload_empty_usas_20"] = {
        Source = "reload_empty_usas_20",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 86 / 30,
        MinProgress = 2.5,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.2},
            {s = rottle, t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = rottle, t = 1.75},
            {s = path .. "usas_chback.ogg",   t = 1.9},
            {s = common .. "cloth_4.ogg",  t = 2.0},
            {s = path .. "usas_chamber.ogg",  t = 2.14},
            {s = common .. "shoulder.ogg", t = 2.55},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    if !IsValid(vm) then return end
    local flipup = wep.Attachments[1].Installed == "ud_m16_rs"
    local retro = wep:GetBuff_Override("TopMount")
    local trueflat = wep:GetBuff_Override("TrueFlatTop")
    local taclaser = wep:GetBuff_Override("TacLaserPos")
    local barrel = 0
    local short = false
    local barrelatt = wep.Attachments[2].Installed

    if barrelatt == "ud_m16_barrel_m4" then barrel = 1 short = true
    elseif barrelatt == "ud_m16_barrel_tactical" then barrel = 7
    elseif barrelatt == "ud_m16_barrel_cqbr" then barrel = 2
    elseif barrelatt == "ud_m16_barrel_sd" then barrel = 6 -- specially handled
    elseif barrelatt == "ud_m16_barrel_fpw" then barrel = 10 short = true
    elseif barrelatt == "ud_m16_barrel_classic" then barrel = 3
    elseif barrelatt == "ud_m16_barrel_wood" then barrel = 3
    elseif barrelatt == "ud_m16_barrel_wood_short" then barrel = 4 short = false
    elseif barrelatt == "ud_m16_barrel_stub" then barrel = 11 -- specially handled
    elseif barrelatt == "ud_m16_barrel_lmg" then barrel = 5
    elseif barrelatt == "ud_m16_barrel_tactical_a4" then barrel = 8
    elseif barrelatt == "ud_m16_barrel_smg" then barrel = 9 short = true
    elseif barrelatt == "ud_m16_barrel_classic_short" then barrel = 12 short = false
    end

    local risbarrel = barrel == 7 or barrel == 8

    if wep.Attachments[5].Installed then
        vm:SetBodygroup(9,1)
        if risbarrel then
            vm:SetBodygroup(9,0)
        end
    else
        vm:SetBodygroup(9,0)
    end

    -- M4A4 flip-up sights
    vm:SetBodygroup(12, flipup and 1 or 0)

    if barrel == 6 or barrel == 10 or taclaser then
        vm:SetBodygroup(6, 4)
    end

    if wep.Attachments[1].Installed then
        if retro then
            -- Raised rail (retro)
            vm:SetBodygroup(1, 0)
            vm:SetBodygroup(3, retro)
        else
            -- Flat rail
            vm:SetBodygroup(1, 1)
            vm:SetBodygroup(3, 3)
            -- Low profile gas block
            if (!flipup or trueflat) and !(barrel == 10 or barrel == 6) then
                -- this is handled after elements sets bodygroup so we can do this
                vm:SetBodygroup(6, vm:GetBodygroup(6) + 1)
            end
        end
    else
        -- no rails
        vm:SetBodygroup(1, 0)
        vm:SetBodygroup(3, 0)
    end

    -- Tactical clamp
    if wep.Attachments[6].Installed and (barrel < 6 or barrel > 8) and !taclaser then
        if barrel == 2 or barrel == 11 then
            -- Commando / stub
            vm:SetBodygroup(10, 2)
        else
            vm:SetBodygroup(10, short and 3 or 1)
        end
    else
        vm:SetBodygroup(10, 0)
    end
end

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        InstalledEles = {"upper_flat"},
        Slot = {"optic","sniper_optic","ud_m16_rs"},
        Bone = "m16_parent",
        Offset = {
            vpos = Vector(0, -1.75, 3),
            vang = Angle(90, 0, -90),
        },
        VMScale = Vector(1.3, 1.3, 1.3),
        ExtraSightDist = 8,
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "20\" Standard Barrel",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m16_barrel_default.png", "smooth mips"),
        Slot = "ud_m16_barrel",
        Bone = "m16_parent",
        Offset = {
            vpos = Vector(2.8, -4.2, -11.5),
            vang = Angle(90, 0, -90),
        },
        ExcludeFlags = {"m16_usas"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "m16_parent",
        VMScale = Vector(1.75, 1.5, 1.5),
        WMScale = Vector(1.75, 1.5, 1.5),
        Offset = {
            vpos = Vector(0.025, -0.05, 30.75),
            vang = Angle(90, 0, -90),
        },
        ExcludeFlags = {"sd", "m16_usas", "m16_stub"},
    },
    {
        PrintName = "Receiver",
        DefaultAttName = "Standard Receiver",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m16_receiver_default.png", "smooth mips"),
        Slot = {"ud_m16_receiver"},
        Bone = "m16_parent",
        Offset = {
            vpos = Vector(2.8, -4.2, -11.5),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip","ubgl"},
        Bone = "m16_parent",
        Offset = {
            vpos = Vector(-0.1, 1.25, 12),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"rail_fg"},
        ExcludeFlags = {"m16_lmg", "m16_stub"},
    },
    {
        PrintName = "Tactical",
        Slot = {"tac"},
        Bone = "m16_parent",
        Offset = {
            vpos = Vector(0, 0.8, 27),
            vang = Angle(90, 0, -90),
        },
        GivesFlags = {"tac"},
        --InstalledEles = {"ud_m16_clamp_fullsize"}
    },
    {
        PrintName = "Grip Type",
        Slot = {"ud_m16_grip"},
        DefaultAttName = "Standard Grip",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m16_grip_default.png", "smooth mips"),
        ExcludeFlags = {"m16_adar"}
    },
    {
        PrintName = "Stock",
        Slot = {"ud_m16_stock"},
        DefaultAttName = "Full Stock",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m16_stock_default.png", "smooth mips"),
        ExcludeFlags = {"m16_usas"},
    },
    {
        PrintName = "Magazine",
        Slot = {"ud_m16_mag"},
        DefaultAttName = "30-Round Mag",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m16_mag_30.png", "smooth mips"),
    },
    {
        PrintName = "Ammo Type",
        DefaultAttName = "\"FMJ\" Full Metal Jacket",
        Slot = "uc_ammo",
    },
    {
        PrintName = "Powder Load",
        Slot = "uc_powder",
        DefaultAttName = "Standard Load"
    },
    {
        PrintName = "Training Package",
        Slot = "uc_tp",
        DefaultAttName = "Basic Training"
    },
    {
        PrintName = "Internals",
        Slot = "uc_fg", -- Fire group
        DefaultAttName = "Standard Internals"
    },
    {
        PrintName = "Charm",
        Slot = {"charm", "fml_charm", "ud_m16_charm"},
        FreeSlot = true,
        Bone = "m16_parent",
        Offset = {
            vpos = Vector(0.6, 1, 5),
            vang = Angle(90, 0, -90),
        },
    },
}