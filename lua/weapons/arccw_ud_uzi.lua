SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Decay"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Effects --

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.4
SWEP.ShellMaterial = "models/weapons/arcticcw/shell_9mm"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ArcCW.PistolShellSoundsTable

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.CamAttachment = 3
SWEP.TracerNum = 1
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "STAP-9"

-- True name --

SWEP.TrueName = "Uzi"

-- Trivia --

SWEP.Trivia_Class = "Submachine Gun"
SWEP.Trivia_Desc = "Submachine gun developed after the second world war. Its ergonomic design, low cost, reliability, and great handling made it popular among militaries, police forces, and private security firms worldwide. Its low recoil and limited range makes the weapon good at hip firing in close quarters."
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
SWEP.ViewModelFOV = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

-- Damage --

SWEP.Damage = 30 -- 3 shot close range kill
SWEP.DamageMin = 17 -- 6 shot long range kill
SWEP.RangeMin = 15
SWEP.Range = 75
SWEP.Penetration = 3
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 300

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

SWEP.Sway = 0.5

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

SWEP.TriggerDelay = true

-- NPC --

SWEP.NPCWeaponType = "weapon_smg"
SWEP.NPCWeight = 60

-- Accuracy --

SWEP.AccuracyMOA = 6
SWEP.HipDispersion = 400
SWEP.MoveDispersion = 100
SWEP.JumpDispersion = 800

SWEP.Primary.Ammo = "pistol"
SWEP.MagID = "uzi"

SWEP.HeatCapacity = 75
SWEP.HeatDissipation = 15
SWEP.HeatDelayTime = 3

SWEP.MalfunctionMean = 200

-- Speed multipliers --

SWEP.SpeedMult = 0.95
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.275
SWEP.ShootSpeedMult = 0.95

-- Length --

SWEP.BarrelLength = 24
SWEP.ExtraSightDist = 7

-- Ironsights / Customization / Poses --

SWEP.HolsterPos = Vector(0.5, -2, 1)
SWEP.HolsterAng = Angle(-8.5, 8, -10)

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "smg"
SWEP.HoldtypeSights = "smg"

SWEP.IronSightStruct = {
     Pos = Vector(-2.869, 0, 1.95),
     Ang = Angle(0, 0, 0),
     Magnification = 1,
     SwitchToSound = "",
     CrosshairInSights = false
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, -3)

SWEP.CustomizePos = Vector(5, -2, -2)
SWEP.CustomizeAng = Angle(15, 25, 0)

SWEP.CrouchPos = Vector(-3, -3, 0)
SWEP.CrouchAng = Angle(0, 0, -30)

SWEP.BarrelOffsetHip = Vector(0, 0, -3)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-15.5, 3.5, -5),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Firing sounds --
local path = "weapons/arccw_ud/uzi/"
local path1 = "weapons/arccw_ud/glock/"
local common = "weapons/arccw_ud/common/"
SWEP.FirstShootSound = path .. "fire.ogg"
SWEP.ShootSound = path .. "fire_auto.ogg"
SWEP.ShootSoundSilenced = path1 .. "fire_supp.ogg"
SWEP.DistantShootSound = path .. "fire_dist.ogg"

-- Bodygroups --

SWEP.BulletBones = {
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

    ["ud_uzi_rail_optic"] = {
        VMBodygroups = {{ind = 4, bg = 3}},
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
        NameChange = "CarP-9",
        TrueNameChange = "Uzi Carbine",
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, 4),
            },
        },
    },
    ["ud_uzi_body_mini"] = {
        VMBodygroups = {{ind = 1, bg = 2}},
        NameChange = "MeP-9",
        TrueNameChange = "Mini Uzi",
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, -3.4),
            },
        },
    },
    ["ud_uzi_body_micro"] = {
        VMBodygroups = {{ind = 1, bg = 3},{ind = 4, bg = 1},{ind = 3, bg = 4}},
        NameChange = "MiP-9G",
        TrueNameChange = "Micro Uzi",
        Override_IronSightStruct = {
            Pos = Vector(-2.869, 0, 2.3),
            Ang = Angle(-0.95, 0.035, 0),
            Magnification = 1,
            CrosshairInSights = false
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, -5.8),
            },
        },
    },
    ["ud_uzi_body_civvy"] = {
        VMBodygroups = {{ind = 1, bg = 4}},
        NameChange = "CarP-9 Model GB",
        TrueNameChange = "Uzi Action-B",
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, 8),
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
        Time = 12 / 30,
    },
    ["holster"] = {
        Source = "holster",
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0,
        LHIKOut = 0,
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = 12 / 30,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0,
        LHIKOut = 0,
    },
    ["fire"] = {
        Source = "fire",
        Time = 13 / 30,
        ShellEjectAt = 0.03,
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 13 / 30,
        ShellEjectAt = 0.03,
    },

    ["trigger"] = {
        Source = "idle",
        Time = 0.05,
        SoundTable = {
            {s = path .. "prefire.ogg",         t = 0, c = ci},
        },
    },

    ["fix"] = {
        Source = "fix",
        Time = 37 / 30,
        ShellEjectAt = false,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = common .. "cloth_3.ogg",  t = 0.15},
            {s = path .. "chback.ogg",         t = 0.3, c = ci},
            {s = path .. "chforward.ogg",         t = 0.65, c = ci},
        },
    },
    ["fix_empty"] = {
        Source = "fix_empty",
        Time = 37 / 30,
        ShellEjectAt = false,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
        },
    },

    -- 32 Round Reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 67 / 30,
        MinProgress = 1.2,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.6,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0},
            {s = path .. "magout.ogg",        t = 0.25, c = ci},
            {s = common .. "cloth_2.ogg",  t = 0.25},
            {s = path .. "magin.ogg",         t = 0.55, c = ci},
            {s = common .. "shoulder.ogg",  t = 1.75},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 90 / 30,
        MinProgress = 2.2,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.3,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.55,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0},
            {s = path .. "magout.ogg",        t = 0.4, c = ci},
            {s = common .. "cloth_2.ogg",  t = 0.25},
            {s = path .. "magin.ogg",         t = 1.1, c = ci},
            {s = common .. "cloth_3.ogg",  t = 1.25},
            {s = path .. "chback.ogg",         t = 1.947, c = ci},
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
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.6,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0},
            {s = path .. "magout.ogg",        t = 0.25, c = ci},
            {s = common .. "cloth_2.ogg",  t = 0.25},
            {s = path .. "magin.ogg",         t = 0.55, c = ci},
            {s = common .. "shoulder.ogg",  t = 1.75},
        },
    },
    ["reload_empty_16"] = {
        Source = "reload_empty_16",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 90 / 30,
        MinProgress = 2.2,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.3,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.55,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0},
            {s = path .. "magout.ogg",        t = 0.4, c = ci},
            {s = common .. "cloth_2.ogg",  t = 0.25},
            {s = path .. "magin.ogg",         t = 1.0, c = ci},
            {s = common .. "cloth_3.ogg",  t = 1.25},
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
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.6,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0.1},
            {s = path .. "magout.ogg",        t = 0.35, c = ci},
            {s = common .. "cloth_2.ogg",  t = 0.25},
            {s = path .. "magin.ogg",         t = 0.65, c = ci},
            {s = common .. "shoulder.ogg",  t = 1.75},
        },
    },
    ["reload_empty_41"] = {
        Source = "reload_empty_41",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 90 / 30,
        MinProgress = 2.2,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.3,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.55,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0},
            {s = path .. "magout.ogg",        t = 0.4, c = ci},
            {s = common .. "cloth_2.ogg",  t = 0.25},
            {s = path .. "magin.ogg",         t = 1.1, c = ci},
            {s = common .. "cloth_3.ogg",  t = 1.25},
            {s = path .. "chback.ogg",         t = 1.95, c = ci},
            {s = path .. "chforward.ogg",         t = 2.2, c = ci},
            {s = common .. "shoulder.ogg",  t = 2.6},
        },
    },

    -- 100 Round Reloads --

    ["reload_100"] = {
        Source = "reload_100",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 67 / 30,
        MinProgress = 1.6,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0},
            {s = path .. "magout.ogg",        t = 0.25, c = ci},
            {s = common .. "cloth_2.ogg",  t = 0.25},
            {s = common .. "cloth_3.ogg",  t = 0.75},
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
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.3,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.55,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0},
            {s = path .. "magout.ogg",        t = 0.25, c = ci},
            {s = common .. "cloth_2.ogg",  t = 0.25},
            {s = common .. "cloth_3.ogg",  t = 0.75},
            {s = path .. "magin.ogg",         t = 1.15, c = ci},
            {s = common .. "cloth_4.ogg",  t = 1.65},
            {s = path .. "chback.ogg",         t = 2.25, c = ci},
            {s = path .. "chforward.ogg",         t = 2.1, c = ci},
            {s = common .. "shoulder.ogg",  t = 2.7},
        },
    },

    ["trigger"] = {
        Source = "idle",
        Time = 0.04,
        SoundTable = {
            {s = path .. "prefire.ogg",         t = 0, c = ci},
        },
    },
}

SWEP.AutosolveSourceSeq = "idle"

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp","optic"},
        Bone = "uzi_parent",
        Offset = {
            vpos = Vector(-0.2, -1.7, -3),
            vang = Angle(90, 2, -90),
        },
        InstalledEles = {"ud_uzi_rail_optic"}
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "10\" Standard Barrel",
        Slot = "ud_uzi_frame",
        Bone = "uzi_parent",
        Offset = {
            vpos = Vector(2.6, -3.7, -17.3),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "uzi_barrel",
        Offset = {
            vpos = Vector(0, 0, 0),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip"},
        Bone = "uzi_parent",
        Offset = {
            vpos = Vector(-0.2, 2.4, 8),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"ud_uzi_rail_fg"}
    },
    {
        PrintName = "Tactical",
        Slot = {"tac_pistol"},
        Bone = "uzi_parent",
        Offset = {
            vpos = Vector(0.8, 0.5, 12),
            vang = Angle(90, 0, 0),
        },
        InstalledEles = {"ud_uzi_clamp"}
    },
    {
        PrintName = "Stock",
        Slot = {"ud_uzi_stock"},
        DefaultAttName = "Folding Stock",
        ExcludeFlags = {"micro"},
    },
    {
        PrintName = "Mag Type",
        Slot = {"ud_uzi_mag"},
        DefaultAttName = "32-Round Mag",
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
        Slot = {"charm", "fml_charm"},
        FreeSlot = true,
        Bone = "Body",
        Offset = {
            vpos = Vector(0.6, -4, 4),
            vang = Angle(90, 0, -90),
        },
    },
}