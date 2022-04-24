ArcCW.UD = ArcCW.UD or {}

ArcCW.UD.ADSReload = function(wep)
    local vm = wep:GetOwner():GetViewModel()
    local delta = wep:GetSightDelta()
    local coolilove = math.cos(delta * (math.pi / 2))
    vm:SetPoseParameter( "sights", Lerp(coolilove, 0, 1) ) -- thanks fesiug
end

-- right forward up
local traces = {
    {   -- Up
        -- This is done exclusively pointed upwards. -- Distance = Vector(0, 0, 1024),
        Influence = 1,
    },
    --[[{   -- Forward
        Distance = Vector(0, 1024, 0),
        Influence = 1,
    },]]
    {   -- Right
        Distance = Vector(768, 768, 0),
        Influence = 0.5,
    },
    {   -- Left
        Distance = Vector(-768, 768, 0),
        Influence = 0.5,
    },
}
local tracebase = {
    start = 0,
    endpos = 0,
    filter = NULL,
}
ArcCW.UD.InnyOuty = function(wep)
    if (game.SinglePlayer() and SERVER) or (!game.SinglePlayer() and CLIENT and wep:GetOwner() == LocalPlayer()) then
        if wep.DistantShootSoundOutdoors and wep.DistantShootSoundIndoors then
            local dso = wep.DistantShootSoundOutdoors
            local dsi = wep.DistantShootSoundIndoors
            local dsov = wep.DistantShootSoundOutdoorsVolume
            local dsiv = wep.DistantShootSoundIndoorsVolume
            if wep:GetBuff_Override("Silencer") then
                dso = wep.DistantShootSoundOutdoorsSilenced
                dsi = wep.DistantShootSoundIndoorsSilenced
            end
            dso = wep:GetBuff_Hook("Hook_GetDistantShootSoundOutdoors", dso)
            dsi = wep:GetBuff_Hook("Hook_GetDistantShootSoundIndoors", dsi)

            local vol = 0
            local wo = wep:GetOwner()
            local wop = wo:EyePos()
            local woa = Angle(0, wo:EyeAngles().y, 0)
            local t_influ = 0

            for _, tin in ipairs(traces) do
                tracebase.start = wop
                offset = Vector()
                if _ != 1 then
                    offset = offset + (tin.Distance.x * woa:Right())
                    offset = offset + (tin.Distance.y * woa:Forward())
                    -- No-one shoots Zs. -- offset = offset + (tin.Distance.z * woa:Up())
                else -- Specific skytrace
                    offset = offset + (vector_up*1024)
                end
                tracebase.endpos = wop + offset
                tracebase.filter = wo
                t_influ = t_influ + (tin.Influence or 1)
                local result = util.TraceLine(tracebase)
                debugoverlay.Line(wop-(vector_up*4), result.HitPos-(vector_up*4), 1, Color((_/4)*255, 0, (1-(_/4))*255))
                debugoverlay.Text(result.HitPos-(vector_up*4), math.Round((result.HitSky and 1 or result.Fraction)*100).."%", 1)
                vol = vol + (result.HitSky and 1 or result.Fraction) * tin.Influence
            end

            vol = vol / t_influ
            --vol = math.ease.InOutCubic(vol)
            if dso then
                for _, snd in ipairs(dso) do
                    wep:StopSound(snd)
                end
                if math.max(0.15, vol) != 0.15 then
                    wep:EmitSound(dso[math.random(1, #dso)], 75, 100, (vol) * dsov or 1, CHAN_AUTO)
                end
            end
            if dsi then
                for _, snd in ipairs(dsi) do
                    wep:StopSound(snd)
                end
                if math.min(0.85, vol) != 0.85 then
                    wep:EmitSound(dsi[math.random(1, #dsi)], 75, 100, (1-vol) * dsiv or 1, CHAN_AUTO)
                end
            end

        end
    end
end

local common = ")^/arccw_uc/common/"
ArcCW.UD.DrawSounds = {
    {s = common .. "raise.ogg", t = 0},
    {s = common .. "shoulder.ogg", t = 0.15},
    {s = common .. "rattle.ogg", t = 0.2},
}

ArcCW.UD.HolsterSounds = {
    {s = common .. "rattle.ogg", t = 0},
    {s = common .. "cloth_6.ogg", t = 0.2},
}

if CLIENT then
	matproxy.Add( {
		name = "UC_ShellColor",
		init = function( self, mat, values )
			--self.envMin = values.min
			--self.envMax = values.max
			self.col = Vector()
		end,
		bind = function( self, mat, ent )
            local swent = ent
            if IsValid(swent) then
                local herg = color_white
                local r = 255
                local g = 255
                local b = 255
                if swent:IsWeapon() and swent.ArcCW then
                    herg = swent:GetBuff_Override("Override_UC_ShellColor") or swent.UC_ShellColor or herg
                    r = herg.r or 255
                    g = herg.g or 255
                    b = herg.b or 255
                elseif IsValid(swent:GetOwner()) and IsValid(swent:GetOwner():GetActiveWeapon()) and swent:GetOwner():GetActiveWeapon().ArcCW then
                    swent = swent:GetOwner():GetActiveWeapon()
                    herg = swent:GetBuff_Override("Override_UC_ShellColor") or swent.UC_ShellColor or herg
                    r = herg.r or 255
                    g = herg.g or 255
                    b = herg.b or 255
                elseif swent then
                    herg = swent.UC_ShellColor or herg
                    r = herg.r or 255
                    g = herg.g or 255
                    b = herg.b or 255
                end

                self.col.x = r/255
                self.col.y = g/255
                self.col.z = b/255
                mat:SetVector( "$color2", self.col )
            end
		end
	} )

end