SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Coalition"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Effects --

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
SWEP.ShellScale = 1
--SWEP.ShellMaterial = "models/weapons/arcticcw/shell_556"
SWEP.ShellPitch = 100

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.CamAttachment = 3
SWEP.TracerNum = 1
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "Patriot 809"

-- True name --

SWEP.TrueName = "Mini-14"

-- Trivia --

SWEP.Trivia_Class = "Semi-Automatic Rifle"
SWEP.Trivia_Desc = [[Autoloading rifle designed for better accuracy than competing models. Due to its appearance, it is sometimes exempted from gun control laws targeting "Assault Weapons" despite its identical ability to kill. This has helped it find success despite its higher cost and non-standard magazine well.

While it can perform well in close-quarters combat, its high accuracy excels in mid-range engagements.]]
SWEP.Trivia_Manufacturer = "Rifles International"
SWEP.Trivia_Calibre = "5.56x45mm NATO"
SWEP.Trivia_Mechanism = "Gas-Operated Rotating Bolt"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1973

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Sturm, Ruger & Company"
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ud_mini14.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ud_mini14.mdl"
SWEP.ViewModelFOV = 70
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.DefaultSkin = 0
SWEP.DefaultPoseParams = {["grip"] = 0}

-- Damage --

SWEP.Damage = 34 -- 3 shot kill
SWEP.DamageMin = 20 -- 5 shot kill
SWEP.RangeMin = 50
SWEP.Range = 400 -- 4 shot until ~275m

SWEP.Penetration = 14
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 990
SWEP.PhysBulletMuzzleVelocity = 960

SWEP.BodyDamageMults = ArcCW.UC.BodyDamageMults

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 20
SWEP.ExtendedClipSize = 30
SWEP.ReducedClipSize = 10

-- Recoil --

SWEP.Recoil = 0.45
SWEP.RecoilSide = 0.2

SWEP.RecoilRise = 0.1
SWEP.RecoilPunch = 2.5
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 1
SWEP.MaxRecoilPunch = 1
SWEP.RecoilPunchBack = 3
SWEP.MaxRecoilPunchBack = 3

SWEP.Sway = 0.25

-- Firerate / Firemodes --

SWEP.Delay = 60 / 540
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0,
    },
}

SWEP.ShootPitch = 100
SWEP.ShootVol = 120

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC --

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 60

-- Accuracy --

SWEP.AccuracyMOA = 2
SWEP.HipDispersion = 800
SWEP.MoveDispersion = 150
SWEP.JumpDispersion = 1000

SWEP.Primary.Ammo = "smg1"
SWEP.MagID = "mini14"

SWEP.HeatCapacity = 75
SWEP.HeatDissipation = 5
SWEP.HeatDelayTime = 3

SWEP.MalfunctionMean = 100

-- Speed multipliers --

SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.4
SWEP.ShootSpeedMult = 0.9

-- Length --

SWEP.BarrelLength = 36
SWEP.ExtraSightDist = 7

-- Ironsights / Customization / Poses --

SWEP.HolsterPos = Vector(-0.5, -4, -3)
SWEP.HolsterAng = Angle(3.5, 7, -20)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
    Pos = Vector(-4.305, 6, 2.55),
    Ang = Angle(0, 0, 0),
    Magnification = 1,
    SwitchToSound = "",
    CrosshairInSights = false,
}

SWEP.ActivePos = Vector(-1, -1, 1)
SWEP.ActiveAng = Angle(0, 0, -3)

SWEP.CustomizePos = Vector(5, -2, -2)
SWEP.CustomizeAng = Angle(15, 25, 0)

SWEP.CrouchPos = Vector(-5, -4, 0)
SWEP.CrouchAng = Angle(0, 0, -30)

SWEP.BarrelOffsetHip = Vector(3, 0, -3)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-8, 5, -7),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Firing sounds --

local path = ")^weapons/arccw_ud/mini14/"
local common = ")^/arccw_uc/common/"
SWEP.ShootSound = {path .. "fire-01.ogg", path .. "fire-02.ogg", path .. "fire-03.ogg", path .. "fire-04.ogg", path .. "fire-05.ogg", path .. "fire-06.ogg"} -- Maybe Not Placeholder
SWEP.ShootSoundSilenced = path .. "fire_supp.ogg"
SWEP.DistantShootSound = {path .. "fire-dist-01.ogg", path .. "fire-dist-02.ogg", path .. "fire-dist-03.ogg", path .. "fire-dist-04.ogg", path .. "fire-dist-05.ogg", path .. "fire-dist-06.ogg"} -- Maybe Not Placeholder
SWEP.DistantShootSoundSilenced = common .. "sup_tail.ogg"

-- Bodygroups --

SWEP.BulletBones = {
    [2] = "mini14_bullet1", [3] = "mini14_bullet2"
}

SWEP.AttachmentElements = {
    ["ud_mini14_mag_10"] = {
        VMBodygroups = {{ind = 4, bg = 2}},
    },
    ["ud_mini14_mag_30"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
    },
    ["ud_mini14_mag_42"] = {
        VMBodygroups = {{ind = 4, bg = 4}},
    },
    ["ud_mini14_mag_60"] = {
        VMBodygroups = {{ind = 4, bg = 5}},
    },
    ["ud_mini14_mag_15_22lr"] = {
        VMBodygroups = {{ind = 4, bg = 3}},
    },
    ["ud_mini14_mag_30_762"] = {
        VMBodygroups = {{ind = 4, bg = 6}},
    },
    ["ud_mini14_rail_optic"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },

    ["ud_mini14_rail_fg"] = {
        VMBodygroups = {{ind = 5, bg = 1}},
    },

    ["ud_mini14_barrel_long"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
        AttPosMods = {
            [3] = {
                vpos = Vector(0, -2.15, 36.45),
            },
        },
    },
    ["ud_mini14_barrel_short"] = {
        VMBodygroups = {{ind = 3, bg = 2}},
        AttPosMods = {
            [3] = {
                vpos = Vector(0, -2.15, 29.3),
            },
        },
    },
    ["ud_mini14_barrel_stub"] = {
        VMBodygroups = {{ind = 3, bg = 3}},
        AttPosMods = {
            [3] = {
                vpos = Vector(0, -2.1, 25),
            },
        },
    },

    ["ud_mini14_receiver_762"] = {
        TrueNameChange = "Mini-30",
        NameChange = "Patriot 816"
    },
    ["ud_mini14_receiver_auto"] = {
        TrueNameChange = "AC-556",
        NameChange = "Patriot ACC"
    },
    ["ud_mini14_receiver_22lr"] = {
        TrueNameChange = "Mini-14 .22 LR",
        NameChange = "Patriot 822"
    },

    ["ud_mini14_stock_polymer"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        VMPoseParams = {["grip"] = 0}
    },
    ["ud_mini14_stock_sawnoff"] = {
        VMBodygroups = {{ind = 1, bg = 2}},
        VMPoseParams = {["grip"] = 0}
    },
    ["ud_mini14_stock_tactical"] = {
        VMBodygroups = {{ind = 1, bg = 4}},
        VMPoseParams = {["grip"] = 1}
    },
    ["ud_mini14_stock_tactical_polymer"] = {
        VMBodygroups = {{ind = 1, bg = 3}},
        VMSkin = 1,
        VMPoseParams = {["grip"] = 1}
    },

    ["ud_mini14_clamp"] = {
        VMBodygroups = {{ind = 6, bg = 1}},
    },
}

-- Animations --

SWEP.Hook_Think = ArcCW.UD.ADSReload

SWEP.Animations = {
    ["ready"] = {
        Source = "unjam",
        Time = 40 / 30,
        SoundTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "rattle.ogg", t = 0.2},
            {s = path .. "chback.ogg",  t = 0.25},
            {s = path .. "chamber.ogg", t = 0.35},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.8},
            {s = common .. "shoulder.ogg",  t = 1},
        },
        LHIK = true,
        LHIKIn = 0.5,
        LHIKEaseIn = 0.5,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.5,
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
        SoundTable = ArcCW.UD.DrawSounds,
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 12 / 30,
        SoundTable = ArcCW.UD.DrawSounds,
    },
    ["holster"] = {
        Source = "holster",
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0,
        LHIKOut = 0,
        SoundTable = ArcCW.UD.HolsterSounds,
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = 12 / 30,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0,
        LHIKOut = 0,
        SoundTable = ArcCW.UD.HolsterSounds,
    },
    ["fire"] = {
        Source = "fire",
        Time = 20 / 30,
        ShellEjectAt = 0.01,
        LastClip1OutTime = 0,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }},
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 20 / 30,
        ShellEjectAt = 0.01,
        SoundTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Temporary
        },
    },
    ["unjam"] = {
        Source = "unjam",
        Time = 40 / 30,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.0},
            {s = path .. "chback.ogg",  t = 0.25},
            {s = path .. "chamber.ogg", t = 0.35},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.8},
            {s = common .. "shoulder.ogg",  t = 1},
        },
        LHIK = true,
        LHIKIn = 0.5,
        LHIKEaseIn = 0.5,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.5,
        ShellEjectAt = .35,
    },
    -- 20 Round Reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 66 / 30,
        MinProgress = 1.4,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.25},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.4},
            {s = common .. "magpouch.ogg", t = 0.6, c = ci},
            {s = path .. "magin.ogg",   t = 1.05},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.3},
            {s = common .. "shoulder.ogg",  t = 1.75},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 86 / 30,
        MinProgress = 2.1,
        LastClip1OutTime = 1,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.15},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.4},
            {s = common .. "magpouch.ogg", t = 0.6, c = ci},
            {s = common .. "rifle_magdrop.ogg",  t = 0.9},
            {s = path .. "magin.ogg",   t = 1.10},
            {s = path .. "chback.ogg",  t = 1.85},
            {s = path .. "chamber.ogg", t = 1.95},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 2.2},
            {s = common .. "shoulder.ogg",  t = 2.4},
        },
    },

    -- 10 Round Reloads --

    ["reload_10"] = {
        Source = "reload_10",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 67 / 30,
        MinProgress = 1.6,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.15},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.3},
            {s = common .. "magpouch.ogg", t = 0.6, c = ci},
            {s = path .. "magin.ogg",   t = 1.10},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.5},
        },
    },
    ["reload_empty_10"] = {
        Source = "reload_empty_10",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 86 / 30,
        MinProgress = 2.1,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.15},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.4},
            {s = common .. "magpouch.ogg", t = 0.6, c = ci},
            {s = common .. "rifle_magdrop.ogg",  t = 0.9},
            {s = path .. "magin.ogg",   t = 1.10},
            {s = path .. "chback.ogg",  t = 1.90},
            {s = path .. "chamber.ogg", t = 2.00},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 2.4},
            {s = common .. "shoulder.ogg",  t = 2.5},
        },
    },

    -- 30 Round Reloads --

    ["reload_30"] = {
        Source = "reload_30",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 67 / 30,
        MinProgress = 1.4,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.3},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.3},
            {s = common .. "magpouch.ogg", t = 0.7, c = ci},
            {s = path .. "magin.ogg",   t = 1.10},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.4},
            {s = common .. "shoulder.ogg",  t = 1.85},
        },
    },
    ["reload_empty_30"] = {
        Source = "reload_empty_30",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 86 / 30,
        MinProgress = 2.3,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.2},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.3},
            {s = common .. "magpouch.ogg", t = 0.65, c = ci},
            {s = common .. "rifle_magdrop.ogg",  t = 0.9},
            {s = path .. "magin.ogg",   t = 1.20},
            {s = path .. "chback.ogg",  t = 2},
            {s = path .. "chamber.ogg", t = 2.1},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 2.3},
            {s = common .. "shoulder.ogg",  t = 2.65},
        },
    },

    -- 30 polymer Reloads --

    ["reload_30_tac"] = {
        Source = "reload_30_tac",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 67 / 30,
        MinProgress = 1.4,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.3},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.3},
            {s = common .. "magpouch.ogg", t = 0.7, c = ci},
            {s = path .. "magin.ogg",   t = 1.10},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.4},
            {s = common .. "shoulder.ogg",  t = 1.85},
        },
    },
    ["reload_empty_30_tac"] = {
        Source = "reload_empty_30_tac",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 86 / 30,
        MinProgress = 2.3,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.2},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.3},
            {s = common .. "magpouch.ogg", t = 0.65, c = ci},
            {s = common .. "rifle_magdrop.ogg",  t = 0.9},
            {s = path .. "magin.ogg",   t = 1.20},
            {s = path .. "chback.ogg",  t = 2},
            {s = path .. "chamber.ogg", t = 2.1},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 2.3},
            {s = common .. "shoulder.ogg",  t = 2.65},
        },
    },

    -- 7.62 reloads --

    ["reload_762"] = {
        Source = "reload_762",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 67 / 30,
        MinProgress = 1.4,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.3},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.3},
            {s = common .. "magpouch.ogg", t = 0.7, c = ci},
            {s = path .. "magin.ogg",   t = 1.10},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.4},
            {s = common .. "shoulder.ogg",  t = 1.85},
        },
    },
    ["reload_empty_762"] = {
        Source = "reload_empty_762",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 86 / 30,
        MinProgress = 2.3,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.2},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.3},
            {s = common .. "magpouch.ogg", t = 0.65, c = ci},
            {s = common .. "rifle_magdrop.ogg",  t = 0.9},
            {s = path .. "magin.ogg",   t = 1.20},
            {s = path .. "chback.ogg",  t = 2},
            {s = path .. "chamber.ogg", t = 2.1},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 2.3},
            {s = common .. "shoulder.ogg",  t = 2.65},
        },
    },

    -- 60 round reloads (?) --

    ["reload_60"] = {
        Source = "reload_60",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 67 / 30,
        MinProgress = 1.4,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.35},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.3},
            {s = common .. "magpouch.ogg", t = 0.7, c = ci},
            {s = path .. "magin.ogg",   t = 1.10},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.4},
            {s = common .. "shoulder.ogg",  t = 1.85},
        },
    },
    ["reload_empty_60"] = {
        Source = "reload_empty_60",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 86 / 30,
        MinProgress = 2.3,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.35},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.3},
            {s = common .. "magpouch.ogg", t = 0.7, c = ci},
            {s = common .. "rifle_magdrop.ogg",  t = 0.9},
            {s = path .. "magin.ogg",   t = 1.20},
            {s = path .. "chback.ogg",  t = 1.9},
            {s = path .. "chamber.ogg", t = 2},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 2.3},
            {s = common .. "shoulder.ogg",  t = 2.65},
        },
    },

    -- 15 22lr Round Reloads --

    ["reload_15_22lr"] = {
        Source = "reload_15_22lr",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 67 / 30,
        MinProgress = 1.6,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.15},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.3},
            {s = common .. "magpouch.ogg", t = 0.65, c = ci},
            {s = path .. "magin.ogg",   t = .9},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.4},
        },
    },
    ["reload_empty_15_22lr"] = {
        Source = "reload_empty_15_22lr",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 86 / 30,
        MinProgress = 2.2,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.15},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.5},
            {s = common .. "pistol_magdrop.ogg",  t = 0.9},
            {s = common .. "magpouch.ogg", t = 0.7, c = ci},
            {s = path .. "magin.ogg",   t = 1.10},
            {s = path .. "chback.ogg",  t = 1.9},
            {s = path .. "chamber.ogg", t = 2.0},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 2.3},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep,data)
    local vm = data.vm
    if !IsValid(vm) then return end

    local atts = wep.Attachments
    local barr = string.Replace(atts[2].Installed or "default","ud_mini14_barrel_","")
    local muzz = atts[3].Installed
    local tac = atts[6].Installed

    if muzz or barr == "stub" or barr == "default" then
        vm:SetBodygroup(7,2)
    elseif barr == "short" then
        vm:SetBodygroup(7,1)
    elseif barr == "long" then
        vm:SetBodygroup(7,0)
    end

    if !tac then
       vm:SetBodygroup(6,0)
    end
end

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp","optic","optic_sniper"},
        Bone = "mini14_parent",
        Offset = {
            vpos = Vector(0, -3.6, 6),
            vang = Angle(90, 2, -90),
        },
        VMScale = Vector(1.2,1.2,1.2),
        WMScale = VMScale,
        InstalledEles = {"ud_mini14_rail_optic"},
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "20\" Standard Barrel",
        DefaultAttIcon = Material("entities/att/acwatt_ud_mini14_barrel.png", "smooth mips"),
        Slot = "ud_mini14_barrel",
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "mini14_parent",
        Offset = {
            vpos = Vector(0, -2.15, 31.1),
            vang = Angle(90, 0, -90),
            wpos = vpos,
        },
        VMScale = Vector(1.5,1.5,1.5),
        WMScale = VMScale,
        ExcludeFlags = {"nomuzzle"},
    },
    {
        PrintName = "Receiver",
        DefaultAttName = "Mini-14 Receiver",
        DefaultAttIcon = Material("entities/att/acwatt_ud_mini14_receiver.png", "smooth mips"),
        Slot = "ud_mini14_receiver",
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip"},
        Bone = "mini14_parent",
        Offset = {
            vpos = Vector(0, 0, 14),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"ud_mini14_rail_fg"},
    },
    {
        PrintName = "Tactical",
        Slot = {"tac"},
        Bone = "mini14_parent",
        Offset = {
            vpos = Vector(0, -1.5, 22.3),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"ud_mini14_clamp"},
    },
    {
        PrintName = "Magazine",
        Slot = {"ud_mini14_mag"},
        DefaultAttName = "20-Round Mag",
        DefaultAttIcon = Material("entities/att/acwatt_ud_mini14_mag_20.png", "smooth mips"),
    },
    {
        PrintName = "Stock",
        Slot = {"ud_mini14_stock"},
        DefaultAttName = "Wooden Stock",
        DefaultAttIcon = Material("entities/att/acwatt_ud_mini14_stock.png", "smooth mips"),
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
        PrintName = "Charm",
        Slot = {"charm", "fml_charm"},
        FreeSlot = true,
        Bone = "Body",
        Offset = {
            vpos = Vector(0.6, -4, 4),
            vang = Angle(90, 0, -90),
        },
    },
}