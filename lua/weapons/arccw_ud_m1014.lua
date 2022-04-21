SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Coalition"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/12g.mdl"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ArcCW.ShotgunShellSoundsTable
SWEP.ShellScale = 1

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.CamAttachment = 3

-- Fake name --

SWEP.PrintName = "FC1040"

-- True name --

SWEP.TrueName = "M4 Super 90"

-- Trivia --

SWEP.Trivia_Class = "Shotgun"
SWEP.Trivia_Desc = [[Semi-automatic shotgun designed for close-quarters urban warfare. Uses an innovative short-stroke gas system that eliminates complex mechanisms found on most gas-operated automatic weapons. Its main use is in destroying locked doors.

Devastating damage output, but control is required to avoid spending more time reloading than fighting.]]
SWEP.Trivia_Manufacturer = "Iscapelli Armaments"
SWEP.Trivia_Calibre = "12 Gauge"
SWEP.Trivia_Mechanism = "Gas-Operated Rotating Bolt"
SWEP.Trivia_Country = "Italy"
SWEP.Trivia_Year = 1998

-- Weapon slot --

SWEP.Slot = 3

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Benelli Armi SPA"
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ud_m1014.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_ud_m1014.mdl"
SWEP.ViewModelFOV = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-6.6, 4, -7.2),
    ang        =    Angle(-4, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
    scale = 0.9
}
SWEP.DefaultPoseParams = {["grip"] = 0}

-- Damage parameters --

SWEP.Damage = 18 -- 6 pellets to kill
SWEP.DamageMin = 10 -- 10 pellets to kill
SWEP.Range = 40
SWEP.RangeMin = 4
SWEP.Num = 8
SWEP.Penetration = 2
SWEP.DamageType = DMG_BUCKSHOT
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 200

SWEP.HullSize = 0.25

SWEP.BodyDamageMults = ArcCW.UC.BodyDamageMults_Shotgun

-- Jamming --

SWEP.Malfunction = true
SWEP.MalfunctionJam = true
SWEP.MalfunctionPostFire = true
SWEP.MalfunctionTakeRound = false

-- Mag size --

SWEP.ChamberSize = 2
SWEP.Primary.ClipSize = 4
SWEP.ExtendedClipSize = 7
SWEP.ReducedClipSize = 2

SWEP.ChamberLoadNonEmpty = 2
SWEP.ChamberLoadEmpty = 1

-- Recoil --

SWEP.Recoil = 2.89
SWEP.RecoilSide = 2

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

SWEP.ShotgunReload = true

SWEP.ShootVol = 160
SWEP.ShootPitch = 100

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC --

SWEP.NPCWeaponType = "weapon_shotgun"
SWEP.NPCWeight = 210

-- Accuracy --

SWEP.AccuracyMOA = 30
SWEP.HipDispersion = 400
SWEP.MoveDispersion = 100
SWEP.JumpDispersion = 1000

SWEP.Primary.Ammo = "buckshot"

-- Speed multipliers --

SWEP.SpeedMult = 0.92
SWEP.SightedSpeedMult = 0.6
SWEP.SightTime = 0.55
SWEP.ShootSpeedMult = 0.75

-- Length --

SWEP.BarrelLength = 48
SWEP.ExtraSightDist = 10

-- Ironsights / Customization / Poses --

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-3.035, 5, 1.602),
     Ang = Angle(.345, 0.006, 0),
     Magnification = 1.1,
     SwitchToSound = "",
}

SWEP.HolsterPos = Vector(-0.5, -4, -3)
SWEP.HolsterAng = Angle(3.5, 7, -20)

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-4, -2, 0)
SWEP.CrouchAng = Angle(0, 0, -30)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(3, 0, -4.5)

-- Firing sounds --

local path2 = ")^weapons/arccw_ud/m16/"
local path1 = ")^weapons/arccw_ud/870/"
local path = ")^weapons/arccw_ud/m1014/"
local common = ")^/arccw_uc/common/"
SWEP.ShootSound = path .. "fire.ogg"
SWEP.ShootSoundSilenced = path .. "fire_supp.ogg"
SWEP.DistantShootSound = path .. "fire_dist.ogg"
SWEP.DistantShootSoundSilenced = common .. "sup_tail.ogg"
SWEP.ShootDrySound = path .. "dryfire.ogg"

local rottle = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local ratel = {common .. "rattle1.ogg", common .. "rattle2.ogg", common .. "rattle3.ogg"}

-- Animations --

SWEP.Hook_Think = ArcCW.UD.ADSReload

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle_empty",
    },
    ["idle_jammed"] = {
        Source = "idle_jammed",
    },
    ["draw"] = {
        Source = "draw",
        Time = 20 / 30,
        SoundTable = ArcCW.UD.DrawSounds,
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 20 / 30,
        SoundTable = ArcCW.UD.DrawSounds,
    },
    ["draw_jammed"] = {
        Source = "draw_jammed",
        Time = 20 / 30,
        SoundTable = ArcCW.UD.DrawSounds,
    },
    ["holster"] = {
        Source = "holster",
        Time = 20 / 30,
        SoundTable = ArcCW.UD.HolsterSounds,
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = 20 / 30,
        SoundTable = ArcCW.UD.HolsterSounds,
    },
    ["holster_jammed"] = {
        Source = "holster_jammed",
        Time = 20 / 30,
        SoundTable = ArcCW.UD.HolsterSounds,
    },
    ["fire"] = {
        Source = "fire",
        Time = 23 / 25,--30,
        ShellEjectAt = .01,
        SoundTable = {
            {s = path .. "mech.ogg", t = 0}, -- Not temporary
            {s = path1 .. "eject.ogg", t = 0}, -- Not temporary
        },
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 23 / 25,--30,
        ShellEjectAt = 0.01,
        SoundTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Not temporary
            {s = path1 .. "eject.ogg", t = 0}, -- Not temporary
        },
    },
    ["fire_jammed"] = {
        Source = "fire_jam",
        Time = 23 / 25,--30,
        ShellEjectAt = false,
        SoundTable = {
            {s = path .. "mech.ogg", t = 0}, -- Not temporary
            --{s = path1 .. "eject.ogg", t = 0}, -- Not temporary
        },
    },
    ["unjam"] = {
        Source = "jam_fix",
        Time = 60 / 30,
        ShellEjectAt = 1.1,
        LHIK = true,
        SoundTable = {
            {s = rottle, t = 0},
            {s = path2 .. "grab.ogg", t = .4},
            {s = path2 .. "usas_chback.ogg", t = 0.8},
            {s = path .. "breechclose.ogg", t = 0.9},
            {s = rottle, t = 1.2},
        },
    },
    ["unjam_empty"] = {
        Source = "jam_fix_empty",
        Time = 60 / 30,
        ShellEjectAt = 1.1,
        LHIK = true,
        SoundTable = {
            {s = rottle, t = 0},
            {s = path2 .. "grab.ogg", t = .4},
            {s = path2 .. "usas_chback.ogg", t = 0.8},
            --{s = path .. "breechclose.ogg", t = 1.2},
            {s = rottle, t = 1.2},
        },
    },
    ["sgreload_start"] = {
        Source = "sgreload_start",
        Time = 16 / 30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKOut = 0,
    },
    ["sgreload_start_empty"] = {
        Source = "sgreload_start_empty",
        Time = 40 / 30,
        MinProgress = 1,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0,
        TPAnimStartTime = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "breechload.ogg",  t = 0.05},
            {s = path .. "breechclose.ogg",  t = 0.7},
        },
        ForceEmpty = true,
    },
    ["sgreload_insert"] = {
        Source = "sgreload_insert",
        Time = 18 / 30,
        MinProgress = 0.24,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.3,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
        SoundTable = {
            {s = {common .. "shotgun_insert_1.ogg", common .. "shotgun_insert_2.ogg", common .. "shotgun_insert_3.ogg"},  t = 0},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.05},
        },
    },
    ["sgreload_finish"] = {
        Source = "sgreload_finish",
        Time = 22 / 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.6,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.8,
        SoundTable = {
            {s = common .. "shoulder.ogg",  t = 0.4},
        },
    },

    -- stock animla below 

    ["idle_stock"] = {
        Source = "idle_stock",
    },
    ["idle_empty_stock"] = {
        Source = "idle_empty_stock",
    },
    ["idle_jammed_stock"] = {
        Source = "idle_jammed_stock",
    },
    ["draw_stock"] = {
        Source = "draw_stock",
        Time = 20 / 30,
        SoundTable = ArcCW.UD.DrawSounds,
    },
    ["draw_empty_stock"] = {
        Source = "draw_empty_stock",
        Time = 20 / 30,
        SoundTable = ArcCW.UD.DrawSounds,
    },
    ["draw_jammed_stock"] = {
        Source = "draw_jammed_stock",
        Time = 20 / 30,
        SoundTable = ArcCW.UD.DrawSounds,
    },
    ["holster_stock"] = {
        Source = "holster_stock",
        Time = 20 / 30,
        SoundTable = ArcCW.UD.HolsterSounds,
    },
    ["holster_empty_stock"] = {
        Source = "holster_empty_stock",
        Time = 20 / 30,
        SoundTable = ArcCW.UD.HolsterSounds,
    },
    ["holster_jammed_stock"] = {
        Source = "holster_jammed_stock",
        Time = 20 / 30,
        SoundTable = ArcCW.UD.HolsterSounds,
    },
    ["fire_stock"] = {
        Source = "fire_stock",
        Time = 23 / 25,--30,
        ShellEjectAt = .01,
        SoundTable = {
            {s = path .. "mech.ogg", t = 0}, -- Not temporary
            {s = path1 .. "eject.ogg", t = 0}, -- Not temporary
        },
    },
    ["fire_empty_stock"] = {
        Source = "fire_empty_stock",
        Time = 23 / 25,--30,
        ShellEjectAt = 0.01,
        SoundTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Not temporary
            {s = path1 .. "eject.ogg", t = 0}, -- Not temporary
        },
    },
    ["fire_jammed_stock"] = {
        Source = "fire_jam_stock",
        Time = 23 / 25,--30,
        ShellEjectAt = false,
        SoundTable = {
            {s = path .. "mech.ogg", t = 0}, -- Not temporary
            --{s = path1 .. "eject.ogg", t = 0}, -- Not temporary
        },
    },
    ["unjam_stock"] = {
        Source = "jam_fix_stock",
        Time = 60 / 30,
        ShellEjectAt = 1.1,
        LHIK = true,
        SoundTable = {
            {s = rottle, t = 0},
            {s = path2 .. "grab.ogg", t = .4},
            {s = path2 .. "usas_chback.ogg", t = 0.8},
            {s = path .. "breechclose.ogg", t = 0.9},
            {s = rottle, t = 1.2},
        },
    },
    ["unjam_empty_stock"] = {
        Source = "jam_fix_empty_stock",
        Time = 60 / 30,
        ShellEjectAt = 1.1,
        LHIK = true,
        SoundTable = {
            {s = rottle, t = 0},
            {s = path2 .. "grab.ogg", t = .4},
            {s = path2 .. "usas_chback.ogg", t = 0.8},
            --{s = path .. "breechclose.ogg", t = 1.2},
            {s = rottle, t = 1.2},
        },
    },
    ["sgreload_start_stock"] = {
        Source = "sgreload_start_stock",
        Time = 16 / 30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKOut = 0,
    },
    ["sgreload_start_empty_stock"] = {
        Source = "sgreload_start_empty_stock",
        Time = 40 / 30,
        MinProgress = 1,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0,
        TPAnimStartTime = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "breechload.ogg",  t = 0.05},
            {s = path .. "breechclose.ogg",  t = 0.7},
        },
        ForceEmpty = true,
    },
    ["sgreload_finish_stock"] = {
        Source = "sgreload_finish_stock",
        Time = 22 / 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.6,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.8,
        SoundTable = {
            {s = common .. "shoulder.ogg",  t = 0.4},
        },
    },
}

SWEP.BulletBones = {
    --[1] = "1014_shell1",
}

-- Bodygroups --

SWEP.AttachmentElements = {
    ["ud_autoshotgun_barrel_short"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        AttPosMods = {
            [3] = {
                vpos = Vector(-0.02, -0.785, 23.8),
            }
        },
    },
    ["ud_autoshotgun_barrel_sawnoff"] = {
        VMBodygroups = {{ind = 1, bg = 2}},
        AttPosMods = {
            [3] = {
                vpos = Vector(-0.03, -0.75, 22.2),
            }
        },
    },
    ["ud_autoshotgun_barrel_sport"] = {
        VMBodygroups = {{ind = 1, bg = 2}},
        AttPosMods = {
            [3] = {
                vpos = Vector(-0.02, -0.785, 32.5),
            }
        },
        Override_IronSightStruct = {
            Pos = Vector(-3.035, -3, 1.48),
            Ang = Angle(.975, 0.006, 0),
            Magnification = 1.1
        },
    },
    ["ud_autoshotgun_tube_short"] = {
        VMBodygroups = {
            {ind = 2, bg = 1},
            {ind = 4, bg = 1},
        },
    },
    ["ud_autoshotgun_tube_long"] = {
        VMBodygroups = {{ind = 2, bg = 0}},
    },

    ["ud_autoshotgun_stock_in"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
        VMPoseParams = {["grip"] = 0}
    },
    ["ud_autoshotgun_stock_buffer"] = {
        VMBodygroups = {{ind = 3, bg = 2}},
        VMPoseParams = {["grip"] = 0}
    },
    ["ud_autoshotgun_stock_sport"] = {
        VMBodygroups = {
            {ind = 3, bg = 3},
            {ind = 6, bg = 1},
        },
        VMPoseParams = {["grip"] = 1}
    },

    ["ud_m1014_handguard_sport"] = {
        VMBodygroups = {{ind = 5, bg = 2}},
    },
    ["ud_autoshotgun_rail_fg"] = {
        VMBodygroups = {{ind = 5, bg = 1}},
    },
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp", "optic", "optic_sniper"},
        Bone = "1014_parent",
        Offset = {
            vpos = Vector(-0.025, -2, 3.5),
            vang = Angle(90, 2, -90),
        },
        SlideAmount = {
            vmin = Vector(-0.025, -2, 2),
            vmax = Vector(-0.025, -2, 5)
        },
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "18.5\" M4 Barrel", --16\" M4 Super 90 SBS Barrel
        DefaultAttIcon = Material("entities/att/acwatt_ud_m1014_barrel.png", "smooth mips"),
        Slot = "ud_1014_barrel",
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"choke", "muzzle_shotgun"},
        Bone = "1014_parent",
        Offset = {
            vpos = Vector(-0.02, -0.785, 30.2),
            vang = Angle(90, 0, -90),
        },
        ExcludeFlags = {"nomuzzle"}
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip","ud_1014_handguard"},
        Bone = "1014_parent",
        Offset = {
            vpos = Vector(0, 2, 12),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"ud_autoshotgun_rail_fg"},
    },
    {
        PrintName = "Tactical",
        Slot = {"tac_pistol"},
        Bone = "1014_parent",
        Offset = {
            vpos = Vector(0, 1, 19.5),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Stock",
        Slot = {"ud_1014_stock"},
        DefaultAttName = "Extended Stock",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m1014_stock.png", "smooth mips"),
    },
    {
        PrintName = "Tube Type",
        Slot = {"ud_1014_tube"},
        DefaultAttName = "4 Shell Tube",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m1014_tube.png", "smooth mips"),
        DefaultEles = {"ud_autoshotgun_tube_short"},
    },
    {
        PrintName = "Ammo Type",
        DefaultAttName = "\"BUCK\" #00 Buckshot",
        DefaultAttIcon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth"),
        Slot = "ud_ammo_shotgun",
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
        Bone = "1014_parent",
        Offset = {
            vpos = Vector(0.6, -0.5, 4),
            vang = Angle(90, 0, -90),
        },
    },
}

local lookup_barrel = {
    default = 1,
    ud_m1014_barrel_short = 0,
}

local lookup_tube = {
    default = 0,
    ud_m1014_tube_ext = 1,
}

SWEP.Hook_ExtraFlags = function(wep, data)

    local barrel = wep.Attachments[2].Installed and lookup_barrel[wep.Attachments[2].Installed] or lookup_barrel["default"]
    local tube = wep.Attachments[7].Installed and lookup_tube[wep.Attachments[7].Installed] or lookup_tube["default"]

    if barrel < tube then
        table.insert(data, "nomuzzleblocking")
    end
end