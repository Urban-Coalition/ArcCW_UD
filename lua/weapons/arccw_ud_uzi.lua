SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Coalition"
SWEP.UC_CategoryPack = "1Urban Decay"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Effects --

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellEffect = "arccw_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
SWEP.ShellScale = 1
--SWEP.ShellMaterial = "models/weapons/arcticcw/shell_9mm"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ArcCW.PistolShellSoundsTable

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.CamAttachment = 3
SWEP.TracerNum = 1
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "IAL-9"

-- True name --

SWEP.TrueName = "Uzi"

-- Trivia --

SWEP.Trivia_Class = "Submachine Gun"
SWEP.Trivia_Desc = "Revolutionary submachine gun developed to arm a young State of Israel following the Second World War. Its ergonomic design, low cost, reliability, and great handling made it popular among militaries, police forces, and private security firms worldwide.\n\nIts low recoil and limited range make the weapon good at hip firing in close quarters."
SWEP.Trivia_Manufacturer = "IAL Metal Industries"
SWEP.Trivia_Calibre = "9x19mm Parabellum"
SWEP.Trivia_Mechanism = "Open Bolt"
SWEP.Trivia_Country = "Israel"
SWEP.Trivia_Year = 1950

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Israeli Military Industries"
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ud_uzi.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ud_uzi.mdl"
SWEP.ViewModelFOV = 70
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

-- Damage --

SWEP.Damage = ArcCW.UC.StdDmg["9mm"].max
SWEP.DamageMin = ArcCW.UC.StdDmg["9mm"].min
SWEP.Penetration = ArcCW.UC.StdDmg["9mm"].pen

SWEP.RangeMin = 15
SWEP.Range = 100 -- 4 shot until ~35m

SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 400
SWEP.PhysBulletMuzzleVelocity = 400

SWEP.BodyDamageMults = ArcCW.UC.BodyDamageMults

-- Mag size --

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 32
SWEP.ExtendedClipSize = 40
SWEP.ReducedClipSize = 16

-- Recoil --

SWEP.Recoil = 0.4
SWEP.RecoilSide = 0.4

SWEP.RecoilRise = 0.2
SWEP.RecoilPunch = 1
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 1
SWEP.MaxRecoilPunch = 0.6
SWEP.RecoilPunchBack = 1.5

SWEP.Sway = 0.3

-- Firerate / Firemodes --

SWEP.TriggerDelay = true

SWEP.Delay = 60 / 600
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 2,
        Mult_TriggerDelayTime = 2,
    },
    {
        Mode = 1,
        Mult_TriggerDelayTime = 1,
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

SWEP.NPCWeaponType = "weapon_smg1"
SWEP.NPCWeight = 60

-- Accuracy --

SWEP.AccuracyMOA = 6
SWEP.HipDispersion = 400
SWEP.MoveDispersion = 100
SWEP.JumpDispersion = 1000

SWEP.Primary.Ammo = "pistol"
SWEP.MagID = "uzi"

SWEP.HeatCapacity = 75
SWEP.HeatDissipation = 15
SWEP.HeatDelayTime = 3

SWEP.MalfunctionMean = 200
SWEP.MalfunctionTakeRound = false

-- Speed multipliers --

SWEP.SpeedMult = 0.95
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.35
SWEP.ShootSpeedMult = 0.95

-- Length --

SWEP.BarrelLength = 24
SWEP.ExtraSightDist = 7

-- Ironsights / Customization / Poses --

SWEP.HolsterPos = Vector(0.5, -2, 1)
SWEP.HolsterAng = Angle(-8.5, 8, -10)

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-2.869, 1, 1.95),
     Ang = Angle(0, 0, 0),
     Magnification = 1,
     SwitchToSound = "",
     ViewModelFOV = 55,
}

SWEP.ActivePos = Vector(0.4, -1.9, 1.4)
SWEP.ActiveAng = Angle(0, 0, -3)

SWEP.CustomizePos = Vector(5, -2, -2)
SWEP.CustomizeAng = Angle(15, 25, 0)

SWEP.CrouchPos = Vector(-3, -3, 0)
SWEP.CrouchAng = Angle(0, 0, -30)

SWEP.BarrelOffsetHip = Vector(4, 0, -4)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-16, 3.5, -6),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Firing sounds --
local path = ")^weapons/arccw_ud/uzi/"
local path1 = ")^weapons/arccw_ud/glock/"
local common = ")^/arccw_uc/common/"
--SWEP.FirstShootSound = path .. "fire.ogg"
--SWEP.ShootSound = path .. "fire_auto.ogg"
SWEP.ShootSoundSilenced = path1 .. "fire_supp.ogg"
SWEP.ShootDrySound = path .. "dryfire.ogg"

SWEP.ShootSound = {
    path .. "fire-01.ogg",
    path .. "fire-02.ogg",
    path .. "fire-03.ogg",
    path .. "fire-04.ogg",
    path .. "fire-05.ogg",
    path .. "fire-06.ogg"
}
SWEP.DistantShootSoundOutdoors = {
    path .. "fire-dist-01.ogg",
    path .. "fire-dist-02.ogg",
    path .. "fire-dist-03.ogg",
    path .. "fire-dist-04.ogg",
    path .. "fire-dist-05.ogg",
    path .. "fire-dist-06.ogg"
}
SWEP.DistantShootSoundIndoors = {
    common .. "fire-dist-int-pistol-01.ogg",
    common .. "fire-dist-int-pistol-02.ogg",
    common .. "fire-dist-int-pistol-03.ogg",
    common .. "fire-dist-int-pistol-04.ogg",
    common .. "fire-dist-int-pistol-05.ogg",
    common .. "fire-dist-int-pistol-06.ogg"
}
SWEP.DistantShootSoundOutdoorsSilenced = {
    common .. "sup_tail.ogg"
}
SWEP.DistantShootSoundIndoorsSilenced = {
    common .. "sup_tail.ogg"
}
SWEP.DistantShootSoundOutdoorsVolume = 1
SWEP.DistantShootSoundIndoorsVolume = 0.5
SWEP.Hook_AddShootSound = ArcCW.UC.InnyOuty

-- Bodygroups --

SWEP.BulletBones = {
    [1] = "uzi_b1", [2] = "uzi_b2", [3] = "uzi_b3", [4] = "uzi_b4"
}

SWEP.AttachmentElements = {

    ["ud_uzi_mag_20"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },
    ["ud_uzi_mag_40"] = {
        VMBodygroups = {{ind = 2, bg = 2}},
    },
    ["ud_uzi_mag_100"] = {
        VMBodygroups = {{ind = 2, bg = 3}},
    },
    ["ud_uzi_mag_45_10"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },
    ["ud_uzi_mag_45_22"] = {
        VMBodygroups = {{ind = 2, bg = 2}},
    },

    ["ud_uzi_rail_optic"] = {
        VMBodygroups = {{ind = 4, bg = 2}},
    },

    ["ud_uzi_clamp"] = {
        VMBodygroups = {{ind = 6, bg = 1}},
    },

    ["ud_uzi_rail_fg"] = {
        VMBodygroups = {{ind = 5, bg = 1}},
    },

    ["ud_uzi_stock_wood"] = {
        VMBodygroups = {{ind = 3, bg = 2}},
    },
    ["ud_uzi_stock_polymer"] = {
        VMBodygroups = {{ind = 3, bg = 3}},
    },
    ["ud_uzi_stock_folded"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },
    ["ud_uzi_stock_remove"] = {
        VMBodygroups = {{ind = 3, bg = 4}},
    },

    ["ud_uzi_body_carbine"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        NameChange = "IAL-C9",
        TrueNameChange = "Uzi Carbine",
        AttPosMods = {
            [4] = {
                vpos = Vector(-0.2, 0.5, 20.8),
            },
        },
    },
    ["ud_uzi_body_mini"] = {
        VMBodygroups = {{ind = 1, bg = 2}},
        NameChange = "IAL-S9",
        TrueNameChange = "Mini Uzi",
        AttPosMods = {
            [4] = {
                vpos = Vector(-0.2, 0.5, 11.8),
            },
        },
    },
    ["ud_uzi_body_micro"] = {
        VMBodygroups = {{ind = 1, bg = 3},{ind = 4, bg = 1},{ind = 3, bg = 4}},
        NameChange = "IAL-M9",
        TrueNameChange = "Micro Uzi",
        Override_IronSightStruct = {
            Pos = Vector(-2.869, 3, 1.95),
            Ang = Angle(-0, 0.035, 0),
            Magnification = 1,
            CrosshairInSights = false
        },
        AttPosMods = {
            [1] = {
                vpos = Vector(-0.2, -1.8, -1.5),
            },
            [4] = {
                vpos = Vector(-0.2, 0.3, 7.8),
            },
            [6] = {
                vpos = Vector(-0.25, 1.4, 6),
                vang = Angle(90, 0, -90),
            },
        },
    },
    ["ud_uzi_body_civvy"] = {
        VMBodygroups = {{ind = 1, bg = 4}},
        NameChange = "IAL-C9 Model GB",
        TrueNameChange = "Uzi Action-B",
        AttPosMods = {
            [4] = {
                vpos = Vector(-0.2, 0.5, 23.8),
            },
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    if !IsValid(vm) then return end
    local barrel = wep.Attachments[2].Installed
    if barrel == "ud_uzi_body_micro" then
        if wep.Attachments[1].Installed then
            vm:SetBodygroup(4, 3)
        end
        if wep.Attachments[6].Installed then
            vm:SetBodygroup(6, 0)
            vm:SetBodygroup(5, 2)
        end
    end
end

-- Animations --

SWEP.Hook_Think = ArcCW.UC.ADSReload

SWEP.Animations = {
    ["ready"] = {
        Source = "fix",
        Time = 40 / 30,
        ShellEjectAt = false,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "rattle.ogg", t = 0.2},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.15},
            {s = path .. "chback.ogg",         t = 0.3, c = ci},
            {s = path .. "chforward.ogg",         t = 0.65, c = ci},
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
        SoundTable = ArcCW.UC.DrawSounds,
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        SoundTable = ArcCW.UC.DrawSounds,
    },
    ["holster"] = {
        Source = "holster",
        Time = 0.25,
        SoundTable = ArcCW.UC.HolsterSounds,
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = 0.25,
        SoundTable = ArcCW.UC.HolsterSounds,
    },
    ["fire"] = {
        Source = "fire",
        Time = 13 / 30,
        ShellEjectAt = 0.03,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg"}, t = 0 }},
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 13 / 30,
        ShellEjectAt = 0.03,
        SoundTable = {{ s = path .. "chforward.ogg", t = 0 }},
    },

    ["trigger"] = {
        Source = "idle",
        Time = 0.025,
        SoundTable = {
            {s = path .. "prefire.ogg",         t = 0, c = ci},
        },
    },

    ["fix"] = {
        Source = "fix",
        Time = 40 / 30,
        ShellEjectAt = false,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.15},
            {s = path .. "chback.ogg",         t = 0.3, c = ci},
            {s = path .. "chforward.ogg",         t = 0.65, c = ci},
        },
    },
    ["fix_empty"] = {
        Source = "fix_empty",
        Time = 40 / 30,
        ShellEjectAt = false,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.15},
            {s = path .. "chback.ogg",         t = 0.3, c = ci},
            {s = path .. "chforward.ogg",         t = 0.65, c = ci},
        },
    },

    ["fix_micro"] = {
        Source = "fix_micro",
        Time = 40 / 30,
        ShellEjectAt = false,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.15},
            {s = path .. "chback.ogg",         t = 0.3, c = ci},
            {s = path .. "chforward.ogg",         t = 0.65, c = ci},
        },
    },
    ["fix_empty_micro"] = {
        Source = "fix_empty_micro",
        Time = 40 / 30,
        ShellEjectAt = false,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.15},
            {s = path .. "chback.ogg",         t = 0.3, c = ci},
            {s = path .. "chforward.ogg",         t = 0.65, c = ci},
        },
    },

    -- 32 Round Reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 67 / 30,
        MinProgress = 1.2,
        LastClip1OutTime = 67 / 30,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.6,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = common .. "magpouch.ogg", t = 0.025},
            {s = path .. "magout.ogg",        t = 0.25, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = path .. "magin.ogg",         t = 0.55, c = ci},
            {s = common .. "magpouchin.ogg", t = 1.35, v = .35},
            {s = common .. "shoulder.ogg",  t = 1.75},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 90 / 30,
        MinProgress = 2.2,
        LastClip1OutTime = 1.8,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.3,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.55,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "magout.ogg",        t = 0.4, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = common .. "magpouch.ogg", t = 0.85},
            {s = common .. "magdrop_smg.ogg",  t = 1.0},
            {s = path .. "magin.ogg",         t = 1.1, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.25},
            {s = path .. "chback.ogg",         t = 1.935, c = ci},
            {s = path .. "chforward.ogg",         t = 2.15, c = ci},
            {s = common .. "shoulder.ogg",  t = 2.6},
        },
    },

    -- 16 Round Reloads --

    ["reload_16"] = {
        Source = "reload_16",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 67 / 30,
        MinProgress = 1.2,
        LastClip1OutTime = 67 / 30,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.6,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = common .. "magpouch.ogg", t = 0.025},
            {s = path .. "magout.ogg",        t = 0.25, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = path .. "magin.ogg",         t = 0.55, c = ci},
            {s = common .. "magpouchin.ogg", t = 1.35, v = .35},
            {s = common .. "shoulder.ogg",  t = 1.75},
        },
    },
    ["reload_empty_16"] = {
        Source = "reload_empty_16",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 90 / 30,
        MinProgress = 2.2,
        LastClip1OutTime = 1.8,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.3,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.55,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "magout.ogg",        t = 0.4, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = common .. "magpouch.ogg", t = 0.85},
            {s = common .. "magdrop_smg.ogg",  t = 1.0},
            {s = path .. "magin.ogg",         t = 1.1, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.25},
            {s = path .. "chback.ogg",         t = 1.947, c = ci},
            {s = path .. "chforward.ogg",         t = 2.15, c = ci},
            {s = common .. "shoulder.ogg",  t = 2.45},
        },
    },

    -- 41 Round Reloads --

    ["reload_41"] = {
        Source = "reload_41",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 67 / 30,
        MinProgress = 1.2,
        LastClip1OutTime = 67 / 30,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.6,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = common .. "magpouch.ogg", t = 0.025},
            {s = path .. "magout.ogg",        t = 0.35, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = path .. "magin.ogg",         t = 0.65, c = ci},
            {s = common .. "magpouchin.ogg", t = 1.35, v = .35},
            {s = common .. "shoulder.ogg",  t = 1.75},
        },
    },
    ["reload_empty_41"] = {
        Source = "reload_empty_41",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 90 / 30,
        MinProgress = 2.2,
        LastClip1OutTime = 1.8,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.3,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.55,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "magout.ogg",        t = 0.4, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = common .. "magpouch.ogg", t = 0.85},
            {s = common .. "magdrop_smg.ogg",  t = 1.0},
            {s = path .. "magin.ogg",         t = 1.1, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.25},
            {s = path .. "chback.ogg",         t = 1.947, c = ci},
            {s = path .. "chforward.ogg",         t = 2.15, c = ci},
            {s = common .. "shoulder.ogg",  t = 2.6},
        },
    },

    -- 100 Round Reloads --

    ["reload_100"] = {
        Source = "reload_100",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 67 / 30,
        MinProgress = 1.6,
        LastClip1OutTime = 1,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "magout.ogg",        t = 0.25, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.75},
            {s = path .. "magin.ogg",         t = 1.15, c = ci},
            {s = common .. "cloth_4.ogg",  t = 1.65},
            {s = common .. "shoulder.ogg",  t = 1.95},
        },
    },
    ["reload_empty_100"] = {
        Source = "reload_empty_100",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 90 / 30,
        MinProgress = 2.4,
        LastClip1OutTime = 1.8,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.3,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.55,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "magout.ogg",        t = 0.25, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.75},
            {s = common .. "magdrop.ogg",  t = 1.0},
            {s = path .. "magin.ogg",         t = 1.15, c = ci},
            {s = common .. "cloth_4.ogg",  t = 1.65},
            {s = path .. "chback.ogg",         t = 2.0, c = ci},
            {s = path .. "chforward.ogg",         t = 2.25, c = ci},
            {s = common .. "shoulder.ogg",  t = 2.7},
        },
    },
}

SWEP.AutosolveSourceSeq = "idle"

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp","optic"}, -- ,"optic"
        Bone = "uzi_parent",
        Offset = {
            vpos = Vector(-0.2, -1.6, -1),
            vang = Angle(90, 0, -90),
        },
        VMScale = Vector(1, 1, 1),
        InstalledEles = {"ud_uzi_rail_optic"}
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "10\" Standard Barrel",
        DefaultAttIcon = Material("entities/att/acwatt_ud_uzi_body.png", "smooth mips"),
        Slot = "ud_uzi_frame",
        Bone = "uzi_parent",
        Offset = {
            vpos = Vector(2.6, -3.7, -17.3),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Caliber",
        DefaultAttName = "9x19mm Parabellum",
        DefaultAttIcon = Material("entities/att/uc_bullets/9x19.png", "smooth mips"),
        Slot = "ud_uzi_caliber",
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "uzi_parent",
        Offset = {
            vpos = Vector(-0.2, 0.5, 14.8),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip"},
        Bone = "uzi_parent",
        Offset = {
            vpos = Vector(-0.2, 1.85, 6.9), -- nice
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"ud_uzi_rail_fg"},
        ExcludeFlags = {"micro"}
    },
    {
        PrintName = "Tactical",
        Slot = {"tac_pistol"},
        Bone = "uzi_parent",
        Offset = {
            vpos = Vector(-1.35, 0.9,5.8),
            vang = Angle(90, 0, 180),
        },
        InstalledEles = {"ud_uzi_clamp"}
    },
    {
        PrintName = "Stock",
        Slot = {"ud_uzi_stock"},
        DefaultAttName = "Folding Stock",
        DefaultAttIcon = Material("entities/att/acwatt_ud_uzi_stock.png", "smooth mips"),
        ExcludeFlags = {"micro"},
    },
    {
        PrintName = "Magazine",
        Slot = {"ud_uzi_mag"},
        DefaultAttName = "32-Round Mag",
        DefaultAttIcon = Material("entities/att/acwatt_ud_uzi_mag_32.png", "smooth mips"),
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
        Bone = "uzi_parent",
        Offset = {
            vpos = Vector(0.4, 1.3, 2.3),
            vang = Angle(90, 0, -90),
        },
    },
}
