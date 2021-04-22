SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Decay"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellScale = 1.4
SWEP.ShellMaterial = "models/weapons/arcticcw/shell_556"
SWEP.ShellPitch = 100

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.CamAttachment = 3
SWEP.TracerNum = 1
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "AMCAR"

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
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.ViewModelFOV = 70
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

-- Damage --

SWEP.Damage = 34 -- 3 shot kill
SWEP.DamageMin = 20 -- 5 shot kill
SWEP.RangeMin = 10
SWEP.Range = 100
SWEP.Penetration = 6
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

SWEP.RecoilRise = 1
SWEP.RecoilPunch = 2
SWEP.VisualRecoilMult = 3
SWEP.MaxRecoilBlowback = 3
SWEP.MaxRecoilPunch = 0.6

SWEP.Sway = 0.5

-- Firerate / Firemodes --

SWEP.Delay = 60 / 900
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = -3,
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
SWEP.HipDispersion = 900
SWEP.MoveDispersion = 200
SWEP.JumpDispersion = 1000

SWEP.Primary.Ammo = "smg1"
SWEP.MagID = "m16"

-- Speed multipliers --

SWEP.SpeedMult = 0.8
SWEP.SightedSpeedMult = 0.9
SWEP.SightTime = 0.3
SWEP.ShootSpeedMult = 0.95

-- Length --

SWEP.BarrelLength = 32
SWEP.ExtraSightDist = 7

-- Ironsights / Customization / Poses --

SWEP.HolsterPos = Vector(4.623, -2.211, 1.004)
SWEP.HolsterAng = Angle(-8.443, 28.843, 0)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-2.81, -3, 0.8),
     Ang = Angle(0.1, 0, 0),
     Magnification = 1.1,
     SwitchToSound = "",
}

SWEP.ActivePos = Vector(0, 0, 0.5)
SWEP.ActiveAng = Angle(0, 0, -3)

SWEP.CustomizePos = Vector(5, -2, -2)
SWEP.CustomizeAng = Angle(15, 25, 0)

SWEP.CrouchPos = Vector(-6.5, 2, -1)
SWEP.CrouchAng = Angle(0, 0, -40)

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
SWEP.FirstShootSound = path .. "fire_first.ogg"
SWEP.ShootSound = {path .. "fire_auto_1.ogg", path .. "fire_auto_2.ogg", path .. "fire_auto_3.ogg"}
SWEP.ShootSoundSilenced = "weapons/arccw/czbren/lowpolyczbren_supp.ogg"
SWEP.DistantShootSound = path .. "fire_dist.ogg"

-- Bodygroups --

SWEP.BulletBones = {
    [2] = "m16_bullets1",    [3] = "m16_bullets2"
}

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

    ["ud_m16_rail_fg"] = {
        VMBodygroups = {{ind = 7, bg = 1}},
    },

    ["ud_m16_rail_optic"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },

    ["ud_m16_clamp_fullsize"] = {
        VMBodygroups = {{ind = 8, bg = 1}},
    },

    ["ud_m16_barrel_m4"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
    },
    ["ud_m16_barrel_cqbr"] = {
        VMBodygroups = {{ind = 4, bg = 2}},
    },
    ["ud_m16_barrel_fpw"] = {
        VMBodygroups = {{ind = 4, bg = 3}},
        Override_IronSightStruct = {
            Pos = Vector(-1, 4, 0),
            Ang = Angle(0, 0, 0),
            Magnification = 1,
            CrosshairInSights = true
        }
    },
    ["ud_m16_barrel_wood"] = {
        VMBodygroups = {{ind = 4, bg = 4}},
    },
    ["ud_m16_barrel_wood_short"] = {
        VMBodygroups = {{ind = 4, bg = 5}},
    },
    ["ud_m16_barrel_stub"] = {
        VMBodygroups = {{ind = 4, bg = 6}},
        Override_IronSightStruct = {
            Pos = Vector(-1, 4, 0),
            Ang = Angle(0, 0, 0),
            Magnification = 1,
            CrosshairInSights = true
        }
    },
}

-- Animations --

SWEP.Hook_Think = function(wep)
    wep:GetOwner():GetViewModel():SetPoseParameter( "sights", Lerp(wep:GetSightDelta(), 1, 0) ) -- thanks fesiug
end

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
    },

    ["fix"] = { -- TEMPOARY
        Source = "reload_empty",
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
            {s = common .. "cloth_1.ogg",  t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.2},
            {s = common .. "cloth_2.ogg",  t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = common .. "cloth_3.ogg",  t = 1.39},
            {s = path .. "boltdrop.ogg", t = 1.77},
            {s = common .. "shoulder.ogg", t = 2.15},
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
        LHIKEaseOut = 0.15,
        LHIKOut = 0.5,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.2},
            {s = common .. "cloth_2.ogg",  t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = common .. "cloth_3.ogg",  t = 1.1},
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
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.2},
            {s = common .. "cloth_2.ogg",  t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = common .. "cloth_3.ogg",  t = 1.39},
            {s = path .. "boltdrop.ogg", t = 1.77},
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
        LHIKEaseOut = 0.15,
        LHIKOut = 0.5,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.2},
            {s = common .. "cloth_2.ogg",  t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = common .. "cloth_3.ogg",  t = 1.1},
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
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.2},
            {s = common .. "cloth_2.ogg",  t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = common .. "cloth_3.ogg",  t = 1.39},
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
        LHIKEaseOut = 0.15,
        LHIKOut = 0.5,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.2},
            {s = common .. "cloth_2.ogg",  t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = common .. "cloth_3.ogg",  t = 1.1},
            {s = common .. "shoulder.ogg", t = 1.97},
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
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.2},
            {s = common .. "cloth_2.ogg",  t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = common .. "cloth_3.ogg",  t = 1.475},
            {s = path .. "boltdrop.ogg", t = 1.8},
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
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.2},
            {s = common .. "cloth_2.ogg",  t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = common .. "cloth_3.ogg",  t = 1.1},
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
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.2},
            {s = common .. "cloth_2.ogg",  t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = common .. "cloth_3.ogg",  t = 1.475},
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
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.2},
            {s = common .. "cloth_2.ogg",  t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = common .. "cloth_3.ogg",  t = 1.1},
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
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0.0},
            {s = path .. "magout.ogg", 	 t = 0.2},
            {s = common .. "cloth_2.ogg",  t = 0.75},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = path .. "magtap.ogg",   t = 1.59},
            {s = common .. "cloth_3.ogg",  t = 1.75},
            {s = path .. "chback.ogg",   t = 1.9},
            {s = common .. "cloth_4.ogg",  t = 2.0},
            {s = path .. "chamber.ogg",  t = 2.2},
            {s = common .. "shoulder.ogg", t = 2.7},
        },
    },
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        InstalledEles = {"ud_m16_rail_optic"},
        Slot = {"optic_lp","optic","sniper_optic"},
        Bone = "m16_parent",
        Offset = {
            vpos = Vector(0, -3.9, 2),
            vang = Angle(90, 2, -90),
        },
        VMScale = Vector(1.25, 1.25, 1.25),
        ExtraSightDist = 4
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "20\" M16 Barrel",
        Slot = "ud_m16_barrel",
        Bone = "m16_parent",
        Offset = {
            vpos = Vector(2.8, -4.2, -11.5),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"choke", "muzzle_shotgun"},
        Bone = "m16_flash",
        Offset = {
            vpos = Vector(-0.03, -0.05, -0.5),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip"},
        Bone = "m16_parent",
        Offset = {
            vpos = Vector(0, 1.5, 12),
            vang = Angle(90, 0, -90),
        },
        VMScale = Vector(1.25, 1.25, 1.25),
        InstalledEles = {"ud_m16_rail_fg"}
    },
    {
        PrintName = "Tactical",
        Slot = {"tac_pistol"},
        Bone = "m16_parent",
        Offset = {
            vpos = Vector(0, 0.8, 25.4),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"ud_m16_clamp_fullsize"}
    },
    {
        PrintName = "Stock",
        Slot = {"ud_m16_stock"},
        DefaultAttName = "Standard Stock",
    },
    {
        PrintName = "Mag Type",
        Slot = {"ud_m16_mag"},
        DefaultAttName = "30-Round STANAG Mag",
    },
    {
        PrintName = "Ammo Type",
        Slot = {"go_ammo"},
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