SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Coalition"
SWEP.UC_CategoryPack = "1Urban Decay"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellEffect = "arccw_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
SWEP.ShellScale = .666
SWEP.ShellPitch = 100

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.CamAttachment = 3
SWEP.TracerNum = 1
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "RAYCAR-0"
-- AMCAR stands for (american) Colt Assault Rifle, not Carbine!! ~Fesiug
-- shut up retard ~zenith

-- True name --

SWEP.TrueName = "M16A2"

-- Trivia --
SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "Third generation of America's iconic military rifle. Army tests showed that soldiers were more likely to hit a target if they fired multiple shots, but were likely to spray in full-auto and fail to hit anything. As a result, they implemented a ratcheted three-round burst system which limited the maximum burst a soldier could fire to three shots.\n\nWell-rounded gun with no major downsides."
SWEP.Trivia_Manufacturer = "Rayter Arms Industries"
SWEP.Trivia_Calibre = "5.56x45mm NATO"
SWEP.Trivia_Mechanism = "Gas-Operated Rotating Bolt"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1959


if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Stoner's Legacy Ltd."
end

local origDesc = SWEP.Trivia_Desc
local m4Desc = "Carbine variant of the M16 rifle. Originally designed in response to design faults in the CAR-15 family, it eventually replaced the M16 across much of the Army for its favorably low weight and comparable performance. The M4 variant has since become one of the most iconic and widespread American service rifles in the modern era.\n\nLight and versatile, but requires discipline to control."
local ncrDesc = "Standard-issue rifle of the New California Republic. Traditionally produced with a semi-automatic receiver, the wooden furniture is more readily replaceable and adds additional recoil control for maximum accuracy.\n\nWell-rounded gun with no major downsides."
local smgDesc = "Submachine gun based on the M16 rifle. Despite its similar appearance, it uses a different mechanism from its parent rifle. More accurate than other submachine guns due to its rifle frame and closed-bolt mechanism."
local blkDesc = "Aftermarket automatic variant of the M16 rifle. The .300 Blackout cartridge has a ballistic performance more akin to the 7.62x39mm Soviet cartridge, with a similarly sized projectile but shorter effective range."
local ukDesc = "AR-15 style rifles are a class of rifles linked to the M16, normally with a semi-automatic fire group for the civilian market. This one, however, has been neutered by authority of the British crown with a manual-action receiver. Bit cringe, innit?"
local arDesc = "Semi-automatic variant of the M16 series of rifles, produced for the civilian market. Wildly popular in the United States, this rifle can be seen in the hands of hobbyists, hunters and mass shooters alike.\n\nWell-rounded gun with no major downsides."
local beoDesc = "Aftermarket semi-automatic variant of the M16 rifle firing an oversized magnum cartridge. Provides extremely high stopping power at close range."
local carDesc = "Carbine variant of the M16 rifle, short enough to be classified as a submachine gun. Its features influenced the US Army's interest in the M4 Carbine, which went on to become their new standard rifle. Due to the small barrel, rifles of this family have high maneuverability but poor range compared to their parent platform."
local a1Desc = "Second generation of America's iconic military rifle. Developed to address problems with the original M16, which suffered notoriously frequent jamming that could get its wielder killed. The revised model evolved a positive reputation with those who used it, and is now a universal symbol of the Vietnam War.\n\nA well-rounded rifle, but difficult to control without trigger discipline - something the A2 model eventually addressed."
local a3Desc = "Variant of the M16A2 with the original full-automatic trigger group, relegated to niche roles in the US Army. Well-rounded gun with no major downsides."
local lmgDesc = "Configuration of the M16 designed for a light machine gun role, used vaguely within the Marine Corps before the adoption of the Minimi. Heavier than the standard platform, but the integral bipod can be deployed onto surfaces for excellent recoil control."
local patriotDesc = "An assault pistol developed for The Boss. The feeder mechanism inside the drum magazine forms an \"∞\" shape.\n\nThe bottomless magazine more than makes up for the awkwardness of the configuration."

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
SWEP.ViewModelFOV = 80
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

-- Damage --

SWEP.Damage = ArcCW.UC.StdDmg["556"].max
SWEP.DamageMin = ArcCW.UC.StdDmg["556"].min
SWEP.RangeMin = 50
SWEP.Range = 350 -- 4 shot until ~250m

SWEP.Penetration = ArcCW.UC.StdDmg["556"].pen
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 960
SWEP.PhysBulletMuzzleVelocity = 960

SWEP.BodyDamageMults = ArcCW.UC.BodyDamageMults

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 30
SWEP.ExtendedClipSize = 40
SWEP.ReducedClipSize = 20

-- Recoil --

SWEP.Recoil = 0.5
SWEP.RecoilSide = 0.25

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
        PostBurstDelay = 0.1,
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
SWEP.MalfunctionTakeRound = false

-- Speed multipliers --

SWEP.SpeedMult = 0.925
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.35
SWEP.ShootSpeedMult = 0.9

-- Length --

SWEP.BarrelLength = 48
SWEP.ExtraSightDist = 2

-- Ironsights / Customization / Poses --

SWEP.HolsterPos = Vector(0.5, -1, 1.2)
SWEP.HolsterAng = Angle(-8.5, 8, -10)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-2.815, 0, 1.3),
     Ang = Angle(0, 0, 0),
     Magnification = 1.1,
     SwitchToSound = "",
}

SWEP.ActivePos = Vector(0.33, -2, 1.33)
SWEP.ActiveAng = Angle(0, 0, -3)

-- SWEP.CustomizePos = Vector(5, -2, -2)
-- SWEP.CustomizeAng = Angle(15, 25, 0)
SWEP.CustomizePos = Vector(0, 0, 0)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-2.5, -2, -0.6)
SWEP.CrouchAng = Angle(0, 0, -14)

SWEP.BarrelOffsetHip = Vector(2, 0, -5)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-8.5, 4, -5),
    ang        =    Angle(-12, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
    --scale = .85
}

-- Firing sounds --

local path = ")weapons/arccw_ud/m16/"
local common = ")/arccw_uc/common/"

SWEP.ShootSound = {
    path .. "fire-01.ogg",
    path .. "fire-02.ogg",
    path .. "fire-03.ogg",
    path .. "fire-04.ogg",
    path .. "fire-05.ogg",
    path .. "fire-06.ogg"
}
SWEP.ShootSoundSilenced = {
    path .. "fire-sup-01.ogg",
    path .. "fire-sup-02.ogg",
    path .. "fire-sup-03.ogg",
    path .. "fire-sup-04.ogg",
    path .. "fire-sup-05.ogg",
    path .. "fire-sup-06.ogg"
}

SWEP.DistantShootSound = nil
SWEP.DistantShootSoundSilenced = nil
SWEP.ShootDrySound = path .. "dryfire.ogg"

local tail = ")/arccw_uc/common/556x45/"

SWEP.DistantShootSoundOutdoors = {
    tail .. "fire-dist-556x45-rif-ext-01.ogg",
    tail .. "fire-dist-556x45-rif-ext-02.ogg",
    tail .. "fire-dist-556x45-rif-ext-03.ogg",
    tail .. "fire-dist-556x45-rif-ext-04.ogg",
    tail .. "fire-dist-556x45-rif-ext-05.ogg",
    tail .. "fire-dist-556x45-rif-ext-06.ogg"
}
SWEP.DistantShootSoundIndoors = {
    common .. "fire-dist-int-rifle-01.ogg",
    common .. "fire-dist-int-rifle-02.ogg",
    common .. "fire-dist-int-rifle-03.ogg",
    common .. "fire-dist-int-rifle-04.ogg",
    common .. "fire-dist-int-rifle-05.ogg",
    common .. "fire-dist-int-rifle-06.ogg"
}
SWEP.DistantShootSoundOutdoorsSilenced = {
    common .. "sup-tail-01.ogg",
    common .. "sup-tail-02.ogg",
    common .. "sup-tail-03.ogg",
    common .. "sup-tail-04.ogg",
    common .. "sup-tail-05.ogg",
    common .. "sup-tail-06.ogg",
    common .. "sup-tail-07.ogg",
    common .. "sup-tail-08.ogg",
    common .. "sup-tail-09.ogg",
    common .. "sup-tail-10.ogg"
}
SWEP.DistantShootSoundIndoorsSilenced = {
    common .. "fire-dist-int-pistol-light-01.ogg",
    common .. "fire-dist-int-pistol-light-02.ogg",
    common .. "fire-dist-int-pistol-light-03.ogg",
    common .. "fire-dist-int-pistol-light-04.ogg",
    common .. "fire-dist-int-pistol-light-05.ogg",
    common .. "fire-dist-int-pistol-light-06.ogg"
}
SWEP.DistantShootSoundOutdoorsVolume = 1
SWEP.DistantShootSoundIndoorsVolume = 1
SWEP.Hook_AddShootSound = ArcCW.UC.InnyOuty

-- Bodygroups --

SWEP.BulletBones = {
    [2] = "m16_bullets1",    [3] = "m16_bullets2"
}

SWEP.DefaultBodygroups = "00000000000000000000000"

SWEP.AttachmentElements = {

    ["ud_m16_mag_20"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },
    ["ud_m16_mag_40"] = {
        VMBodygroups = {{ind = 2, bg = 2}},
    },
    ["ud_m16_pmag"] = {
        VMBodygroups = {{ind = 2, bg = 9}},
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
        VMBodygroups = {{ind = 2, bg = 6}},
    },
    ["ud_m16_mag_50beo"] = {
        VMBodygroups = {{ind = 2, bg = 8}},
    },
    ["ud_m16_mag_50beo_12"] = {
        VMBodygroups = {{ind = 2, bg = 0}},
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
            {ind = 1, bg = 3},
        },
    },
    ["rail_fg"] = {
        VMBodygroups = {{ind = 9, bg = 1}}
    },

    ["stock_231_ex"] = {
        VMBodygroups = {{ind = 7, bg = 1}},
    },
    ["stock_231_in"] = {
        VMBodygroups = {{ind = 7, bg = 2}},
    },
    ["stock_231_tube"] = {
        VMBodygroups = {{ind = 7, bg = 3}},
    },
    ["stock_607_ex"] = {
        VMBodygroups = {{ind = 7, bg = 4}},
    },
    ["stock_607_in"] = {
        VMBodygroups = {{ind = 7, bg = 5}},
    },
    ["stock_608"] = {
        VMBodygroups = {{ind = 7, bg = 6}},
    },
    ["stock_carbine_ex"] = {
        VMBodygroups = {{ind = 7, bg = 7}},
    },
    ["stock_carbine_in"] = {
        VMBodygroups = {{ind = 7, bg = 8}},
    },
    ["stock_wood"] = {
        VMBodygroups = {{ind = 7, bg = 9}},
    },
    ["stock_adar"] = {
        VMBodygroups = {
            {ind = 7, bg = 10},
            {ind = 8, bg = 4}
        },
    },
    ["stock_ru556"] = {
        VMBodygroups = {{ind = 7, bg = 11}},
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
    ["remove_lug"] = {
        VMBodygroups = {{ind = 12, bg = 1}},
    },

    ["mount_14"] = {
        AttPosMods = {
            [8] = {
                vpos = Vector(0, 0.3, 17.5),
                vang = Angle(90, 0, -90),
            },
        },
    },
    ["mount_11"] = {
        AttPosMods = {
            [8] = {
                vpos = Vector(0.6, -0.3, 14.2),
                vang = Angle(90, 0, 0),
            },
        },
    },
    ["mount_tactical"] = {
        AttPosMods = {
            [8] = {
                vpos = Vector(-1, -.35, 11.5),
                vang = Angle(-90, 180, 0),
                wang = Angle(90, 0, 0),
            },
        },
        ExcludeFlags = {}
    },
    -- ["mount_tactical_short"] = {
    --     AttPosMods = {
    --         [8] = {
    --             vpos = Vector(-1, -.35, 11.5),
    --             vang = Angle(-90, 180, 0),
    --             wang = Angle(90, 0, 0),
    --         },
    --     },
    --     AttPosMods_Priority = 2,
    --     RequireFlags = {"barrel_short"}
    -- },

    ["barrel_14"] = {
        VMBodygroups = {
            {ind = 4, bg = 1},
            {ind = 6, bg = 2},
        },
        AttPosMods = {
            [4] = {
                vpos = Vector(0, -0.33, 18.85),
                vang = Angle(90, 0, -90),
            },
            [16] = {
                vpos = Vector(0, -1.65, 12.5), -- 21.75 or 15.75
                vang = Angle(90, 0, -90),
            },
        }
    },
    ["barrel_11"] = {
        VMBodygroups = {
            {ind = 4, bg = 4},
            {ind = 6, bg = 2},
        },
        AttPosMods = {
            [4] = {
                vpos = Vector(0, -0.33, 15.7),
                vang = Angle(90, 0, -90),
            },
            [16] = {
                vpos = Vector(0, -1.65, 12.5), -- 21.75 or 15.75
                vang = Angle(90, 0, -90),
            },
        }
    },
    ["barrel_fpw"] = {
        VMBodygroups = {
            {ind = 4, bg = 2},
            {ind = 6, bg = 5},
        },
        AttPosMods = {
            [4] = {
                vpos = Vector(0, -0.07, 21.3),
                vang = Angle(90, 0, -90),
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
                vpos = Vector(0, -0.07, 21.3),
                vang = Angle(90, 0, -90),
            },
            [6] = {
                vpos = Vector(1.15, 0, 17.9),
                vang = Angle(90, 0, 0),
            },
            [16] = {
                vpos = Vector(0, -1.65, 12.5), -- 21.75 or 15.75
                vang = Angle(90, 0, -90),
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
                vpos = Vector(1.41, -.1, 20),
                vang = Angle(90, 0, 0),
            },
            [16] = {
                vpos = Vector(0, -1.75, 21.75), -- 21.75 or 15.75
                vang = Angle(90, 0, -90),
            },
        }
    },
    ["hg_m4a1_ris"] = {
        VMBodygroups = {
            {ind = 5, bg = 5},
        },
        AttPosMods = {
            [5] = {
                vpos = Vector(0, 1.4, 12),
                vang = Angle(90, 0, -90),
            },
            [6] = {
                vpos = Vector(-1.41, -.2, 14),
                vang = Angle(90, 0, 180),
            },
            [15] = {
                vpos = Vector(0, -1.75, 15.75), -- 21.75 or 15.75
                vang = Angle(90, 0, -90),
            },
        },
    },
    ["hg_ru556"] = {
        -- VMBodygroups = {
        --     {ind = 5, bg = 7},
        -- },
        AttPosMods = {
            -- [5] = {
            --     vpos = Vector(-0.1, 1.05, 12),
            --     vang = Angle(90, 0, -90),
            -- },
            -- [6] = {
            --     vpos = Vector(1.1, 0, 14),
            --     vang = Angle(90, 0, 0),
            -- },
            [16] = {
                vpos = Vector(0, -1.65, 12.5), -- 21.75 or 15.75
                vang = Angle(90, 0, -90),
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
    ["ud_m16_hg_heat"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/m203iron.mdl",
                Bone = "m16_parent",
                Scale = Vector(1, 1, 1),
                Offset = {
                    pos = Vector(0, -1.2, 14.9),
                    ang = Angle(90, 0, -90),
                }
            }
        },
        UC_UseClassicM203Mount = true,
    },
    ["hg_m605"] = {
        VMBodygroups = {
            {ind = 5, bg = 1},
            {ind = 4, bg = 1},
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(0, -0.05, 25.58),
                vang = Angle(90, 0, -90),
            },
            [6] = { -- also has no rail
                vpos = Vector(0, 0.9, 22.2),
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
            [6] = { -- also has no rail
                vpos = Vector(0, 0.8, 22),
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
            -- [8] = {
            --     vpos = Vector(0, 0.7, 17.5),
            --     vang = Angle(90, 0, -90),
            -- },
            [16] = {
                vpos = Vector(0, -1.65, 11.5), -- 21.75 or 15.75
                vang = Angle(90, 0, -90),
            },
        }
    },

    ["ud_m16_upper_charm"] = {
        AttPosMods = {
            [1] = {
                vpos = Vector(0, -4, 3),
                vang = Angle(90, 0, -90),
                SlideAmount = {
                    vmin = Vector(0, -3.4, 3 - 1.5),
                    vmax = Vector(0, -3.4, 3 + 1.5),
                }
            },
        },
    },
    ["ud_m16_upper_charm2"] = {
        AttPosMods = {
            [1] = {
                vpos = Vector(0, -4.1, 3.5),
                vang = Angle(90, 0, -90),
                SlideAmount = {
                    vmin = Vector(0, -3.5, 3.5 - 2),
                    vmax = Vector(0, -3.5, 3.5 + 1),
                }
            },
        },
    },
    ["bravo_dicks_going_fart"] = {
        AttPosMods = {
            [8] = {
                vpos = Vector(0.25, -1.4, 12),
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
                vang = Angle(90, 0, -90)
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
    ["m16_strap"] = {
        VMBodygroups = {
             {ind = 13, bg = 1},
        },
    },
}

-- Animations --

SWEP.Hook_Think = ArcCW.UC.ADSReload

local sr_pmag = {
	[path .. "magout_empty.ogg"] = path .. "pmagout.ogg",
	[path .. "magin.ogg"] = path .. "pmagin.ogg",
}

local pmag1, pmag2 = {}, {"ud_m16_pmag"}
SWEP.Hook_TranslateSound = function(wep, data)
	if wep:CheckFlags(pmag1, pmag2) and sr_pmag[data] then return sr_pmag[data] end
end

local rottle = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local ratel = {common .. "rattle1.ogg", common .. "rattle2.ogg", common .. "rattle3.ogg"}

SWEP.Animations = {
    ["ready"] = {
        Source = "fix",
        Time = 45 / 30,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "rattle.ogg", t = 0.2},
            {s = path .. "chback.ogg",   t = 0.15},
            {s = common .. "cloth_4.ogg",  t = 0.5},
            {s = path .. "chamber.ogg",  t = 0.5},
        },
        ProcDraw = true,
    },
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
            {s = ratel, t = 0.2},
        },
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 20 / 30,
        SoundTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "shoulder.ogg", t = 0.15},
            {s = ratel, t = 0.2},
        },
    },
    ["holster"] = {
        Source = "holster",
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = ratel, t = 0},
            {s = common .. "cloth_6.ogg", t = 0.2},
        },
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = 20 / 30,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = ratel, t = 0},
            {s = common .. "cloth_6.ogg", t = 0.2},
        },
    },
    ["trigger"] = {
        Source = "idle",
        MinProgress = .1,
        SoundTable = {
            {s = ")weapons/arccw_ud/uzi/prefire.ogg",         t = 0, c = ci},
        },
    },
    ["fire"] = {
        Source = "fire",
        Time = 13 / 30,
        ShellEjectAt = 0.01,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0, v = 0.25 }},
    },
    ["fire_iron"] = {
        Source = "fire",
        Time = 13 / 30,
        ShellEjectAt = 0.01,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }},
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 13 / 30,
        ShellEjectAt = 0.01,
        SoundTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Temporary
        },
    },
    ["fire_iron_empty"] = {
        Source = "fire_empty",
        Time = 13 / 30,
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

    -- 30 Round Reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 71 / 30,
        MinProgress = 1.5,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.4,
        LHIKOut = 0.7,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = common .. "magpouch_gear.ogg", t = 0.2, v = 0.5},
            {s = ratel, t = 0.25},
            {s = path .. "magout_empty.ogg", 	 t = 0.23},
            {s = ratel, t = 0.5},
            {s = path .. "struggle.ogg",    t = 1, v = 0.4},
            {s = path .. "magin.ogg",    t = 0.97},
            {s = ratel, t = 1.1},
            {s = rottle,  t = 1.15},
            {s = common .. "grab-polymer.ogg", t = 1.77, v = 0.25},
            {s = common .. "rattle_b2i_rifle.ogg", t = 1.7},
            {s = common .. "shoulder.ogg", t = 1.8},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 87 / 30,
        MinProgress = 2,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.4,
        LHIKOut = 0.9,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = ratel, t = 0.25},
            {s = common .. "magpouch_gear.ogg", t = 0.1, v = 0.5},
            {s = path .. "magout_empty.ogg", 	 t = 0.2},
            {s = ratel, t = 0.5},
            {s = common .. "rifle_magdrop.ogg",  t = 0.65},
            {s = path .. "struggle.ogg",    t = 0.95, v = 0.4},
            {s = path .. "magin.ogg",    t = 0.95},
            {s = ratel, t = 1.1},
            {s = rottle,  t = 1.39},
            {s = path .. "boltdrop.ogg", t = 1.7},
            {s = ratel, t = 1.9},
            {s = common .. "rattle_b2i_rifle.ogg", t = 2.0},
            {s = common .. "grab-polymer.ogg", t = 2.1, v = 0.35},
            {s = common .. "shoulder.ogg", t = 2.1},
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
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.4,
        LHIKOut = 0.7,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = ratel, t = 0.05},
            {s = path .. "magout_empty.ogg", 	 t = 0.09},
            {s = common .. "magpouch_gear.ogg", t = 0.1},
            {s = rottle,  t = 0.75},
            {s = ratel, t = 0.85},
            {s = path .. "struggle.ogg",    t = 0.9, v = 0.4},
            {s = path .. "magin.ogg",    t = 0.95},
            {s = rottle,  t = 1.1},
            {s = ratel, t = 1.125},
            {s = common .. "rattle_b2i_rifle.ogg", t = 1.65},
            {s = common .. "grab-polymer.ogg", t = 1.7, v = 0.25},
            {s = common .. "shoulder.ogg", t = 1.75},
        },
    },
    ["reload_empty_20"] = {
        Source = "reload_empty_20",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 86 / 30,
        MinProgress = 2,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.8,
        SoundTable = {
            {s = common .. "magpouch_gear.ogg", t = 0},
            {s = rottle, t = 0.01},
            {s = ratel, t = 0.05},
            {s = path .. "magout_empty.ogg", 	 t = 0.075},
            {s = rottle, t = 0.75},
            {s = ratel, t = 0.9},
            {s = common .. "rifle_magdrop.ogg",  t = 0.65},
            {s = path .. "struggle.ogg",    t = 0.8, v = 0.4},
            {s = path .. "magin.ogg",    t = 0.85},
            {s = rottle, t = 1.4},
            {s = ratel, t = 1.4},
            {s = path .. "chamber_press.ogg", t = 1.72},
            {s = common .. "rattle_b2i_rifle.ogg", t = 1.95},
            {s = common .. "grab-polymer.ogg", t = 2.075, v = 0.25},
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
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.4,
        LHIKOut = 0.7,
        SoundTable = {
            {s = rottle, t = 0.0},
            {s = ratel, t = 0.1},
            {s = path .. "magout_empty.ogg", 	 t = 0.2},
            {s = common .. "magpouch_gear.ogg", t = 0.25},
            {s = rottle, t = 0.75},
            {s = ratel, t = 0.8},
            {s = path .. "struggle.ogg",    t = 0.95, v = 0.4},
            {s = path .. "magin.ogg",    t = 1.0},
            {s = rottle, t = 1.1},
            {s = ratel, t = 1.25},
            {s = common .. "rattle_b2i_rifle.ogg", t = 1.65},
            {s = common .. "shoulder.ogg", t = 1.75},
        },
    },
    ["reload_empty_40"] = {
        Source = "reload_empty_40",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 85 / 30,
        MinProgress = 2,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.4,
        LHIKOut = 0.8,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = path .. "magout_empty.ogg", 	 t = 0.2},
            {s = common .. "magpouch_gear.ogg", t = 0.25},
            {s = rottle,  t = 0.75},
            {s = common .. "rifle_magdrop.ogg",  t = 0.8},
            {s = path .. "struggle.ogg",    t = 1.0, v = 0.4},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = rottle,  t = 1.475},
            {s = ratel,  t = 1.475},
            {s = path .. "boltdrop.ogg", t = 1.78},
            {s = common .. "rattle_b2i_rifle.ogg", t = 2.1},
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
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.4,
        LHIKOut = 0.7,
        SoundTable = {
            {s = rottle, t = 0.0},
            {s = common .. "magpouch_gear.ogg", t = 0.2},
            {s = path .. "magout_empty.ogg", 	 t = 0.25},
            {s = rottle, t = 0.75},
            {s = path .. "struggle.ogg",    t = 1.0, v = 0.4},
            {s = path .. "magin.ogg",    t = 1.1},
            {s = rottle, t = 1.1},
            {s = common .. "grab-polymer.ogg", t = 1.78, v = 0.25},
            {s = common .. "rattle_b2i_rifle.ogg", t = 1.8},
            {s = common .. "shoulder.ogg", t = 1.9},
        },
    },
    ["reload_empty_60"] = {
        Source = "reload_empty_60",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 85 / 30,
        MinProgress = 2,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.4,
        LHIKOut = 0.8,
        SoundTable = {
            {s = rottle, t = 0.0},
            {s = common .. "magpouch_gear.ogg", t = 0.2},
            {s = path .. "magout_empty.ogg", 	 t = 0.25},
            {s = rottle, t = 0.75},
            {s = common .. "rifle_magdrop.ogg",  t = 0.8},
            {s = path .. "struggle.ogg",    t = 1.0, v = 0.4},
            {s = path .. "magin.ogg",    t = 1.1},
            {s = rottle, t = 1.475},
            {s = ratel, t = 1.475},
            {s = path .. "boltdrop.ogg", t = 1.8},
            {s = common .. "rattle_b2i_rifle.ogg", t = 2.1},
            {s = common .. "grab-polymer.ogg", t = 2.15, v = 0.25},
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
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout_empty.ogg", 	 t = 0.2},
            {s = rottle, t = 0.75},
            {s = path .. "struggle.ogg",    t = 0.95, v = 0.4},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = rottle, t = 1.1},
            {s = path .. "magtap.ogg",   t = 1.59},
            {s = common .. "cloth_4.ogg",  t = 1.65},
            {s = common .. "rattle_b2i_rifle.ogg", t = 1.8},
            {s = common .. "grab-polymer.ogg", t = 1.85, v = 0.25},
            {s = common .. "shoulder.ogg", t = 2.0},
        },
    },
    ["reload_empty_100"] = {
        Source = "reload_empty_100",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 90 / 30,
        MinProgress = 2.5,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.6,
        SoundTable = {
            {s = rottle, t = 0.0},
            {s = path .. "magout_empty.ogg", 	 t = 0.2},
            {s = rottle, t = 0.75},
            {s = common .. "magdrop.ogg",  t = 0.65},
            {s = path .. "struggle.ogg",    t = 0.95, v = 0.4},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = path .. "magtap.ogg",   t = 1.59},
            {s = rottle, t = 1.75},
            {s = path .. "chback.ogg",   t = 2.0},
            {s = common .. "cloth_4.ogg",  t = 2.05},
            {s = path .. "chamber.ogg",  t = 2.22},
            {s = common .. "rattle_b2i_rifle.ogg", t = 2.5},
            {s = common .. "grab-polymer.ogg", t = 2.55, v = 0.25},
            {s = common .. "shoulder.ogg", t = 2.6},
        },
    },

    -- 9mm 32 Round Reloads --

    ["reload_9mm"] = {
        Source = "reload_9mm",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 70 / 30,
        MinProgress = 1.5,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.5,
        SoundTable = {
            {s = rottle, t = 0.0},
            {s = common .. "magpouch.ogg", t = 0.15},
            {s = "weapons/arccw_ud/uzi/" .. "magout.ogg", 	 t = 16 / 30},
            {s = rottle, t = 0.75},
            {s = "weapons/arccw_ud/uzi/" .. "magin.ogg",    t = 27 / 30},
            {s = rottle, t = 1.1},
            {s = common .. "magpouchin.ogg", t = 1.55},
            {s = common .. "shoulder.ogg", t = 1.93},
        },
    },
    ["reload_empty_9mm"] = {
        Source = "reload_empty_9mm",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 80 / 30,
        MinProgress = 2,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.4,
        LHIKOut = 0.9,
        SoundTable = {
            {s = rottle, t = 0.0},
            {s = "weapons/arccw_ud/uzi/" .. "magout.ogg", 	 t = 0.1},
            {s = common .. "magpouch.ogg", t = 0.45},
            {s = rottle, t = 0.75},
            {s = "weapons/arccw_ud/uzi/" .. "magin.ogg",    t = 0.8},
            {s = path .. "chamber_press.ogg", t = 1.7},
            {s = rottle, t = 1.39},
            {s = common .. "shoulder.ogg", t = 2.15},
        },
    },


    ["enter_inspect"] = {
        Source = "inspect_enter",
        -- time = 35 / 60,
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 2.5,
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-rifle-02.ogg", t = 0.1},
        },
    },
    ["idle_inspect"] = {
        Source = "inspect_loop",
        -- time = 72 / 60,
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 999, -- maybe im dumb
    },
    ["exit_inspect"] = {
        Source = "inspect_exit",
        -- time = 66 / 60,
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 999, -- maybe im dumb
        SoundTable = {
            {s = common .. "movement-rifle-04.ogg", t = 0.2},
            {s = rottle, t = 0.25},
            {s = rottle, t = 1.2},
            {s = common .. "movement-rifle-03.ogg", t = 1.25},
        },
    },
    ["enter_inspect_empty"] = {
        Source = "inspect_enter_empty",
        -- time = 35 / 60,
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 2.5,
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-rifle-02.ogg", t = 0.1},
        },
    },
    ["idle_inspect_empty"] = {
        Source = "inspect_loop_empty",
        -- time = 72 / 60,
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 999,
    },
    ["exit_inspect_empty"] = {
        Source = "inspect_exit_empty",
        -- time = 66 / 60,
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 999,
        SoundTable = {
            {s = common .. "movement-rifle-04.ogg", t = 0.2},
            {s = rottle, t = 0.25},
            {s = rottle, t = 1.2},
            {s = common .. "movement-rifle-03.ogg", t = 1.25},
        },
    },
}

local hgLookup = {
    ["default"]     = {0,4,0},
    ["tactical"]    = {2,5,0},
    ["a1"]          = {1,1,1},
    ["heat"]          = {10,10,1},
    ["heatm203"]          = {11,11,1},
    ["wood"]          = {1,1,1},
    ["lmg"]          = {3,3,1},
    ["fpw"]          = {6,6,2},
    ["ru556"]          = {7,7,3},
    ["adar"]          = {8,8,2},
    ["hk416"]          = {9,9,3},
    ["607"]          = {9,9,0},
}
-- Structure: 20in appearance, 14/11in appearance, gas block mode
-- Gas block modes: 0 standard, 1 always at 20" position, 2 at ADAR position when short, 3 at ADAR position when short and not flat

local barrLookup = {
    ["sd"] = -1,
    ["20in"] = 0,
    ["14in"] = 1,
    ["fpw"] = 1,
    ["10in"] = 2,
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    local atts = wep.Attachments
    if !IsValid(vm) then return end

    local barrel = string.Replace(atts[2].Installed or "20in","ud_m16_barrel_","")
    local barr = barrLookup[barrel]
    local hg = string.Replace(atts[3].Installed or "default","ud_m16_hg_","")
    hg = string.Replace(hg,"uf_m16_hg_","")

    local optic = atts[1].Installed
    local muzz = atts[4].Installed or barrel == "sd"
    local laser = atts[8].Installed
    local fs = atts[16].Installed
    local retro = wep:GetBuff_Override("TopMount")

    -- Retro rail
    if optic then
        if retro then
            -- Raised rail (retro)
            vm:SetBodygroup(3, retro)
        else
            -- Flat rail
            vm:SetBodygroup(1, 1)
            vm:SetBodygroup(3, 2)
        end
    end

    -- Dynamic handguard
    if barr == -1 then
        vm:SetBodygroup(5,9)
    elseif barr == 0 and hgLookup[hg] then
        vm:SetBodygroup(5,hgLookup[hg][1])
    elseif hgLookup[hg] then
        vm:SetBodygroup(5,hgLookup[hg][2])
    else
        vm:SetBodygroup(5,9)
    end

    -- Gas block
    if barrel == "sd" or (atts[6].Installed == "ud_m16_receiver_fpw" and barr > 0) then
        vm:SetBodygroup(6,5)
    else
        local gbPos = hgLookup[hg] and hgLookup[hg][3] or 0
        local lwr = atts[6].Installed
        local flat = (
            wep:GetBuff_Override("FrontSight")
            or atts[6].Installed == "ud_m16_receiver_fpw"
            or (optic and fs ~= "ud_m16_charm_fs" and !(wep:GetBuff_Override("IronSight") or wep:GetBuff_Override("TopMount")))
        ) and 1 or 0

        if gbPos == 1 or barr == 0 then
            vm:SetBodygroup(6, 0 + flat)
        elseif gbPos == 2 then
            vm:SetBodygroup(6, 4 + flat * 2)
        elseif gbPos == 3 then
            vm:SetBodygroup(6, 4 - flat)
        else
            vm:SetBodygroup(6, 2 + flat)
        end
    end

    -- Default flash hider
    if !muzz then
        if barr == 0 then
            vm:SetBodygroup(11,1)
        elseif barr == 1 then
            vm:SetBodygroup(11,2)
        else
            vm:SetBodygroup(11,3)
        end
    else
        vm:SetBodygroup(11,0)
    end

    -- Tactical clamp
    if laser and hg ~= "tactical" then
        if barr == 0 then
            vm:SetBodygroup(10,1)
        elseif barr == 1 then
            vm:SetBodygroup(10,3)
        else
            vm:SetBodygroup(10,2)
        end
    else
        vm:SetBodygroup(10,0)
    end

    -- Disable tac rail element with tac hg
    if hg == "tactical" and (atts[7].Installed or atts[18].Installed) then
        vm:SetBodygroup(9,0)
    end

    -- .50 Beowulf magazines
    if atts[5].Installed == "ud_m16_receiver_50beo" and !atts[11].Installed then
        vm:SetBodygroup(2, 8)
    end
end

-- RAYCAR-0, rifle barrel
local bar0_fake = "First variation of the RAYCAR rifle. Tests showed that users were more likely to hit a target if they fired multiple shots, but were likely to spray in full-auto and fail to hit anything. As a result, a ratcheted three-round burst system was implemented which limited the maximum burst a user could fire to three shots.\n\nWell-rounded gun with no major downsides."

-- RAYCAR-1, carbine barrel
local bar1_fake = "Second variation of the RAYCAR rifle. It eventually replaced the RAYCAR-0 across much of the Army for its favorably low weight and comparable performance. The -1 variant has since become one of the most iconic and widespread American service rifles in the modern era.\n\nLight and versatile, but requires discipline to control."

-- RAYCAR-2, commando barrel
local bar2_fake = "Third variation of the RAYCAR rifle. Developed with assistance from the Navy, the \"commando\" barrel allows for the weapon to be very compact, even short enough to be classified as a submachine gun, enhancing usability in vehicles and in enclosed spaces.\n\nVery lightweight and manuverable, but with very aggressive recoil to match."

-- RAYPAW :3
local smgDesc_fake = "Submachine gun based on the RAYCAR rifle. Despite its similar appearance, it uses a different mechanism from its parent rifle.\n\nMore accurate than other submachine guns due to its rifle frame and closed-bolt mechanism."

-- RBY50
local beoDesc_fake = "Aftermarket semi-automatic variant of the RAYCAR rifle firing an oversized magnum cartridge.\n\nProvides extremely high stopping power at close range."

-- RBY300
local blkDesc_fake = "Aftermarket automatic variant of the RAYCAR rifle. The .300 Blackout cartridge has a ballistic performance more akin to the 7.62x39mm Soviet cartridge, with a similarly sized projectile but shorter effective range.\n\nSlightly more inaccurate, made up with a higher stopping power and a subsonic projectile."

-- UKCAR
local ukDesc_fake = "Normally, RAYCAR style rifles are imported with a semi-automatic fire group for the civilian market. This one, however, has been neutered by authority of the British crown with a manual-action receiver.\n\nBit cringe, innit?"

-- RAYSAW
local lmgDesc_fake = "Configuration of the RAYCAR designed for a light machine gun role, used vaguely within the Marine Corps before the adoption of the Minimi.\n\nHeavier than the standard platform, but the integral bipod can be deployed onto surfaces for excellent recoil control."

-- Fallout barrel or sumn idk
local ncrDesc_fake = "Standard-issue rifle of the New California Republic. Traditionally produced with a semi-automatic receiver, the wooden furniture is more readily replaceable and adds additional recoil control for maximum accuracy.\n\nWell-rounded gun with no major downsides."

-- Patriot easter egg. Is it overpowered? I don't think so, a configuration like this is already pretty uncontrollable and imprecise as is, and overheating is the new magazine.
local a1, a2 = {}, {"patr1", "patr2", "patr3", "patr4", "patr5"}
SWEP.O_Hook_Override_BottomlessClip = function(wep, data)
    if wep:CheckFlags(a1, a2) then
        data.current = true
    end
end


SWEP.Hook_NameChange = function(wep, name)
    local trueNames = GetConVar("arccw_truenames"):GetBool()
    local atts = wep.Attachments
    local flat = atts[1].Installed and !wep:GetBuff_Override("TopMount")

    local barrel = string.Replace(atts[2].Installed or "20in","ud_m16_barrel_","")
    local barr = barrLookup[barrel]
    local hg = string.Replace(atts[3].Installed or "default","ud_m16_hg_","")
    local upr = string.Replace(atts[5].Installed or "default","ud_m16_receiver_","")
    local lwr = string.Replace(atts[6].Installed or "default","ud_m16_receiver_","")

    if wep:CheckFlags(a1, a2) then -- Patriot configuration
        wep.Trivia_Desc = patriotDesc
        return "The Patriot"
    elseif !trueNames then -- Custom lore-based fake names
        local pre = (lwr == "auto" and "AM" or "RAY")
        if upr == "9mm" then
            local sd = (barr == -1)
            wep.Trivia_Desc = smgDesc_fake
            if flat then
                return (sd and pre .. "SSMG-NG") or pre .. "PAW-" .. barr .. "NG"
            end
            return (sd and pre .. "SSMG") or pre .. "PAW-" .. barr
        elseif upr == "50beo" then
            wep.Trivia_Desc = beoDesc_fake
            return "RBY"--50"
        elseif upr == "300blk" then
            wep.Trivia_Desc = blkDesc_fake
            return "RBY"--300"
        elseif lwr == "fpw" then
            wep.Trivia_Desc = bar1_fake
            return pre .. "FPW"
        elseif lwr == "cali" then
            wep.Trivia_Desc = ukDesc_fake
            return "UKCAR"
        else
            if barr == 0 then
                if hg == "lmg" then
                    wep.Trivia_Desc = lmgDesc_fake
                    return pre .. "SAW" .. (flat and "-NG" or "")
                elseif flat then
                    return pre .. "CAR-0NG"
                else
                    wep.Trivia_Desc = bar0_fake
                    return pre .. "CAR-0"
                end
            elseif barr == 1 then
                wep.Trivia_Desc = bar1_fake
                if flat then
                    return pre .. "CAR-1NG"
                end
                return pre .. "CAR-1"
            elseif barr == 2 then
                wep.Trivia_Desc = bar2_fake
                if flat then
                    return pre .. "CAR-2NG"
                end
                return pre .. "CAR-2"
            end
        end

        wep.Trivia_Desc = bar0_fake
        return pre .. "CAR-0"

    else

        if upr == "9mm" then
            local sd = (barr == -1)
            wep.Trivia_Desc = smgDesc
            if lwr == "semi" then
                return "AR-15 9mm"
            elseif flat then
                return "R0991"
            end
            return "R0635"

        end

        if lwr == "auto" then
            if upr == "a1" then
                wep.Trivia_Desc = a1Desc
                if barr == 0 then
                    return "M16A1"
                elseif barr == 1 then
                    return "M605"
                end
                wep.Trivia_Desc = carDesc
                return "CAR-15"
            end
            if barr == 0 then
                wep.Trivia_Desc = a3Desc
                if hg == "lmg" then
                    wep.Trivia_Desc = lmgDesc
                    return "Colt LMG"
                elseif flat and hg == "tactical" then
                    return "R0901"
                end
                return "M16A3"
            elseif barr == 1 then
                wep.Trivia_Desc = m4Desc
                if flat then
                    return "M4A1"
                end
                return "XM4"
            else
                wep.Trivia_Desc = carDesc
                if flat then
                    wep.Trivia_Desc = m4Desc
                    if upr == "300blk" then
                        return "Mk 18"
                    end
                    return "Mk 18 Mod 0"
                end
                return "CAR-15"
            end
        elseif lwr == "semi" or upr == "50beo" then
            wep.Trivia_Desc = arDesc
            if hg == "wood" then
                wep.Trivia_Desc = ncrDesc
                if barr == 0 then
                    return "Service Rifle"
                end
                return "Service Carbine"
            elseif flat and hg == "adar" then
                return "ADAR 2-15"
            elseif barr > 0 then
                if barr == 2 and atts[10].Installed == "ud_m16_stock_buffer" then
                    return "AR-15 Pistol"
                elseif upr == "a1" and barr == 1 then
                    return "CRXM177E2B"
                else
                    return "AR-15 SBR"
                end
            elseif upr == "a1" then
                return "CRM16A1"
            end
            return "AR-15"
        elseif lwr == "fpw" then
            wep.Trivia_Desc = m4Desc
            return "M231 FPW"
        elseif lwr == "cali" then
            wep.Trivia_Desc = ukDesc
            return "AR-15GB"
        else
            wep.Trivia_Desc = origDesc
            if barr == 0 and flat then
                return "M16A4"
            elseif barr == 1 then
                wep.Trivia_Desc = m4Desc
                return "M4 Carbine"
            elseif barr == 2 then
                return "M16 Commando"
            end
        end

        wep.Trivia_Desc = origDesc
        return "M16A2"

    end
end



SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        InstalledEles = {"upper_flat"},
        Slot = {"optic","optic_sniper","ud_m16_rs"},
        Bone = "m16_parent",
        Offset = {
            vpos = Vector(0, -1.75, 3),
            vang = Angle(90, 0, -90),
        },
        SlideAmount = {
            vmin = Vector(0, -1.6, 3 - 2),
            vmax = Vector(0, -1.6, 3 + 1),
        },
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "20\" Standard Barrel",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m16_barrel_20.png", "smooth mips"),
        Slot = "ud_m16_blen",
        Bone = "m16_parent",
        Offset = {
            vpos = Vector(2.8, -4.2, -11.5),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Handguard",
        DefaultAttName = "Ribbed Handguard",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m16_hg_ribbed.png", "smooth mips"),
        Slot = "ud_m16_hg",
        Bone = "m16_parent",
        Offset = {
            vpos = Vector(0, -1.63, -0.41),
            vang = Angle(90, 0, -90),
        },
        ExcludeFlags = {"sd"}
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle", "ud_m16_muzzle"},
        Bone = "m16_parent",
        VMScale = Vector(1, 1, 1),
        WMScale = VMScale,
        Offset = {
            vpos = Vector(0, -.33, 23.27),
            vang = Angle(90, 0, -90),
        },
        ExcludeFlags = {"sd", "m16_stub"},
    },
    {
        PrintName = "Upper Receiver",
        DefaultAttName = "5.56x45mm Upper",
        DefaultAttIcon = Material("entities/att/uc_bullets/556x45.png", "smooth mips"),
        Slot = {"ud_m16_receiver"},
        Bone = "m16_parent",
        Offset = {
            vpos = Vector(2.8, -4.2, -11.5),
            vang = Angle(90, 0, -90),
        },
        ExcludeFlags = {"ud_m16_fpw"}
    },
    {
        PrintName = "Lower Receiver",
        DefaultAttName = "Burst Lower",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m16_receiver_default.png", "smooth mips"),
        Slot = {"ud_m16_fcg"},
        Bone = "m16_parent",
        Offset = {
            vpos = Vector(2.8, -4.2, -11.5),
            vang = Angle(90, 0, -90),
        },
        ExcludeFlags = {"m16_nolower"}
    },
    {
        PrintName = "Underbarrel",
        Slot = "foregrip",
        Bone = "m16_parent",
        Offset = {
            vpos = Vector(0, 6, 11),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"rail_fg"},
        ExcludeFlags = {"m16_lmg", "m16_stub"},
        SlideAmount = {
            vmin = Vector(0, .65, 11.5),
            vmax = Vector(0, .65, 7.5),
        },
		MergeSlots = {18},
    },
    {
        PrintName = "Tactical",
        Slot = {"tac"},
        Bone = "m16_parent",
        Offset = {
            vpos = Vector(0, 0.3, 21.25),
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
        Slot = {"ud_m16_stock","go_stock"},
        DefaultAttName = "Full Stock",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m16_stock_default.png", "smooth mips"),
        -- GSO support
        InstalledEles = {"stock_231_tube"},
        Bone = "m16_parent",
        Offset = {
            vpos = Vector(-0.02, 0, -2.7),
            vang = Angle(90, 0, -90),
        },
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
        DefaultAttIcon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth"),
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
        PrintName = "Front Sight",
        Slot = {"ud_m16_fs", "ud_m16_charm"},
        FreeSlot = true,
        Bone = "m16_parent",
        Offset = {
            vpos = Vector(0, -1.65, 16.75), -- 21.75 or 15.75
            vang = Angle(90, 0, -90),
        },
        ExcludeFlags = {"sight_magpul"}
    },
    {
        PrintName = "Charm",
        Slot = {"charm", "fml_charm"}, -- "ud_m16_charm"
        FreeSlot = true,
        Bone = "m16_parent",
        Offset = {
            vpos = Vector(0.48, 0.5, 3.9),
            vang = Angle(90, 0, -90),
        },
        -- MergeSlots = {17}
    },
    {
        PrintName = "M203 slot",
        Slot = "uc_ubgl",
        Bone = "m16_parent",
        Offset = {
            vpos = Vector(0, -0.4, 7.2),
            vang = Angle(90, 0, -90),
        },
        Hidden = true,
        InstalledEles = {"rail_fg"},
        ExcludeFlags = {"m16_lmg", "m16_stub"},
    }
}