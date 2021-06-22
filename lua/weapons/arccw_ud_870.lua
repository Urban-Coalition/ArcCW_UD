SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Decay"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.ShellModel = "models/shells/shell_12gauge.mdl"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ArcCW.ShotgunShellSoundsTable
SWEP.ShellScale = 1.7

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.CamAttachment = 3

-- Fake name --

SWEP.PrintName = "Express-12"

-- True name --

SWEP.TrueName = "Remington 870"

-- Trivia --

SWEP.Trivia_Class = "Shotgun"
SWEP.Trivia_Desc = "Classic pump-action shotgun, renowed for its high quality parts and assembly. A simple firearm with a simple purpose. Marketed primarily to civilians for use in hunting game and self-defense, but it has found popularity among police departments for a relatively innocuous appearance and ability to accept custom loaded less-lethal shells."
SWEP.Trivia_Manufacturer = "Mauer Armaments"
SWEP.Trivia_Calibre = "12 Gauge"
SWEP.Trivia_Mechanism = "Pump-Action"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1950

-- Weapon slot --

SWEP.Slot = 3

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Remington Arms"
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ud_870.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.ViewModelFOV = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.DefaultBodygroups = "000000000"

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-7, 4, -5.8),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Damage parameters --

SWEP.Damage = 20 -- 5 pellets to kill
SWEP.DamageMin = 13 -- land all 8 pellets to kill
SWEP.Range = 40
SWEP.RangeMin = 5
SWEP.Num = 8
SWEP.Penetration = 1
SWEP.DamageType = DMG_BUCKSHOT
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 200

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 6
SWEP.ExtendedClipSize = 8
SWEP.ReducedClipSize = 6

-- Recoil --

SWEP.Recoil = 5
SWEP.RecoilSide = 1

SWEP.RecoilRise = 0.24
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 1
SWEP.MaxRecoilPunch = 1

SWEP.Sway = 0.5

-- Firerate / Firemodes --

SWEP.Delay = 60 / 60
SWEP.Firemodes = {
    {
        PrintName = "PUMP",
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NoLastCycle = true
SWEP.ManualAction = true
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

SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.333
SWEP.ShootSpeedMult = 0.75

-- Length --

SWEP.BarrelLength = 32
SWEP.ExtraSightDist = 20

-- Ironsights / Customization / Poses --

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "shotgun"
SWEP.HoldtypeSights = "ar2"

SWEP.IronSightStruct = {
     Pos = Vector(-2.99, -1, 2),
     Ang = Angle(0, 0, 0),
     Magnification = 1.1,
     SwitchToSound = "",
}

SWEP.HolsterPos = Vector(-0.5, -4, -2)
SWEP.HolsterAng = Angle(3.5, 7, -20)

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-3.8, -2, 0)
SWEP.CrouchAng = Angle(0, 0, -30)

SWEP.BarrelOffsetHip = Vector(0, 0, -3)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

-- Firing sounds --

local path = "weapons/arccw_ud/870/"
local common = "weapons/arccw_ud/common/"
SWEP.ShootSound = path .. "fire.ogg"
SWEP.ShootSoundSilenced = path .. "fire_supp.ogg"
SWEP.DistantShootSound = path .. "fire_dist.ogg"

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
        Time = 20 / 30,
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 20 / 30,
    },
    ["holster"] = {
        Source = "holster",
        Time = 20 / 30,
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = 20 / 30,
    },
    ["fire"] = {
        Source = "fire",
        Time = 23 / 30,
    },
    ["cycle"] = {
        Source = "cycle",
        Time = 20 / 30,
        ShellEjectAt = 0.1,
        MinProgress = 12 / 30,
        SoundTable = {
            {s = common .. "cloth_3.ogg",  t = 0},
            {s = path .. "rack_1.ogg",  t = 0},
            {s = path .. "eject.ogg",  t = 0.075},
            {s = path .. "rack_2.ogg",  t = 0.2},
        },
    },
    ["sgreload_start"] = {
        Source = "sgreload_start",
        Time = 16 / 30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0,
        SoundTable = {
            {s = common .. "cloth_1.ogg",  t = 0},
            {s = common .. "shoulder.ogg",  t = 0.1},
        },
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
            {s = {common .. "shotgun_insert_1.ogg", common .. "shotgun_insert_2.ogg", common .. "shotgun_insert_3.ogg"},  t = 0.1},
            {s = common .. "cloth_2.ogg",  t = 0},
        },
    },
    ["sgreload_finish"] = {
        Source = "sgreload_finish",
        Time = 20 / 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.6,
        LHIKOut = 0.7,
        TPAnimStartTime = 0.8,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        SoundTable = {
            {s = common .. "cloth_3.ogg",  t = 0},
            {s = common .. "shoulder.ogg",  t = 0.27},
        },
    },
    ["sgreload_finish_empty"] = {
        Source = "sgreload_finish_empty",
        Time = 37 / 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 1.2,
        LHIKOut = 1.4,
        TPAnimStartTime = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        ShellEjectAt = 0.5,
        SoundTable = {
            {s = common .. "cloth_2.ogg",  t = 0.5},
            {s = path .. "rack_1.ogg",  t = 0.5},
            {s = path .. "eject.ogg",  t = 0.58},
            {s = path .. "rack_2.ogg",  t = 0.7},
            {s = common .. "shoulder.ogg",  t = 0.9},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    if wep.Attachments[1].Installed then
        vm:SetBodygroup(8, 2)
    elseif wep.Attachments[2].Installed == "ud_870_barrel_long" then
        vm:SetBodygroup(8, 1)
    else
        vm:SetBodygroup(8, 0)
    end
end


SWEP.BulletBones = {
    [1] = "870_shell1",
}

-- Bodygroups --

SWEP.AttachmentElements = {
    ["ud_shotgun_rail_fg"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },
    ["ud_870_slide_moe"] = {
        VMBodygroups = {{ind = 6, bg = 1}},
    },
    ["ud_870_slide_long"] = {
        VMBodygroups = {{ind = 6, bg = 2}},
    },
    ["ud_shotgun_rail_fg"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },
    ["ud_870_barrel_long"] = {
        Override_IronSightStruct = {
            Pos = Vector(-3.0075, -1, 2.25),
            Ang = Angle(-0.5, 0.025, 0),
            Magnification = 1.1,
            CrosshairInSights = false
        },
        VMBodygroups = {
            {ind = 8, bg = 1},
            {ind = 1, bg = 1}
        },
    },
    ["ud_870_barrel_sawnoff"] = {
        VMBodygroups = {
        {ind = 1, bg = 2},
        {ind = 7, bg = 2}
        },
    },
    ["ud_870_tube_reduced"] = {
        VMBodygroups = {
        {ind = 2, bg = 2},
        {ind = 7, bg = 2}
        },
    },
    ["ud_870_tube_ext"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },
    ["ud_870_stock_poly"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
    },
    ["ud_870_stock_sawnoff"] = {
        VMBodygroups = {{ind = 4, bg = 2}},
    },
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp","optic","sniper_optic"},
        Bone = "870_parent",
        Offset = {
            vpos = Vector(0, -1.8, 4),
            vang = Angle(90, 2, -90),
        },
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "16\" Standard Barrel",
        Slot = "ud_870_barrel",
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"choke", "muzzle_shotgun"},
        Bone = "870_flash",
        Offset = {
            vpos = Vector(-0.03, -0.05, -0.5),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Forend",
        DefaultAttName = "Factory Forend",
        Slot = {"ud_870_slide"},
        Bone = "870_slide",
        Offset = {
            vpos = Vector(3, -4.4, -29),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip"},
        Bone = "870_slide",
        Offset = {
            vpos = Vector(0, 1.3, 0),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"ud_shotgun_rail_fg"}
    },
    {
        PrintName = "Tactical",
        Slot = {"tac_pistol"},
        Bone = "870_slide",
        Offset = {
            vpos = Vector(0, 1, 4.25),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Stock Type",
        DefaultAttName = "Wooden Stock",
        Slot = {"ud_870_stock"},
    },
    {
        PrintName = "Tube Type",
        Slot = {"ud_870_tube"},
        DefaultAttName = "6 Shell Tube",
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
        Bone = "870_parent",
        Offset = {
            vpos = Vector(0.6, 0, 5),
            vang = Angle(90, 0, -90),
        },
    },
}