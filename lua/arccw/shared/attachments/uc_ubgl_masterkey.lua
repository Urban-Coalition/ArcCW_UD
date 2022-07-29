att.PrintName = "Masterkey Underslung Shotgun"
att.AbbrevName = "Masterkey Underslung Shotgun"
att.Icon = Material("entities/att/acwatt_uc_ubgl_m203.png", "mips smooth")
att.Description = "Underslung shotgun primarily used to breach doors, but loaded with #00 Buckshot for your pleasure. Negatively impacts the weapon's handling."

att.SortOrder = -100000

att.AutoStats = true
att.Desc_Pros = {
    "uc.ubgl"
}
att.Slot = "uc_ubgl"

att.LHIK = true

att.ModelOffset = Vector(0, 0, 0)
att.Model = "models/weapons/arccw/atts/uc_ubgl_masterkey.mdl"

att.SelectUBGLSound =  ""
att.ExitUBGLSound = ""

att.UBGL = true

att.UBGL_PrintName = "UBSG"
att.UBGL_Automatic = false
att.UBGL_MuzzleEffect = "muzzleflash_shotgun"
att.UBGL_Ammo = "buckshot"
att.UBGL_RPM = 120
att.UBGL_Recoil = 2

-- ??
att.UBGL_Capacity = 3
att.UBGL_ClipSize = 3

att.LHIK_GunDriver = 2
att.LHIK_CamDriver = 3

local function Ammo(wep)
    return wep:GetOwner():GetAmmoCount("buckshot")
end

att.Hook_LHIK_TranslateAnimation = function(wep, key)
    if key == "idle" then
        if wep:GetInUBGL() then
            return "idle_armed"
        else
            return "idle"
        end
    end
end

att.Hook_OnSelectUBGL = function(wep)
    wep:SetNextSecondaryFire(CurTime() + 0.6)
    wep:DoLHIKAnimation("to_armed", 0.6)
    wep:PlaySoundTable({
        {s = "arccw_uc/common/rattle_b2i_rifle.ogg", t = 0},
        {s = "arccw_uc/common/raise.ogg", t = 0.2},
        {s = "arccw_uc/common/grab.ogg", t = 0.5},
    })
end

att.Hook_OnDeselectUBGL = function(wep)
    wep:SetNextSecondaryFire(CurTime() + 0.6)
    wep:DoLHIKAnimation("to_idle", 0.6)
    wep:PlaySoundTable({
        {s = "arccw_uc/common/rattle_b2i_rifle.ogg", t = 0},
        {s = "arccw_uc/common/shoulder.ogg", t = 0.4},
    })
end

att.UBGL_Fire = function(wep, ubgl)
    if wep:Clip2() <= 0 then return end

    local owner = wep:GetOwner()

	local dir = (owner:EyeAngles() + wep:GetFreeAimOffset()):Forward()

	local bullet = {
		DamageMax = 18,
		DamageMin = 6,
		Range = 50,
		RangeMin = 5,
		DamageType = DMG_BUCKSHOT + DMG_BULLET,
		Penleft = 0,
		Penetration = 0,
		Num = 1,
		Damaged = {},
		Weapon = wep,
	}

	local data = {
		Attacker = owner,
		Dir        = dir,
		Src        = wep:GetShootSrc(),
		Spread     = Vector(0, 0, 0),
		Damage     = 0,
		Num        = 20,
		Force      = 120,
		HullSize   = 4,
		Weapon     = wep,
		Callback = function(attacker, tr, dmg)
			-- HACK: Pass a fake bullet table instead of ourselves so we don't use the weapon's attributes unintentionally
			bullet.Travelled = (tr.HitPos - tr.StartPos):Length()
			ArcCW:BulletCallback(att, tr, dmg, bullet)
		end
	}

	if wep:GetOwner():IsPlayer() then
		for n = 1, 20 do
			local dirry = Vector(dir.x, dir.y, dir.z)
			math.randomseed(math.Round(util.SharedRandom(n, -1337, 1337, !game.SinglePlayer() and wep:GetOwner():GetCurrentCommand():CommandNumber() or CurTime()) * (wep:EntIndex() % 30241)))
			wep:ApplyRandomSpread(dirry, ArcCW.MOAToAcc * 50)
			data.Dir = dirry
			if GetConVar("arccw_bullet_enable"):GetBool() then
				ArcCW:ShootPhysBullet(wep, data.Src, (250 / ArcCW.HUToM) * data.Dir:GetNormalized(), 0, bullet)
			else
				owner:FireBullets(data, true)
			end
		end
	else
		data.Spread = Vector(ArcCW.MOAToAcc * 50, ArcCW.MOAToAcc * 50, 0)
		owner:FireBullets(data, true)
	end
	wep:MyEmitSound(")^/weapons/arccw_ud/870/fire.ogg", 100, 100, 1, CHAN_WEAPON )
	wep:MyEmitSound(")^/weapons/arccw_ud/870/fire_dist.ogg", 149, 100, 0.5, CHAN_WEAPON + 1)
	wep:MyEmitSound(")^/weapons/arccw_ud/870/eject.ogg", nil, nil, nil, CHAN_AUTO)

    wep:DoLHIKAnimation("fire")
    wep:SetClip2(wep:Clip2() - 1)
    wep:DoEffects()
end

att.UBGL_Reload = function(wep, ubgl)
    if wep:Clip2() >= 3 then return end
    if Ammo(wep) <= 0 then return end

    wep:SetNextSecondaryFire(CurTime() + 2.75)

    wep:DoLHIKAnimation("reload", 2.75)
    wep:PlaySoundTable({
        {s = { "arccw_uc/common/rattle1.ogg", "arccw_uc/common/rattle2.ogg", "arccw_uc/common/rattle3.ogg" }, t = 0},
        {s = "arccw_uc/common/40mm/203open.ogg", t = 0.35},
        {s = "arccw_uc/common/magpouch_replace_small.ogg", t = 0.9},
        {s = "arccw_uc/common/40mm/203insert.ogg", t = 1.2},
        {s = "arccw_uc/common/40mm/203close.ogg", t = 1.85},
        {s = "arccw_uc/common/shoulder.ogg", t = 2.3},
    })

    local reserve = Ammo(wep)
    reserve = reserve + wep:Clip2()
    local clip = 3
    local load = math.Clamp(clip, 0, reserve)
    wep:GetOwner():SetAmmo(reserve - load, "smg1_grenade")
    wep:SetClip2(load)
end

att.Mult_SightTime = 1.25
att.Mult_SpeedMult = 0.85
att.Mult_SightedSpeedMult = 0.8