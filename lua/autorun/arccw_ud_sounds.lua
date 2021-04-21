local sadd = sound.Add -- :(
local ups = util.PrecacheSound -- yeah

local ARC_UD_RL = {}

-- M16
ARC_UD_RL["ARC_UD_M16.BoltDrop"] = "m16/boltdrop.ogg"
ARC_UD_RL["ARC_UD_M16.Chamber"] = "m16/chamber.ogg"
ARC_UD_RL["ARC_UD_M16.CHBack"] = "m16/chback.ogg"
ARC_UD_RL["ARC_UD_M16.MagIn"] = "m16/magin.ogg"
ARC_UD_RL["ARC_UD_M16.MagOut"] = "m16/magout.ogg"
ARC_UD_RL["ARC_UD_M16.MagTap"] = "m16/magtap.ogg"

-- Glock
ARC_UD_RL["ARC_UD_Glock.Chamber"] = "glock/sliderel.ogg"
ARC_UD_RL["ARC_UD_Glock.CHBack"] = "glock/sliderel_deact.ogg"
ARC_UD_RL["ARC_UD_Glock.MagIn"] = "glock/magin.ogg"
ARC_UD_RL["ARC_UD_Glock.MagOut"] = "glock/magout.ogg"
ARC_UD_RL["ARC_UD_Glock.MagRelease"] = "glock/magrel.ogg"

local tbl = {channel = CHAN_ITEM, 
	volume = 1,
	soundlevel = 100,
	pitchstart = 92,
	pitchend = 112}

for k, v in pairs(ARC_UD_RL) do
	tbl.name = k
	tbl.sound = v
		
	sadd(tbl)
	
	if type(v) == "table" then
		for k2, v2 in pairs(v) do
			ups(v2)
		end
	else
		ups(v)
	end
end	