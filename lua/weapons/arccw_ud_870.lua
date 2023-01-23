SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Coalition"
SWEP.UC_CategoryPack = "1Urban Decay"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.ShellEffect = "arccw_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/12g.mdl"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ArcCW.ShotgunShellSoundsTable
SWEP.ShellScale = 1
SWEP.UC_ShellColor = Color(0.7*255, 0.2*255, 0.2*255)

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.CamAttachment = 3

-- Fake name --

SWEP.PrintName = "Express-12"

-- True name --

SWEP.TrueName = "Remington 870"

-- Trivia --

SWEP.Trivia_Class = "Shotgun"
SWEP.Trivia_Desc = "Classic pump-action shotgun, renowned for its high quality parts and assembly. A simple firearm with a simple purpose. Marketed primarily to civilians for use in hunting game and self-defense, but it has found popularity among police departments for a relatively innocuous appearance and ability to accept custom loaded less-lethal shells."
SWEP.Trivia_Manufacturer = "Mauer Armaments"
SWEP.Trivia_Calibre = "12 Gauge"
SWEP.Trivia_Mechanism = "Pump Action"
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
SWEP.WorldModel = "models/weapons/arccw/c_ud_870.mdl"
SWEP.ViewModelFOV = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.DefaultBodygroups = "000000000"

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-5.5, 5, -5.5),
    ang        =    Angle(-12, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
    scale = 1 - ( 0.35 * 0.5 )
}

-- Damage parameters --

SWEP.Damage = ArcCW.UC.StdDmg["12g_p"].max
SWEP.DamageMin = ArcCW.UC.StdDmg["12g_p"].min
SWEP.Penetration = ArcCW.UC.StdDmg["12g_p"].pen
SWEP.Num = ArcCW.UC.StdDmg["12g_p"].num

SWEP.Range = 50
SWEP.RangeMin = 5
SWEP.DamageType = DMG_BUCKSHOT
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 200

SWEP.HullSize = 0.5

SWEP.BodyDamageMults = ArcCW.UC.BodyDamageMults_Shotgun

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 6
SWEP.ExtendedClipSize = 8
SWEP.ReducedClipSize = 6

-- Recoil --

SWEP.Recoil = 3.1
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
        PrintName = "fcg.pump",
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
SWEP.SightTime = 0.4
SWEP.ShootSpeedMult = 0.75

-- Length --

SWEP.BarrelLength = 32
SWEP.ExtraSightDist = 2

-- Ironsights / Customization / Poses --

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-3.66, -3, 2.2),
     Ang = Angle(-0.75, 0, 2.8),
     Magnification = 1.1,
     SwitchToSound = "",
}

SWEP.HolsterPos = Vector(2, 0, -2)
SWEP.HolsterAng = Angle(-5.5, 20, -20)

SWEP.SprintPos = Vector(-0.5, -4, -2)
SWEP.SprintAng = Angle(3.5, 7, -20)

SWEP.ActivePos = Vector(-0.75, -2, 1)
SWEP.ActiveAng = Angle(0, 0, -3)

SWEP.CrouchPos = Vector(-3.8, -2, 0)
SWEP.CrouchAng = Angle(0, 0, -30)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(3, 0, -4)



SWEP.Malfunction = true
SWEP.MalfunctionTakeRound = true
SWEP.MalfunctionMean = 500
SWEP.MalfunctionVariance = 0.99
-- Firing sounds --

local path = ")weapons/arccw_ud/870/"
local common = ")/arccw_uc/common/"
SWEP.ShootSound = {
    path .. "fire-01.ogg",
    path .. "fire-02.ogg",
    path .. "fire-03.ogg",
    path .. "fire-04.ogg",
    path .. "fire-05.ogg",
    path .. "fire-06.ogg"
}
SWEP.ShootSoundSilenced = {
    path .. "fire-sup-01.ogg",
    path .. "fire-sup-02.ogg",
    path .. "fire-sup-03.ogg",
    path .. "fire-sup-04.ogg",
    path .. "fire-sup-05.ogg",
    path .. "fire-sup-06.ogg"
}
--[[SWEP.DistantShootSound = path .. "fire_dist.ogg"
SWEP.DistantShootSoundSilenced = common .. "sup_tail.ogg"]]
SWEP.ShootDrySound = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}

local tail = ")/arccw_uc/common/12ga/"

SWEP.DistantShootSoundOutdoors = {
    tail .. "fire-dist-12ga-pasg-ext-01.ogg",
    tail .. "fire-dist-12ga-pasg-ext-02.ogg",
    tail .. "fire-dist-12ga-pasg-ext-03.ogg",
    tail .. "fire-dist-12ga-pasg-ext-04.ogg",
    tail .. "fire-dist-12ga-pasg-ext-05.ogg",
    tail .. "fire-dist-12ga-pasg-ext-06.ogg"
}
SWEP.DistantShootSoundIndoors = {
    common .. "fire-dist-int-shotgun-01.ogg",
    common .. "fire-dist-int-shotgun-02.ogg",
    common .. "fire-dist-int-shotgun-03.ogg",
    common .. "fire-dist-int-shotgun-04.ogg",
    common .. "fire-dist-int-shotgun-05.ogg",
    common .. "fire-dist-int-shotgun-06.ogg"
}
SWEP.DistantShootSoundOutdoorsSilenced = {
    common .. "sup-tail-01.ogg",
    common .. "sup-tail-02.ogg",
    common .. "sup-tail-03.ogg",
    common .. "sup-tail-04.ogg",
    common .. "sup-tail-05.ogg",
    common .. "sup-tail-06.ogg",
    common .. "sup-tail-07.ogg",
    common .. "sup-tail-08.ogg",
    common .. "sup-tail-09.ogg",
    common .. "sup-tail-10.ogg"
}
SWEP.DistantShootSoundIndoorsSilenced = {
    common .. "fire-dist-int-pistol-light-01.ogg",
    common .. "fire-dist-int-pistol-light-02.ogg",
    common .. "fire-dist-int-pistol-light-03.ogg",
    common .. "fire-dist-int-pistol-light-04.ogg",
    common .. "fire-dist-int-pistol-light-05.ogg",
    common .. "fire-dist-int-pistol-light-06.ogg"
}
SWEP.DistantShootSoundOutdoorsVolume = 1
SWEP.DistantShootSoundIndoorsVolume = 1
SWEP.Hook_AddShootSound = ArcCW.UC.InnyOuty

SWEP.Hook_Think = ArcCW.UC.ADSReload

local shellin = {path .. "shell-insert-01.ogg", path .. "shell-insert-02.ogg", path .. "shell-insert-03.ogg"}

SWEP.Animations = {
    ["ready"] = {
        Source = "sgreload_finish_empty",
        Time = 37 / 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 1.2,
        LHIKOut = 1.4,
        SoundTable = {
            {s = common .. "raise.ogg", t = 0.2},
            {s = common .. "rattle.ogg", t = 0.2},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.5},
            {s = path .. "rack_1.ogg",  t = 0.4},
            {s = path .. "rack_2.ogg",  t = 0.6},
            {s = common .. "shoulder.ogg",  t = 0.9},
        },
        ProcDraw = true,
    },
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle",
    },
    ["draw"] = {
        Source = "draw",
        Time = 20 / 30,
        SoundTable = ArcCW.UC.DrawSounds,
    },
    ["holster"] = {
        Source = "holster",
        Time = 20 / 30,
        SoundTable = ArcCW.UC.HolsterSounds,
    },
    ["fire"] = {
        Source = "fire",
        --Time = 23 / 30,
        MinProgress = 8 / 30,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0, v = 0.25 }},
    },
    ["fire_iron"] = {
        Source = "fire",
        --Time = 23 / 30,
        MinProgress = 8 / 30,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }},
    },
    ["cycle"] = {
        Source = "cycle",
        --Time = 20 / 30,
        ShellEjectAt = 0.1,
        MinProgress = 0.26,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "rack_1.ogg",  t = 0},
            {s = path .. "eject.ogg",  t = 0.1},
            {s = path .. "rack_2.ogg",  t = 0.11},
        },
    },

    ["cycle_jammed"] = {
        Source = "jamcycle",
        --Time = 20 / 30,
        ShellEjectAt = 0.1,
        MinProgress = 0.26,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "rack_1.ogg",  t = 0},
            {s = path .. "eject.ogg",  t = 0.1},
            {s = path .. "rack_2.ogg",  t = 0.11},
        },
    },

    ["fix"] = {
        Source = "fix",
        Time = 50 / 30,
        ShellEjectAt = 0.7, -- should make the shell eject offscreen cuz the anim already has it
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.5},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1},
            {s = path .. "rack_1.ogg",  t = 0.6},
            {s = path .. "eject.ogg",  t = 0.7},
            {s = path .. "rack_2.ogg",  t = 0.9},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.7},
        }
    },
    ["sgreload_start"] = {
        Source = "sgreload_start",
        Time = 16 / 30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
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
            {s = shellin, t = 0},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
        },
    },
    ["sgreload_finish"] = {
        Source = "sgreload_finish",
        Time = 20 / 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.4,
        TPAnimStartTime = 0.8,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = common .. "shoulder.ogg",  t = 0.27},
        },
    },
    ["sgreload_finish_empty"] = {
        Source = "sgreload_finish_empty",
        Time = 37 / 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.6,
        LHIKOut = 0.8,
        TPAnimStartTime = 0.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        ShellEjectAt = 0.5,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.5},
            {s = path .. "rack_1.ogg",  t = 0.4},
            {s = path .. "eject.ogg",  t = 0.5},
            {s = path .. "rack_2.ogg",  t = 0.525},
            {s = common .. "shoulder.ogg",  t = 0.9},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    if !IsValid(vm) then return end
    -- if wep.Attachments[1].Installed then
    --     vm:SetBodygroup(8, 2)
    -- elseif wep.Attachments[2].Installed == "ud_870_barrel_long" then
    --     vm:SetBodygroup(8, 1)
    -- else
    --     vm:SetBodygroup(8, 0)
    -- end

    -- 8rnd tube and either barrel should remove the clamp
    if vm:GetBodygroup(7) == 1 and vm:GetBodygroup(1) != 0 then
        vm:SetBodygroup(7, 2)
    end
end


SWEP.BulletBones = {
    [0] = "870_shell1",
}

SWEP.DefaultSkin = 1

-- Bodygroups --

SWEP.AttachmentElements = {
    ["ud_870_optic_ringsight"] = {
        VMBodygroups = {
            {ind = 8, bg = 1},
        },
        Override_IronSightStruct = {
            Pos = Vector(-3.665, -2.75, 2.1),
            Ang = Angle(-0.6, 0, 1),
            Magnification = 1.1,
            SwitchToSound = "",
        },
    },
    ["optic_rail"] = {
        VMBodygroups = {
            {ind = 8, bg = 2},
        }
    },
    ["ud_shotgun_rail_fg"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },
    ["ud_870_slide_moe"] = {
        VMBodygroups = {{ind = 6, bg = 1}},
    },
    ["ud_870_slide_long"] = {
        VMBodygroups = {{ind = 6, bg = 2}},
    },
    ["ud_870_slide_poly"] = {
        VMBodygroups = {{ind = 6, bg = 3}},
    },
    ["ud_shotgun_rail_fg"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },
    ["ud_870_barrel_long"] = {
        AttPosMods = {
            [3] = {
                vpos = Vector(-0.03, -0.65, 39.5),
            }
        },
        VMBodygroups = {
            {ind = 1, bg = 1},
        },
    },
    ["ud_870_barrel_sawnoff"] = {
        VMBodygroups = {
        {ind = 1, bg = 2},
        {ind = 7, bg = 2}
        },
        AttPosMods = {
            [3] = {
                vpos = Vector(-0.03, -0.9, 19),
            }
        },
    },
    ["ud_870_tube_reduced"] = {
        VMBodygroups = {
            {ind = 2, bg = 2},
            {ind = 7, bg = 2}
        },
    },
    ["ud_870_tube_ext"] = {
        VMBodygroups = {
            {ind = 2, bg = 1},
            {ind = 7, bg = 1}
        },
    },
    ["ud_870_stock_poly"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
    },
    ["ud_870_stock_sawnoff"] = {
        VMBodygroups = {{ind = 4, bg = 2}},
    },
    ["ud_870_stock_raptor"] = {
        VMBodygroups = {{ind = 4, bg = 3}},
    },

    ["ud_870_skin_dirty"] = {
        VMSkin = 0
    },
    ["ud_870_skin_custom"] = {
        VMSkin = 3
    },
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp","optic","optic_sniper","ud_870_optic"},
        Bone = "870_parent",
        Offset = {
            vpos = Vector(0, -1.75, -2),
            vang = Angle(90, 0, -90),
        },
        VMScale = Vector(1, 1, 1),
        CorrectiveAng = Angle(1.8, 0.1, 0),
        InstalledEles = {"optic_rail"}
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "16\" Standard Barrel",
        DefaultAttIcon = Material("entities/att/acwatt_ud_870_barrel.png", "smooth mips"),
        Slot = "ud_870_barrel",
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"choke", "muzzle_shotgun"},
        Bone = "870_parent",
        Offset = {
            vpos = Vector(-0.03, -0.75, 26.3),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Forend",
        DefaultAttName = "Factory Forend",
        DefaultAttIcon = Material("entities/att/acwatt_ud_870_slide.png", "smooth mips"),
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
            vpos = Vector(0, 1.1, 0),
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
        PrintName = "Stock",
        DefaultAttName = "Wooden Stock",
        DefaultAttIcon = Material("entities/att/acwatt_ud_870_stock.png", "smooth mips"),
        Slot = {"ud_870_stock"},
    },
    {
        PrintName = "Tube Type",
        Slot = {"ud_870_tube"},
        DefaultAttName = "6 Shell Tube",
        DefaultAttIcon = Material("entities/att/acwatt_ud_870_tube.png", "smooth mips"),
    },
    {
        PrintName = "Ammo Type",
        DefaultAttName = "\"BUCK\" #00 Buckshot",
        DefaultAttIcon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth"),
        Slot = "ud_ammo_shotgun",
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
        Bone = "870_parent",
        Offset = {
            vpos = Vector(0.7, 0, 5),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Skin",
        Slot = "ud_870_skin",
        DefaultAttName = "Polished Steel",
        FreeSlot = true
    }
}

local lookup_barrel = {
    default = 1,
    ud_870_barrel_long = 2,
    ud_870_barrel_sawnoff = 0,
}

local lookup_tube = {
    default = 1,
    ud_870_tube_ext = 2,
    ud_870_tube_reduced = 0,
}

SWEP.Hook_ExtraFlags = function(wep, data)

    local barrel = wep.Attachments[2].Installed and lookup_barrel[wep.Attachments[2].Installed] or lookup_barrel["default"]
    local tube = wep.Attachments[8].Installed and lookup_tube[wep.Attachments[8].Installed] or lookup_tube["default"]

    if barrel < tube then
        table.insert(data, "nomuzzleblocking")
    end
end