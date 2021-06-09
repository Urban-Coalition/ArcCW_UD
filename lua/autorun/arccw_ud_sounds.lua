local sadd = sound.Add -- :(
local ups = util.PrecacheSound -- yeah
local common = "weapons/arccw_ud/common/"
local ARC_UD_CM = {}

-- Common Sounds
ARC_UD_CM["ARC_UD_ShellIn"] = {common .. "shotgun_insert_1.ogg", common .. "shotgun_insert_2.ogg", common .. "shotgun_insert_3.ogg"}
ARC_UD_CM["ARC_UD_Cloth"] = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg"}

local tbl = {channel = CHAN_ITEM, 
	volume = 1,
	soundlevel = 100,
	pitchstart = 92,
	pitchend = 112}

for k, v in pairs(ARC_UD_CM) do
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