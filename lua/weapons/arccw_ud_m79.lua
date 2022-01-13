SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Coalition"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_m79"
SWEP.ShellModel = "models/weapons/arccw/ud_shells/12.mdl"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ArcCW.ShotgunShellSoundsTable
SWEP.ShellScale = 0

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 3
SWEP.CamAttachment = 2

-- Fake name --

SWEP.PrintName = "AMSGL"
-- (American) Squad Grenade Launcher or something. similar to M16's fake name

-- True name --

SWEP.TrueName = "M79"

-- Trivia --

SWEP.Trivia_Class = "Grenade Launcher"
SWEP.Trivia_Desc = "Single-shot 40mm grenade launcher intended to provide infantry with portable long-range explosive firepower. Accurate, flexible and reliable, it is well-respected among American soldiers."
SWEP.Trivia_Manufacturer = "Stoner's Legacy Ltd."
SWEP.Trivia_Calibre = "40x46mm"
SWEP.Trivia_Mechanism = "Break-action"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1961

-- Weapon slot --

SWEP.Slot = 4

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Springfield Armory"
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ud_m79.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ud_m79.mdl"
SWEP.ViewModelFOV = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-7, 4, -5.8),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Damage parameters --

SWEP.Damage = 200
SWEP.DamageMin = 200
SWEP.Range = 40
SWEP.RangeMin = 0

SWEP.Num = 1
SWEP.Penetration = 0

SWEP.ShootEntity = "arccw_uc_40mm_he"
SWEP.MuzzleVelocity = 5000

-- Mag size --

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 1
SWEP.ExtendedClipSize = 1
SWEP.ReducedClipSize = 1

-- Recoil --

SWEP.Recoil = 4
SWEP.RecoilSide = 2
SWEP.RecoilSide = 1

SWEP.RecoilRise = 0.24
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 1
SWEP.MaxRecoilPunch = 1

SWEP.Sway = 0.5

-- Firerate / Firemodes --

SWEP.Delay = 60 / 220
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.ShootVol = 160
SWEP.ShootPitch = 100

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

-- NPC --

SWEP.NPCWeaponType = "weapon_shotgun"
SWEP.NPCWeight = 210

-- Accuracy --

SWEP.AccuracyMOA = 30
SWEP.HipDispersion = 500
SWEP.MoveDispersion = 200
SWEP.JumpDispersion = 1000

SWEP.Primary.Ammo = "smg1_grenade"

-- Speed multipliers --

SWEP.SpeedMult = 0.92
SWEP.SightedSpeedMult = 0.5
SWEP.SightTime = 0.5
SWEP.ShootSpeedMult = 0.75

-- Length --

SWEP.BarrelLength = 48
SWEP.ExtraSightDist = 10

-- Ironsights / Customization / Poses --

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "shotgun"
SWEP.HoldtypeSights = "ar2"

SWEP.IronSightStruct = {
    Pos = Vector(-3.51, -5, 2.2),
    Ang = Angle(0, 0, 0),
    Midpoint = {
    Pos = Vector(0, 0, 0),
    Ang = Angle(0, -1, 0),
    },
    Magnification = 1,
    SwitchToSound = "",
    CrosshairInSights = false,
}

SWEP.HolsterPos = Vector(-0.5, -4, -3)
SWEP.HolsterAng = Angle(3.5, 7, -20)

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-4, -2, 0)
SWEP.CrouchAng = Angle(0, 0, -30)

SWEP.BarrelOffsetSighted = Vector(0, 0, -4)
SWEP.BarrelOffsetHip = Vector(6, 0, -8)

-- Firing sounds --

local common = ")^/arccw_uc/common/"
local rottle = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
SWEP.ShootSound = common .. "gl_fire.ogg"
SWEP.DistantShootSound = common .. "gl_fire_dist.ogg"

-- Animations --

SWEP.Hook_Think = ArcCW.UD.ADSReload

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["draw"] = {
        Source = "draw",
        SoundTable = ArcCW.UD.DrawSounds,
    },
    ["holster"] = {
        Source = "holster",
        SoundTable = ArcCW.UD.HolsterSounds,
    },
    ["fire"] = {
        Source = "fire",
        Time = 20 / 30,
    },
    ["reload"] = {
        Source = "reload",
        Time = 101 / 30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.6,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.5,
        LastClip1OutTime = 1.5,
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "breaker_open.ogg",  t = 0.3},
            {s = common .. "gl_remove.ogg",  t = 0.9},
            {s = rottle, t = 1.0},
            {s = common .. "40mm_casing_1.ogg",  t = 1.6},
            {s = common .. "gl_insert.ogg",  t = 2.0},
            {s = rottle, t = 2.25},
            {s = common .. "breaker_close.ogg",  t = 2.5},
            -- {
            --     t = 0.6,
            --     e = "RagdollImpact",  -- Please add some kind of smoke particle after opening the chamber
            --     att = 1,
            --     mag = 100,
            -- }
        },
    },["reload_shotgun"] = {
        Source = "reload",
        Time = 101 / 30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.6,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.5,
        LastClip1OutTime = 1.5,
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "breaker_open.ogg",  t = 0.3},
            {s = common .. "gl_remove.ogg",  t = 0.9},
            {s = rottle, t = 1.0},
            {s = common .. "40mm_casing_1.ogg",  t = 1.6},
            {s = common .. "gl_insert.ogg",  t = 2.0},
            {s = rottle, t = 2.25},
            {s = common .. "breaker_close.ogg",  t = 2.5},
            {
                t = 1, ind = 1, bg = 2, -- Empty shell bodygroup
            },
            {
                t = 1.5, ind = 1, bg = 1,
            }
        },
    },
    ["reload_caseless"] = {
        Source = "reload_caseless",
        Time = 101 / 30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.74,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.6,
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "breaker_open.ogg",  t = 0.3},
            {s = rottle, t = 0.75},
            {s = common .. "gl_insert.ogg",  t = 1.5},
            {s = rottle, t = 2.0},
            {s = common .. "breaker_close.ogg",  t = 2.25},
            -- {
            --     t = 0.6,
            --     e = "muzzleflash_m79",  -- Please add some kind of smoke particle after opening the chamber
            --     att = nil,
            --     mag = 100,
            -- }
        },
    },
}

SWEP.BulletBones = {
    [1] = "m79_grenade",
}

-- Bodygroups --

SWEP.AttachmentElements = {
    ["m79_pirategun"] = {
        VMBodygroups = {{ind = 0, bg = 1}},
    },
    ["m79_nostock"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },
    ["m79_rail"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },

    ["40mm_buckshot"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
    },
    ["40mm_buckshot_empty"] = {
        VMBodygroups = {{ind = 1, bg = 2}},
    },
    ["40mm_caseless"] = {
        VMBodygroups = {{ind = 1, bg = 3}},
    },
    ["40mm_hornetnest"] = {
        VMBodygroups = {{ind = 1, bg = 4}},
    },
    ["40mm_incendiary"] = {
        VMBodygroups = {{ind = 1, bg = 5}},
    },
    ["40mm_napalm"] = {
        VMBodygroups = {{ind = 1, bg = 5}},
    },
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp", "optic", "sniper_optic"},
        Bone = "m79_front",
        Offset = {
            vpos = Vector(0, -3.6, 1),
            vang = Angle(90, 2, -90),
        },
        InstalledEles = {"m79_rail"},
        ExcludeFlags = {"m79_pirategun"},
    },
    {
        PrintName = "Tube",
        DefaultAttName = "Standard Tube",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m79_barrel.png", "smooth mips"),
        Slot = "ud_m79_barrel",
        Bone = "m79_front",
        Offset = {
            vpos = Vector(3.45, -5.3, -22),
            vang = Angle(90, 2, -90),
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip"},
        Bone = "m79_front",
        Offset = {
            vpos = Vector(0, 0.4, 1.25),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"m79_rail"},
        ExcludeFlags = {"m79_pirategun"},
    },
    {
        PrintName = "Tactical",
        Slot = {"tac_pistol"},
        Bone = "m79_front",
        Offset = {
            vpos = Vector(0.25, 0, 5),
            vang = Angle(90, 0, -90),
        },
        ExcludeFlags = {"m79_pirategun"},
    },
    {
        PrintName = "Stock",
        Slot = {"ud_m79_stock"},
        DefaultAttName = "Wooden Stock",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m79_stock.png", "smooth mips"),
    },
    {
        PrintName = "Grenade Type",
        DefaultAttName = "High Explosive",
        DefaultAttIcon = Material("entities/att/arccw_uc_40mm_generic.png", "smooth mips"),
        Slot = "uc_40mm",
    },
    {
        PrintName = "Training Package",
        Slot = "uc_tp",
        DefaultAttName = "Basic Training"
    },
    {
        PrintName = "Internals",
        Slot = "uc_fg_singleshot", -- Fire group
        DefaultAttName = "Standard Internals",
    },
    {
        PrintName = "Charm",
        Slot = {"charm", "fml_charm"},
        FreeSlot = true,
        Bone = "m79_front",
        Offset = {
            vpos = Vector(0.6, -0.5, 4),
            vang = Angle(90, 0, -90),
        },
    },
}