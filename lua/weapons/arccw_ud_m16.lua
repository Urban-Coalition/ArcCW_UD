SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Decay"
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
-- AMCAR stands for (american) Colt Assault Rifle, not Carbine!!

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

SWEP.Recoil = 0.75
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
        RunawayBurst = true,
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
SWEP.SightTime = 0.333
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

SWEP.BarrelOffsetHip = Vector(0, 0, -3)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-7.8, 3.5, -7),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Firing sounds --

local path = "weapons/arccw_ud/m16/"
local common = "weapons/arccw_ud/common/"
SWEP.FirstShootSound = path .. "first.ogg"
SWEP.ShootSound = {path .. "auto1.ogg", path .. "auto2.ogg", path .. "auto3.ogg", path .. "auto4.ogg"}
SWEP.DistantShootSound = path .. "dist.ogg"
SWEP.ShootSoundSilenced = path .. "fire_first_sup.ogg"
--[[SWEP.FirstShootSoundSilenced = path .. "fire_first_sup.ogg"
--SWEP.ShootSoundSilenced = {path .. "fire_auto_sup_1.ogg", path .. "fire_auto_sup_2.ogg", path .. "fire_auto_sup_3.ogg", path .. "fire_auto_sup_4.ogg"}
SWEP.DistantShootSoundSilenced = path .. "fire_auto_sup_tail.ogg"]]

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
}

local desg_rec = {
    ["ud_m16_receiver_auto"]        =   1,
    ["ud_m16_receiver_9mm"]         =   2,
    ["ud_m16_receiver_cali"]        =   3,
    ["ud_m16_receiver_usas"]        =   4,
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

    -- service loadouts
    if barrel == 4 then
        if rec == 2 then
            return "Service SMG"
        end
        return "Service Rifle"
    end
    if barrel == 5 then
        if rec == 2 then
            return "Service SMG"
        end
        return "Service Carbine"
    end

    if trueNames and wep.Attachments[13].Installed == "ud_fg_civvy" then
        return "AR-15"
    end

    local flat = false
    if wep.Attachments[1].Installed or wep.Attachments[14].Installed then flat = true end
    if wep:GetBuff_Override("KeepRetro") then flat = false end

    if trueNames then
        local model = "M"
        local alt = "16A2"

        local sil = wep:GetBuff_Override("SDBarrel")
        local silHandled = !sil

        if barrel <= 2 and barrel > 0 then
            model = "XM"
            alt = "4"
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
            if flat then
                alt = "4A1"
            elseif barrel == 1 then
                alt = "727"
            elseif barrel == 2 then
                alt = "733"
            end
        elseif rec == 2 then
            model = "Colt "
            alt = "SMG"
        elseif rec == 3 then
            model = "AR"
            alt = "-15GB"
        elseif rec == 4 then
            model = "USAS"
            alt = "-12"
        end
        if barrel == 3 then
            alt = "231 FPW"
        elseif barrel == 6 then
            alt = "4 Stub"
        elseif barrel == 8 then
            alt = "16 LSW"
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
        else
            return "AMCAR"
        end
    end
end

SWEP.DefaultBodyGroups = "000000000000000"

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

    ["ud_m16_rail_fg"] = {
        VMBodygroups = {{ind = 7, bg = 1}},
    },

    ["ud_m16_upper_flat"] = {
        VMBodygroups = {
            {ind = 1, bg = 1},
            {ind = 10, bg = 1},
            {ind = 3, bg = 3}
        },
    },

    ["ud_m16_stock_m4"] = {
        VMBodygroups = {{ind = 5, bg = 1}},
    },
    ["ud_m16_stock_wood"] = {
        VMBodygroups = {{ind = 5, bg = 2}},
    },
    ["ud_m16_stock_buffer"] = {
        VMBodygroups = {{ind = 5, bg = 3}},
    },

    ["ud_m16_grip_ergo"] = {
        VMBodygroups = {{ind = 6, bg = 1}},
    },
    ["ud_m16_grip_skel"] = {
        VMBodygroups = {{ind = 6, bg = 2}},
    },
    ["ud_m16_grip_wood"] = {
        VMBodygroups = {{ind = 6, bg = 3}},
    },

    ["ud_m16_barrel_tactical"] = {
        VMBodygroups = {
            {ind = 4, bg = 12},
            {ind = 11, bg = 7}
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(0, -0.35, 22.75),
                vang = Angle(90, 0, -90),
            },
            [5] = {
                vpos = Vector(0, 1.25, 12),
                vang = Angle(90, 0, -90),
            },
            [6] = {
                vpos = Vector(1.4, -0.5, 15),
                vang = Angle(90, 0, 0),
            },
        },
    },

    ["ud_m16_barrel_tactical_a4"] = {
        VMBodygroups = {
            {ind = 4, bg = 14},
            {ind = 11, bg = 8}
        },
        AttPosMods = {
            [5] = {
                vpos = Vector(0, 1.25, 12),
                vang = Angle(90, 0, -90),
            },
            [6] = {
                vpos = Vector(1.4, -0.5, 20),
                vang = Angle(90, 0, 0),
            },
        }
    },

    ["ud_m16_barrel_m4"] = {
        VMBodygroups = {
            {ind = 4, bg = 1},
            {ind = 11, bg = 1}
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(0, -0.35, 25.5),
                vang = Angle(90, 0, -90),
            },
            [6] = {
                vpos = Vector(0, 0.8, 20),
                vang = Angle(90, 0, -90),
            },
        }
    },
    ["ud_m16_barrel_cqbr"] = {
        VMBodygroups = {
            {ind = 4, bg = 2},
            {ind = 11, bg = 2}
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(0, -0.35, 20.5),
                vang = Angle(90, 0, -90),
            },
            [6] = {
                vpos = Vector(0, 0.8, 20),
                vang = Angle(90, 0, -90),
            },
        }
    },
    ["ud_m16_barrel_smg"] = {
        VMBodygroups = {
            {ind = 4, bg = 13},
            {ind = 11, bg = 10}
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(0, -0.35, 15.75),
                vang = Angle(90, 0, -90),
            },
            [6] = {
                vpos = Vector(0, 0.8, 20),
                vang = Angle(90, 0, -90),
            },
        }
    },
    ["ud_m16_barrel_fpw"] = {
        VMBodygroups = {
            {ind = 4, bg = 3},
            {ind = 11, bg = 10}
        },
        --[[]
        Override_IronSightStruct = {
            Pos = Vector(-1, 4, 0),
            Ang = Angle(0, 0, 0),
            Magnification = 1,
            CrosshairInSights = true
        },
        ]]
        AttPosMods = {
            [3] = {
                vpos = Vector(0, -0.35, 25.75),
                vang = Angle(90, 0, -90),
            },
            [6] = {
                vpos = Vector(0, 0.8, 20),
                vang = Angle(90, 0, -90),
            },
        }
    },
    ["ud_m16_barrel_wood"] = {
        VMBodygroups = {
            {ind = 4, bg = 4},
            {ind = 11, bg = 3}
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(0, -0.35, 30.95),
                vang = Angle(90, 0, -90),
            }
        }
    },
    ["ud_m16_barrel_wood_short"] = {
        VMBodygroups = {
            {ind = 4, bg = 5},
            {ind = 11, bg = 4}
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(0, -0.35, 25),
                vang = Angle(90, 0, -90),
            },
            [6] = {
                vpos = Vector(0, 0.8, 20),
                vang = Angle(90, 0, -90),
            },
        }
    },
    ["ud_m16_barrel_stub"] = {
        VMBodygroups = {{ind = 4, bg = 6}, {ind = 11, bg = 11}},
        --[[]
        Override_IronSightStruct = {
            Pos = Vector(-1, 4, 0),
            Ang = Angle(0, 0, 0),
            Magnification = 1,
            CrosshairInSights = true
        },
        ]]
        AttPosMods = {
            [3] = {
                vpos = Vector(0, -0.35, 10.25),
                vang = Angle(90, 0, -90),
            },
            [6] = {
                vpos = Vector(1.1, -0.4, 9),
                vang = Angle(90, 0, 0),
            },
        }
    },
    ["ud_m16_barrel_lmg"] = {
        VMBodygroups = {
            {ind = 4, bg = 8},
            {ind = 11, bg = 5}
        },
        AttPosMods = {
            [6] = {
                vpos = Vector(0, 0.8, 20),
                vang = Angle(90, 0, -90),
            },
        }
    },
    ["ud_m16_barrel_sd"] = {
        VMBodygroups = {
            {ind = 4, bg = 9},
            {ind = 11, bg = 6}
        },
        AttPosMods = {
            [6] = {
                vpos = Vector(0, 0.8, 20),
                vang = Angle(90, 0, -90),
            },
        }
    },
    ["ud_m16_barrel_cursed"] = {
        VMBodygroups = {{ind = 4, bg = 11}},
        AttPosMods = {
            [6] = {
                vpos = Vector(0, 0.8, 20),
                vang = Angle(90, 0, -90),
            },
        }
    },
    ["ud_m16_receiver_usas"] = {
        VMBodygroups = {
            {ind = 0, bg = 1},
            {ind = 1, bg = 2},
            {ind = 4, bg = 7},
            {ind = 5, bg = 5},
            {ind = 2, bg = 6},
            {ind = 11, bg = 10}
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
    ["ud_m16_upper_charm"] = {
        AttPosMods = {
            [1] = {
                vpos = Vector(0, -4, 3),
                vang = Angle(90, 0, -90),
            },
        },
    },
}

-- Animations --

SWEP.Hook_Think = ArcCW.UD.ADSReload

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle_empty",
    },
    ["draw"] = {
        Source = "draw",
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 20 / 30,
    },
    ["holster"] = {
        Source = "holster",
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = 20 / 30,
    },
    ["fire"] = {
        Source = "fire",
        Time = 13 / 30,
        ShellEjectAt = 0.01,
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
            {s = path .. "chback.ogg",   t = 0.1},
            {s = common .. "cloth_4.ogg",  t = 0.5},
            {s = path .. "chamber.ogg",  t = 0.5},
        },
    },

    ["fix"] = {
        Source = "fix",
        Time = 36 / 30,
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
    ["fix_empty"] = {
        Source = "fix_empty",
        Time = 36 / 30,
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
    ["fix_100"] = {
        Source = "fix_100",
        Time = 36 / 30,
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
    ["fix_empty_100"] = {
        Source = "fix_empty_100",
        Time = 36 / 30,
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
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"},  t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.335},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"},  t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"},  t = 1.1},
            {s = common .. "shoulder.ogg", t = 1.93},
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
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"},  t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.335},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"},  t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"},  t = 1.39},
            {s = path .. "boltdrop.ogg", t = 1.82},
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
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"},  t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.2},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"},  t = 0.75},
            {s = path .. "magin.ogg",    t = 0.95},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"},  t = 1.1},
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
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.2},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.75},
            {s = path .. "magin.ogg",    t = 0.95},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.39},
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
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.35},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.1},
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
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"},  t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.35},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"},  t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"},  t = 1.475},
            {s = path .. "boltdrop.ogg", t = 1.73},
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
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.35},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.75},
            {s = path .. "magin.ogg",    t = 1.1},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.1},
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
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.35},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.75},
            {s = path .. "magin.ogg",    t = 1.1},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.475},
            {s = path .. "boltdrop.ogg", t = 1.8},
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
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.3},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.1},
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
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.3},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = path .. "magtap.ogg",   t = 1.59},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.75},
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
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.0},
            {s = path .. "magout.ogg", 	 t = 19 / 30},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.75},
            {s = path .. "magin.ogg",    t = 32 / 30},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.1},
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
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.2},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.39},
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
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.2},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.75},
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
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.2},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.75},
            {s = path .. "usas_chback.ogg",   t = 1.9},
            {s = common .. "cloth_4.ogg",  t = 2.0},
            {s = path .. "usas_chamber.ogg",  t = 2.14},
            {s = common .. "shoulder.ogg", t = 2.55},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    local flipup = wep.Attachments[1].Installed == "ud_m16_rs"
    local trueflat = wep:GetBuff_Override("TrueFlatTop")
    local barrel = 0
    local barrelatt = wep.Attachments[2].Installed

    if barrelatt == "ud_m16_barrel_m4" then barrel = 1
    elseif barrelatt == "ud_m16_barrel_tactical" then barrel = 7
    elseif barrelatt == "ud_m16_barrel_cqbr" then barrel = 2
    elseif barrelatt == "ud_m16_barrel_sd" then barrel = 6
    elseif barrelatt == "ud_m16_barrel_fpw" then barrel = 10
    elseif barrelatt == "ud_m16_barrel_wood" then barrel = 3
    elseif barrelatt == "ud_m16_barrel_wood_short" then barrel = 4
    elseif barrelatt == "ud_m16_barrel_stub" then barrel = 11
    elseif barrelatt == "ud_m16_barrel_lmg" then barrel = 5
    elseif barrelatt == "ud_m16_barrel_tactical_a4" then barrel = 8
    elseif barrelatt == "ud_m16_barrel_smg" then barrel = 9
    end

    if wep.Attachments[1].Installed then
        -- Optic rail
        if flipup then
            vm:SetBodygroup(10, 1)
        elseif vm:GetBodygroup(1) == 1 then
            -- Flat top (ud_m16_upper_flat)
            vm:SetBodygroup(10, 0)
            vm:SetBodygroup(11, 10)
        --else
            -- Carry handle
            --vm:SetBodygroup(3, 1)
        end
    else
        if vm:GetBodygroup(1) == 0 then
            --Checks if it has carry handle
            vm:SetBodygroup(10, 0)
            vm:SetBodygroup(3, 0)
        end
    end
    if trueflat then
        vm:SetBodygroup(10,0)
    end
    --[[if barrel == 7 or barrel == 8 then
        vm:SetBodygroup(7, 0)
        vm:SetBodygroup(9, 1)
        vm:SetBodygroup(12, 1)
        vm:SetBodygroup(13, 1)
        vm:SetBodygroup(14, 1)
        if wep.Attachments[5].Installed then
            vm:SetBodygroup(9,0)
        end
        if wep.Attachments[6].Installed then
            vm:SetBodygroup(12, 0)
        end
    else
        vm:SetBodygroup(9, 0)
        vm:SetBodygroup(12, 0)
        vm:SetBodygroup(13, 0)
        vm:SetBodygroup(14, 0)
    end]]
    if wep.Attachments[6].Installed then
        -- Tactical clamp
        if barrel == 11 then
            -- Stub
            vm:SetBodygroup(8, 2)
        elseif !barrel or barrel == "" or barrel == 3 then
            -- Full length
            vm:SetBodygroup(8, 1)
        else
            -- Short
            vm:SetBodygroup(8, 3)
        end
    else
        vm:SetBodygroup(8, 0)
    end
    if wep.Attachments[4].Installed == "ud_m16_receiver_cali" then
        -- vm:SetBodygroup(0, 2)
        -- if vm:GetBodygroup(1) == 1 then
        --     vm:SetBodygroup(1, 5)
        -- else
        --     vm:SetBodygroup(1, 4)
        -- end
    elseif wep.Attachments[4].Installed == "ud_m16_receiver_usas" then
        vm:SetBodygroup(0, 1)
        if vm:GetBodygroup(1) == 1 then
            vm:SetBodygroup(1, 3)
        else
            vm:SetBodygroup(1, 2)
        end
        if flipup then
            vm:SetBodygroup(1, 3)
            vm:SetBodygroup(10, 1)
        elseif trueflat or wep.Attachments[1].Installed then
            vm:SetBodygroup(1, 3)
            vm:SetBodygroup(10, 0)
        end
    elseif barrel == 0 then
        vm:SetBodygroup(11,0)
    end

    if wep:GetBuff_Override("KeepRetro") then
        vm:SetBodygroup(0,0)
        vm:SetBodygroup(1,0)

        for k = barrel, barrel do
            vm:SetBodygroup(11, k)
            if k >= 9 then --11
                vm:SetBodygroup(11, 10)
            end
        end

        if wep.Attachments[1].Installed then
            vm:SetBodygroup(3, 1)
        end
        if wep.Attachments[4].Installed == "ud_m16_receiver_usas" then
            vm:SetBodygroup(0, 1)
            vm:SetBodygroup(1, 2)
            vm:SetBodygroup(11, 10)
        elseif wep.Attachments[4].Installed == "ud_m16_receiver_cali" then
            vm:SetBodygroup(0, 2)
            vm:SetBodygroup(1, 4)
        end
    end
end

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        InstalledEles = {"ud_m16_upper_flat"},
        Slot = {"optic","sniper_optic","ud_m16_rs"},
        Bone = "m16_parent",
        Offset = {
            vpos = Vector(-0.02, -1.65, 3),
            vang = Angle(90, 0, -90),
        },
        VMScale = Vector(1.25, 1.25, 1.25),
        ExtraSightDist = 8,
        MergeSlots = {15}
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "20\" Standard Barrel",
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
        Offset = {
            vpos = Vector(0, -0.35, 30.75),
            vang = Angle(90, 0, -90),
        },
        ExcludeFlags = {"sd", "m16_usas"},
    },
    {
        PrintName = "Receiver",
        DefaultAttName = "Standard Receiver",
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
            vpos = Vector(0, 1.5, 12),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"ud_m16_rail_fg"},
        ExcludeFlags = {"m16_lmg"},
    },
    {
        PrintName = "Tactical",
        Slot = {"tac"},
        Bone = "m16_parent",
        Offset = {
            vpos = Vector(0, 0.8, 25.4),
            vang = Angle(90, 0, -90),
        },
        --InstalledEles = {"ud_m16_clamp_fullsize"}
    },
    {
        PrintName = "Grip Type",
        Slot = {"ud_m16_grip"},
        DefaultAttName = "A2 Pistol Grip",
    },
    {
        PrintName = "Stock",
        Slot = {"ud_m16_stock"},
        DefaultAttName = "Full Stock",
        ExcludeFlags = {"m16_usas"},
    },
    {
        PrintName = "Magazine",
        Slot = {"ud_m16_mag"},
        DefaultAttName = "30-Round Mag",
    },
    {
        PrintName = "Ammo Type",
        Slot = {"go_ammo"},
    },
    {
        PrintName = "Powder Load",
        Slot = {"ud_powder"},
        DefaultAttName = "Standard Load"
    },
    {
        PrintName = "Training Package",
        Slot = "ud_training",
        DefaultAttName = "Basic Training"
    },
    {
        PrintName = "Internals",
        Slot = "ud_fg", -- Fire group
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
    {
        Hidden = true,
        Slot = "ud_m16_rs",
        FreeSlot = true
    }
}