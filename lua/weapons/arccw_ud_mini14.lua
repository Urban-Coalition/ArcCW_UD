SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Decay"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Effects --

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

SWEP.PrintName = "Patriot 809"

-- True name --

SWEP.TrueName = "Mini-14"

-- Trivia --

SWEP.Trivia_Class = "Semi-Automatic Rifle"
SWEP.Trivia_Desc = "Autoloading rifle designed for better accuracy than competing models. Possesses a more classical operation compared to its contemporaries. Due to its appearance, it is sometimes exempted from gun control laws targeting \"Assault Weapons\" despite its identical ability to kill. This has helped it find success despite its higher cost and non-standard magazine well."
SWEP.Trivia_Manufacturer = "Rifles International"
SWEP.Trivia_Calibre = "5.56x45mm NATO"
SWEP.Trivia_Mechanism = "Rotating Bolt"
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
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.ViewModelFOV = 70
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

-- Damage --
-- does the same damage as the M16; it's all 5.56! Range is improved, however, due to a longer barrel

SWEP.Damage = 34 -- 3 shot kill
SWEP.DamageMin = 20 -- 5 shot kill
SWEP.RangeMin = 20
SWEP.Range = 250
SWEP.Penetration = 8
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 500

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 20
SWEP.ExtendedClipSize = 30
SWEP.ReducedClipSize = 10

-- Recoil --

SWEP.Recoil = 0.75
SWEP.RecoilSide = 0.1

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
SWEP.MoveDispersion = 400
SWEP.JumpDispersion = 1200

SWEP.Primary.Ammo = "smg1"
SWEP.MagID = "mini14"

-- Speed multipliers --

SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.333
SWEP.ShootSpeedMult = 0.9

-- Length --

SWEP.BarrelLength = 36
SWEP.ExtraSightDist = 7

-- Ironsights / Customization / Poses --

SWEP.HolsterPos = Vector(4.623, -2.211, 1.004)
SWEP.HolsterAng = Angle(-8.443, 28.843, 0)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
    Pos = Vector(-4.28, 2, 2.05),
    Ang = Angle(0, 0.03, 0),
    Magnification = 1,
    SwitchToSound = "",
    CrosshairInSights = false
}

SWEP.ActivePos = Vector(0, -2, 0)
SWEP.ActiveAng = Angle(0, 0, -3)

SWEP.CustomizePos = Vector(5, -2, -2)
SWEP.CustomizeAng = Angle(15, 25, 0)

SWEP.CrouchPos = Vector(-8.5, 2, -1)
SWEP.CrouchAng = Angle(0, 0, -40)

SWEP.BarrelOffsetHip = Vector(0, 0, -3)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-8, 5, -7),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Firing sounds --

local path = "weapons/arccw_ud/mini14/"
local common = "weapons/arccw_ud/common/"
SWEP.ShootSound = path .. "fire.ogg"
SWEP.ShootSoundSilenced = path .. "fire_supp.ogg"
SWEP.DistantShootSound = path .. "fire_dist.ogg"

-- Bodygroups --

SWEP.BulletBones = {
}

SWEP.AttachmentElements = {
    ["ud_mini14_mag_10"] = {
        VMBodygroups = {{ind = 4, bg = 2}},
    },
    ["ud_mini14_mag_30"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
    },
    ["ud_mini14_mag_15_22lr"] = {
        VMBodygroups = {{ind = 4, bg = 3}},
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
                vpos = Vector(0, 0, 5.9),
            },
        },
    },
    ["ud_mini14_barrel_short"] = {
        VMBodygroups = {{ind = 3, bg = 2}},
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, -6),
            },
        },
    },
    ["ud_mini14_barrel_stub"] = {
        VMBodygroups = {{ind = 3, bg = 3}},
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, -10),
            },
        },
    },

    ["ud_mini14_stock_polymer"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
    },
    ["ud_mini14_stock_sawnoff"] = {
        VMBodygroups = {{ind = 1, bg = 2}},
    },

    ["ud_mini14_clamp"] = {
        VMBodygroups = {{ind = 6, bg = 1}},
    },
}

-- Animations --

SWEP.Hook_Think = function(wep)
    local vm = wep:GetOwner():GetViewModel()
    vm:SetPoseParameter( "sights", Lerp(wep:GetSightDelta(), 1, 0) ) -- thanks fesiug
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
        Time = 18 / 30,
        ShellEjectAt = 0.01,
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 18 / 30,
        ShellEjectAt = 0.01,
        SoundTable = {
            {s = path .. "chamber.ogg", t = 0}, -- Temporary
        },
    },

    -- 20 Round Reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 65 / 30,
        MinProgress = 1.4,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.25},
            {s = common .. "cloth_2.ogg",  t = 0.4},
            {s = path .. "magin.ogg",   t = 1.05},
            {s = common .. "cloth_3.ogg",  t = 1.3},
            {s = common .. "shoulder.ogg",  t = 1.75},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 80 / 30,
        MinProgress = 2.1,
        LastClip1OutTime = 1.2,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.15},
            {s = common .. "cloth_2.ogg",  t = 0.4},
            {s = path .. "magin.ogg",   t = 1.10},
            {s = path .. "chback.ogg",  t = 1.85},
            {s = path .. "chamber.ogg", t = 1.95},
            {s = common .. "cloth_3.ogg",  t = 2.2},
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
            {s = common .. "cloth_1.ogg",  t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.15},
            {s = common .. "cloth_2.ogg",  t = 0.3},
            {s = path .. "magin.ogg",   t = 1.10},
            {s = common .. "cloth_3.ogg",  t = 1.5},
        },
    },
    ["reload_empty_10"] = {
        Source = "reload_empty_10",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 90 / 30,
        MinProgress = 2.1,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.15},
            {s = common .. "cloth_2.ogg",  t = 0.4},
            {s = path .. "magin.ogg",   t = 1.10},
            {s = path .. "chback.ogg",  t = 1.90},
            {s = path .. "chamber.ogg", t = 2.10},
            {s = common .. "cloth_3.ogg",  t = 2.4},
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
            {s = common .. "cloth_1.ogg",  t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.15},
            {s = common .. "cloth_2.ogg",  t = 0.3},
            {s = path .. "magin.ogg",   t = 1.10},
            {s = common .. "cloth_3.ogg",  t = 1.4},
            {s = common .. "shoulder.ogg",  t = 1.85},
        },
    },
    ["reload_empty_30"] = {
        Source = "reload_empty_30",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 90 / 30,
        MinProgress = 2.3,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.15},
            {s = common .. "cloth_2.ogg",  t = 0.3},
            {s = path .. "magin.ogg",   t = 1.20},
            {s = path .. "chback.ogg",  t = 2},
            {s = path .. "chamber.ogg", t = 2.1},
            {s = common .. "cloth_3.ogg",  t = 2.3},
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
            {s = common .. "cloth_1.ogg",  t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.15},
            {s = common .. "cloth_2.ogg",  t = 0.3},
            {s = path .. "magin.ogg",   t = 1.10},
            {s = common .. "cloth_3.ogg",  t = 1.4},
        },
    },
    ["reload_empty_15_22lr"] = {
        Source = "reload_empty_15_22lr",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 90 / 30,
        MinProgress = 2.2,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0.0},
            {s = path .. "magout.ogg", 	t = 0.15},
            {s = common .. "cloth_2.ogg",  t = 0.5},
            {s = path .. "magin.ogg",   t = 1.10},
            {s = path .. "chback.ogg",  t = 2},
            {s = path .. "chamber.ogg", t = 2.1},
            {s = common .. "cloth_3.ogg",  t = 2.3},
        },
    },
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp","optic"},
        Bone = "mini14_parent",
        Offset = {
            vpos = Vector(0, -4.2, 6),
            vang = Angle(90, 2, -90),
        },
        VMScale = Vector(1.25, 1.25, 1.25),
        InstalledEles = {"ud_mini14_rail_optic"},
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "Default Barrel",
        Slot = "ud_mini14_barrel",
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "mini14_flash",
        Offset = {
            vpos = Vector(0, 0, -1),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip"},
        Bone = "mini14_parent",
        Offset = {
            vpos = Vector(0, 0.5, 13),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"ud_mini14_rail_fg"},
    },
    {
        PrintName = "Tactical",
        Slot = {"tac_pistol"},
        Bone = "mini14_parent",
        Offset = {
            vpos = Vector(0, -1.5, 26.2),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"ud_mini14_clamp"},
    },
    {
        PrintName = "Mag Type",
        Slot = {"ud_mini14_mag"},
        DefaultAttName = "20-Round Ranch Rifle Mag",
    },
    {
        PrintName = "Stock Type",
        Slot = {"ud_mini14_stock"},
        DefaultAttName = "Wooden Stock",
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