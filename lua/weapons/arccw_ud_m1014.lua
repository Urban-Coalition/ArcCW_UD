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
SWEP.ShellScale = 1.4

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.CamAttachment = 3

-- Fake name --

SWEP.PrintName = "Modello 14"

-- True name --

SWEP.TrueName = "M1014" 

-- Trivia --

SWEP.Trivia_Class = "Shotgun"
SWEP.Trivia_Desc = "Semi-automatic shotgun produced as part as Benelli's \"Super 90\" series. While back-to-back 12 gauge is devastating, good trigger discipline is a necessity, lest you spend more time reloading than fighting."
SWEP.Trivia_Manufacturer = "FakeName"
SWEP.Trivia_Calibre = "12 Gauge"
SWEP.Trivia_Mechanism = "Rotating Bolt"
SWEP.Trivia_Country = "Italy"
SWEP.Trivia_Year = 1980

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Benelli"
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ud_m1014.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.ViewModelFOV = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
 
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-6.5, 7, -6.6),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Damage parameters --

SWEP.Damage = 23
SWEP.DamageMin = 11
SWEP.Range = 35
SWEP.Penetration = 1
SWEP.DamageType = DMG_BUCKSHOT
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 150

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 6
SWEP.ExtendedClipSize = 8
SWEP.ReducedClipSize = 6

-- Recoil --

SWEP.Recoil = 2
SWEP.RecoilSide = 1

SWEP.RecoilRise = 0.24
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 0.3
SWEP.MaxRecoilPunch = 1

-- Firerate / Firemodes --

SWEP.Delay = 60 / 220
SWEP.Num = 8
SWEP.Firemodes = {
    {
        PrintName = "SEMI",
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
SWEP.HipDispersion = 100
SWEP.MoveDispersion = 100

SWEP.Primary.Ammo = "buckshot"

-- Speed multipliers --

SWEP.SpeedMult = 0.7
SWEP.SightedSpeedMult = 0.7
SWEP.SightTime = 0.3

-- Length --

SWEP.BarrelLength = 50
SWEP.ExtraSightDist = 20

-- Ironsights / Customization / Poses --

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "shotgun"
SWEP.HoldtypeSights = "ar2"

SWEP.IronSightStruct = {
     Pos = Vector(-3.05, -1, 1.8),
     Ang = Angle(0, 0, 0),
     Magnification = 1.1,
     SwitchToSound = "",
}

SWEP.HolsterPos = Vector(-0.202, -0.401, 0)
SWEP.HolsterAng = Angle(-2.814, 10.553, -4.926)

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-2, 0, -1)
SWEP.CrouchAng = Angle(0, 0, -12)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

-- Firing sounds --

SWEP.ShootSound = "r870/fire.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/m870/lowpolym870_supp.ogg"
SWEP.DistantShootSound = "r870/fire_dist.wav"

SWEP.Hook_Think = function(wep)
	wep:GetOwner():GetViewModel():SetPoseParameter( "sights", 1 - wep:GetSightDelta() ) -- thanks fesiug
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Framerate = 30,
    },
    ["idle_empty"] = {
        Source = "idle_empty",
        Framerate = 30,
    },
    ["draw"] = {
        Source = "draw",
        Time = 20 / 30,
        Framerate = 30,
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 20 / 30,
        Framerate = 30,
    },
    ["holster"] = {
        Source = "holster",
        Time = 20 / 30,
        Framerate = 30,
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = 20 / 30,
        Framerate = 30,
    },
    ["fire"] = {
        Source = "fire",
        Time = 23 / 30,
        Framerate = 30,
        ShellEjectAt = 0.01,
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 23 / 30,
        Framerate = 30,
        ShellEjectAt = 0.01,
    },
    ["sgreload_start"] = {
        Source = "sgreload_start",
        Time = 16 / 30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0,
    },
    ["sgreload_start_empty"] = {
        Source = "sgreload_start_empty",
        Time = 40 / 30,
        LHIK = true,
        LHIKIn = 0.7,
        LHIKOut = 0,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
    },
    ["sgreload_insert"] = {
        Source = "sgreload_insert",
        Time = 22 / 30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.3,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["sgreload_finish"] = {
        Source = "sgreload_finish",
        Time = 24 / 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.4,
    },
}

SWEP.BulletBones = {
    [1] = "1014_shell1",
}

-- Bodygroups --

SWEP.AttachmentElements = {
    ["ExampleBG"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
    },
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp","optic","sniper_optic"},
        Bone = "1014_parent",
        Offset = {
            vpos = Vector(0, -2, 5),
            vang = Angle(90, 2, -90),
            wpos = Vector(8, 0.4, -5.1),
            wang = Angle(-10, 0, 180),
        },
        ExtraSightDist = 4
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "Standard Barrel",
        Slot = "ud_1014_barrel",
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"choke", "muzzle_shotgun"},
        Bone = "1014_flash",
        Offset = {
            vpos = Vector(-0.03, -0.05, -0.5),
            vang = Angle(90, 0, -90),
            wpos = Vector(30, 1, -8),
            wang = Angle(-10, -2, 180),
        },
    },
    { 
        PrintName = "Underbarrel",
        Slot = {"foregrip"},
        Bone = "1014_parent",
        Offset = {
            vpos = Vector(0, 1.7, 7),
            vang = Angle(90, 0, -90),
            wpos = Vector(18, 0.9, -4.5),
            wang = Angle(-10, 0, 180),
        },
    },
    {
        PrintName = "Tactical",
        Slot = {"tac_pistol"},
        Bone = "1014_parent",
        Offset = {
            vpos = Vector(0, 1.7, 9.5),
            vang = Angle(90, 0, -90),
            wpos = Vector(22, 0.9, -4.5),
            wang = Angle(-10, 0, 180),
        },
    },
    {
        PrintName = "Stock",
        Slot = {"ud_1014_stock"},
        DefaultAttName = "Unfolded stock",
    },
    {
        PrintName = "Tube Type",
        Slot = {"ud_1014_tube"},
        DefaultAttName = "6 Shell Tube",
    },
    {
        PrintName = "Ammo Type",
        Slot = {"go_ammo"},
    },
    {
        PrintName = "Perk",
        Slot = "go_perk"
    },
    {
        PrintName = "Charm",
        Slot = {"charm", "fml_charm"},
        FreeSlot = true,
        Bone = "Body", 
        Offset = {
            vpos = Vector(0.6, -4, 4),
            vang = Angle(90, 0, -90),
            wpos = Vector(9, 2.3, -4.6),
            wang = Angle(-14, -2, 180),
        },
    },
}