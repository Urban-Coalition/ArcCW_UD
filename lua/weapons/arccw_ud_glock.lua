SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Decay"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.4
SWEP.ShellMaterial = "models/weapons/arcticcw/shell_9mm"
SWEP.ShellPitch = 100

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.CamAttachment = 3
SWEP.TracerNum = 1
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "GEN3"

-- True name --

SWEP.TrueName = "Glock 17"

-- Trivia --

SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = "Handgun originally designed by a curtain rod manufacturer to replace the Austrian military's aging arsenal of WW2 handguns. Its design has since become synonymous with the idea of handguns, as its reliable and cost-effective design combined with a switchless trigger safety mechanism gave it a reputation as a weapon of choice for cops and robbers alike around the world."
SWEP.Trivia_Manufacturer = "Next Generation Weapons Inc."
SWEP.Trivia_Calibre = "9x19mm Parabellum"
SWEP.Trivia_Mechanism = "Short Recoil"
SWEP.Trivia_Country = "Austria"
SWEP.Trivia_Year = 1982

-- Weapon slot --

SWEP.Slot = 1

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Glock Ges.m.b.H."
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ud_glock.mdl"
SWEP.WorldModel = "models/weapons/w_pist_usp.mdl"
SWEP.ViewModelFOV = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

-- Damage --

SWEP.Damage = 34 -- 3 shot close range kill
SWEP.DamageMin = 20 -- 5 shot long range kill
SWEP.RangeMin = 10
SWEP.Range = 20
SWEP.Penetration = 2
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 200

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 17
SWEP.ExtendedClipSize = 33
SWEP.ReducedClipSize = 10

-- Recoil --

SWEP.Recoil = 1.5
SWEP.RecoilSide = 0.5

SWEP.RecoilRise = 0.24
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 0.5
SWEP.MaxRecoilPunch = 0.6

SWEP.Sway = 1.5

-- Firerate / Firemodes --

SWEP.Delay = 60 / 400
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        PrintName = "LOW",
        Mode = 0,
    }
}

SWEP.ShootPitch = 100
SWEP.ShootVol = 120

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC -- 

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 60

-- Accuracy --

SWEP.AccuracyMOA = 7
SWEP.HipDispersion = 700
SWEP.MoveDispersion = 250
SWEP.JumpDispersion = 500

SWEP.Primary.Ammo = "pistol"
SWEP.MagID = "glock"

SWEP.HeatCapacity = 50
SWEP.HeatDissipation = 20
SWEP.HeatDelayTime = 3

-- Speed multipliers --

SWEP.SpeedMult = 0.975
SWEP.SightedSpeedMult = 0.9
SWEP.SightTime = 0.233
SWEP.ShootSpeedMult = 1

-- Length --

SWEP.BarrelLength = 8
SWEP.ExtraSightDist = 7

-- Ironsights / Customization / Poses --

SWEP.HolsterPos = Vector(4.623, -2.211, 1.004)
SWEP.HolsterAng = Angle(-8.443, 28.843, 0)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.IronSightStruct = {
     Pos = Vector(-2.33, 4, 2.8),
     Ang = Angle(0.05, -0.06, 0),
     Magnification = 1,
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, -5)

SWEP.CustomizePos = Vector(5, -2, -2)
SWEP.CustomizeAng = Angle(15, 25, 0)

SWEP.CrouchPos = Vector(-5, 2, 1)
SWEP.CrouchAng = Angle(0, 0, -45)

SWEP.BarrelOffsetHip = Vector(0, 0, -3)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-10.5, 3.5, -4.5),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Firing sounds --

local path = "weapons/arccw_ud/glock/"
local path1 = "weapons/arccw_ud/uzi/"
local common = "weapons/arccw_ud/common/"
SWEP.ShootSound = path .. "fire.ogg"
SWEP.ShootSoundSilenced = path .. "fire_supp.ogg"
SWEP.DistantShootSound = path .. "fire_dist.ogg"

-- Bodygroups --

SWEP.BulletBones = {
}

SWEP.AttachmentElements = {

    ["ud_glock_mag_10"] = {
        VMBodygroups = {{ind = 2, bg = 1}, {ind = 1, bg = 2}},
        AttPosMods = {
            [7] = {
            vpos = Vector(0.1, 1, -1.2),
                vang = Angle(90, 0, -90),
            }
        }
    },
    ["ud_glock_mag_33"] = {
        VMBodygroups = {{ind = 2, bg = 2}},
    },
    ["ud_glock_mag_100"] = {
        VMBodygroups = {{ind = 2, bg = 3}},
    },

    ["ud_glock_rail_optic"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },
    ["ud_glock_slide_comp"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
        NameChange = "GEN3 Custom",
        TrueNameChange = "Glock 17 Custom",
        Override_IronSightStruct = {
            Pos = Vector(-2.28, 4, 2.6),
            Ang = Angle(0.2, 0.05, 0),
            Magnification = 1,
        }
    },
    ["ud_glock_slide_lb"] = {
        VMBodygroups = {{ind = 4, bg = 2}},
        NameChange = "GEN3 Extended",
        TrueNameChange = "Glock 17L",
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, 1),
                vang = Angle(90, 0, -90),
            }
        }
    },
    ["ud_glock_slide_auto"] = {
        VMBodygroups = {{ind = 4, bg = 3}},
        NameChange = "GEN3 Auto",
        TrueNameChange = "Glock 18C",
    },
    ["ud_glock_slide_carbine"] = {
        VMBodygroups = {{ind = 4, bg = 4}},
        NameChange = "GEN3 Euro Carbine",
        TrueNameChange = "Glock 17XXXL",
        AttPosMods = {
            [3] = {
                vpos = Vector(0, 0, 9),
                vang = Angle(90, 0, -90),
            }
        }
    },
    ["ud_glock_slide_sd"] = {
        VMBodygroups = {{ind = 4, bg = 5}},
        NameChange = "GEN3 Silent Mistress",
        TrueNameChange = "Glock SD17",
        GivesFlags = {"sd"},
        AttPosMods = {
            [4] = {
                vpos = Vector(0, 0.1, 5),
                vang = Angle(90, 0, -90),
            },
            [5] = {
                vpos = Vector(0, 0.1, 5),
                vang = Angle(90, 0, 90),
            },
        }
    },
}

-- Animations --

SWEP.Hook_Think = function(wep)
    local vm = wep:GetOwner():GetViewModel()
    vm:SetPoseParameter( "sights", Lerp(wep:GetSightDelta(), 1, 0) ) -- thanks fesiug
end

-- CHAN_ITEM doesn't sound too right
local ci = CHAN_AUTO

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
        Time = 16 / 30,
        ShellEjectAt = 0.03,
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 16 / 30,
        ShellEjectAt = 0.03,
        SoundTable = {
            {s = path .. "sliderel.ogg", t = 0, c = ci}, -- Temporary
        },
    },
    ["fire_stock"] = {
        Source = "fire_stock",
        Time = 16 / 30,
        ShellEjectAt = 0.03,
    },
    ["fire_empty_stock"] = {
        Source = "fire_empty_stock",
        Time = 16 / 30,
        ShellEjectAt = 0.03,
        SoundTable = {
            {s = path .. "sliderel.ogg", t = 0, c = ci}, -- Temporary
        },
    },
    ["fire_cycle"] = {
        Source = "fire_cycle",
        Time = 16 / 30,
    },

    ["fix"] = {
        Source = "fix",
        Time = 32 / 30,
        ShellEjectAt = false,
        SoundTable = {
            {s = path .. "slide_pull.ogg",  t = 0.3, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 0.3, c = ci},
            {s = path .. "sliderel.ogg",        t = 0.6, c = ci},
        },
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.2,
    },
    ["fix_empty"] = {
        Source = "fix_empty",
        Time = 32 / 30,
        ShellEjectAt = false,
        SoundTable = {
            {s = path .. "slide_pull.ogg",  t = 0.3, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 0.3, c = ci},
        },
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.2,
    },
    ["fix_10"] = {
        Source = "fix_10",
        Time = 32 / 30,
        ShellEjectAt = false,
        SoundTable = {
            {s = path .. "slide_pull.ogg",  t = 0.3, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 0.3, c = ci},
            {s = path .. "sliderel.ogg",        t = 0.6, c = ci},
        },
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.2,
    },
    ["fix_empty_10"] = {
        Source = "fix_empty_10",
        Time = 32 / 30,
        ShellEjectAt = false,
        SoundTable = {
            {s = path .. "slide_pull.ogg",  t = 0.3, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 0.3, c = ci},
        },
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.2,
    },
    ["fix_33"] = {
        Source = "fix_33",
        Time = 32 / 30,
        ShellEjectAt = false,
        SoundTable = {
            {s = path .. "slide_pull.ogg",  t = 0.3, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 0.3, c = ci},
            {s = path .. "sliderel.ogg",        t = 0.6, c = ci},
        },
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.2,
    },
    ["fix_empty_33"] = {
        Source = "fix_empty_33",
        Time = 32 / 30,
        ShellEjectAt = false,
        SoundTable = {
            {s = path .. "slide_pull.ogg",  t = 0.3, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 0.3, c = ci},
        },
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.2,
    },
    ["fix_100"] = {
        Source = "fix_100",
        Time = 32 / 30,
        ShellEjectAt = false,
        SoundTable = {
            {s = common .. "cloth_2.ogg",  t = 0},
            {s = path .. "slide_pull.ogg",  t = 0.2, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 0.2, c = ci},
            {s = common .. "cloth_3.ogg",  t = 0.5},
            {s = path .. "sliderel.ogg",        t = 0.6, c = ci},
        },
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.2,
    },
    ["fix_empty_100"] = {
        Source = "fix_empty_100",
        Time = 32 / 30,
        ShellEjectAt = false,
        SoundTable = {
            {s = common .. "cloth_2.ogg",  t = 0},
            {s = path .. "sliderel_deact.ogg",  t = 0.2, c = ci},
            {s = path .. "slide_pull.ogg",  t = 0.2, c = ci},
            {s = common .. "cloth_3.ogg",  t = 0.5},
        },
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.2,
    },

    ["cycle"] = {
        Source = "cycle",
        Time = 32 / 30,
        ShellEjectAt = 0.4,
        SoundTable = {
            {s = common .. "cloth_2.ogg",  t = 0},
            {s = path .. "slide_pull.ogg",  t = 0.2, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 0.2, c = ci},
            {s = common .. "cloth_3.ogg",  t = 0.5},
            {s = path .. "sliderel.ogg",        t = 0.6, c = ci},
        },
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.2,
    },
    ["cycle_empty"] = {
        Source = "cycle_empty",
        Time = 32 / 30,
        ShellEjectAt = 0.4,
        SoundTable = {
            {s = common .. "cloth_2.ogg",  t = 0},
            {s = path .. "slide_pull.ogg",  t = 0.2, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 0.2, c = ci},
            {s = common .. "cloth_3.ogg",  t = 0.5},
        },
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.1,
        LHIKOut = 0.2,
    },

    -- 17 Round Reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 56 / 30,
        MinProgress = 1.1,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.3,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0},
            {s = common .. "cloth_2.ogg",  t = 0.3},
            {s = path .. "magrelease.ogg",    t = 0.3, c = ci},
            {s = path .. "magout.ogg",        t = 0.3, c = ci},
            {s = path .. "magin.ogg",         t = 0.4, c = ci},
            {s = common .. "cloth_3.ogg",  t = 1.1},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 66 / 30,
        MinProgress = 1.5,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.3,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0},
            {s = path .. "magrelease.ogg",    t = 0.15, c = ci},
            {s = path .. "magout.ogg",        t = 0.15, c = ci},
            {s = path .. "magin.ogg",         t = 0.45, c = ci},
            {s = common .. "cloth_2.ogg",  t = 0.5},
            {s = path .. "sliderel.ogg",      t = 1.45, c = ci},
            {s = common .. "cloth_3.ogg",  t = 1.5},
        },
    },

    -- 10 Round Reloads --

    ["reload_10"] = {
        Source = "reload_10",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 56 / 30,
        MinProgress = 1.1,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.3,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0},
            {s = common .. "cloth_2.ogg",  t = 0.3},
            {s = path .. "magrelease.ogg",    t = 0.3, c = ci},
            {s = path .. "magout.ogg",        t = 0.3, c = ci},
            {s = path .. "magin.ogg",         t = 0.4, c = ci},
            {s = common .. "cloth_3.ogg",  t = 1.1},
        },
    },
    ["reload_empty_10"] = {
        Source = "reload_empty_10",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 66 / 30,
        MinProgress = 1.5,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.3,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0},
            {s = path .. "magrelease.ogg",    t = 0.15, c = ci},
            {s = path .. "magout.ogg",        t = 0.15, c = ci},
            {s = path .. "magin.ogg",         t = 0.45, c = ci},
            {s = common .. "cloth_2.ogg",  t = 0.5},
            {s = path .. "sliderel.ogg",      t = 1.45, c = ci},
            {s = common .. "cloth_3.ogg",  t = 1.5},
        },
    },

    -- 33 Round Reloads --

    ["reload_33"] = {
        Source = "reload_33",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 56 / 30,
        MinProgress = 1.1,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.3,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0},
            {s = common .. "cloth_2.ogg",  t = 0.3},
            {s = path .. "magrelease.ogg",    t = 0.4, c = ci},
            {s = path .. "magout.ogg",        t = 0.4, c = ci},
            {s = path .. "magin.ogg",         t = 0.52, c = ci},
            {s = common .. "cloth_3.ogg",  t = 1.2},
        },
    },
    ["reload_empty_33"] = {
        Source = "reload_empty_33",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 66 / 30,
        MinProgress = 1.5,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.3,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0},
            {s = path .. "magrelease.ogg",    t = 0.16, c = ci},
            {s = path .. "magout.ogg",        t = 0.16, c = ci},
            {s = path .. "magin.ogg",         t = 0.46, c = ci},
            {s = common .. "cloth_2.ogg",  t = 0.5},
            {s = path .. "sliderel.ogg",      t = 1.46, c = ci},
            {s = common .. "cloth_3.ogg",  t = 1.6},
        },
    },

    -- 100 Round Reloads --

    ["reload_100"] = {
        Source = "reload_100",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 56 / 30,
        MinProgress = 1.3,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.3,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0},
            {s = path .. "magrelease.ogg",    t = 0.3, c = ci},
            {s = path1 .. "magout.ogg",        t = 0.3, c = ci},
            {s = common .. "cloth_2.ogg",  t = 0.7},
            {s = path1 .. "magin.ogg",         t = 0.8, c = ci},
            {s = common .. "cloth_3.ogg",  t = 1.1},
        },
    },
    ["reload_empty_100"] = {
        Source = "reload_empty_100",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 66 / 30,
        MinProgress = 1.75,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.3,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0},
            {s = path .. "magrelease.ogg",      t = 0.12, c = ci},
            {s = path1 .. "magout.ogg",          t = 0.12, c = ci},
            {s = path1 .. "magin.ogg",           t = 0.6, c = ci},
            {s = common .. "cloth_2.ogg",  t = 0.7},
            {s = path .. "sliderel_deact.ogg",  t = 1.35, c = ci},
            {s = path .. "sliderel.ogg",        t = 1.6, c = ci},
            {s = common .. "cloth_3.ogg",  t = 1.7},
        },
    },
}

SWEP.AutosolveSourceSeq = "idle"

SWEP.Hook_TranslateAnimation = function(wep, anim)
    if wep.Attachments[7].Installed == "go_stock_pistol_bt" then
        if (anim == "fire" || anim == "fire_empty") then
            return anim .. "_stock"
        end
    end
end

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp","optic"},
        Bone = "glock_parent",
        Offset = {
            vpos = Vector(0, -3.5, 2),
            vang = Angle(90, 2, -90),
        },
        InstalledEles = {"ud_glock_rail_optic"},
    },
    {
        PrintName = "Slide",
        DefaultAttName = "Standard Slide",
        Slot = "ud_glock_slide",
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "glock_flash",
        Offset = {
            vpos = Vector(0, 0, 0),
            vang = Angle(90, 0, -90),
        },
        ExcludeFlags = {"sd"},
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip"},
        Bone = "glock_parent",
        Offset = {
            vpos = Vector(0, -1.3, 5),
            vang = Angle(90, 0, -90),
        },
        MergeSlots = {4,5},
    },
    {
        Hidden = true,
        PrintName = "Tactical",
        Slot = {"tac_pistol"},
        Bone = "glock_parent",
        Offset = {
            vpos = Vector(0, -1.3, 5),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Mag Type",
        Slot = {"ud_glock_mag"},
        DefaultAttName = "17-Round G17 Mag",
    },
    {
        PrintName = "Stock Type",
        Slot = "go_stock_pistol_bt",
        DefaultAttName = "No Stock",
        Bone = "glock_parent",
        Offset = {
            vpos = Vector(0.1, 2, -1.4),
            vang = Angle(90, 0, -90),
        }
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