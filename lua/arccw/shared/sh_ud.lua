ArcCW.UD = ArcCW.UD or {}

ArcCW.UD.ADSReload = function(wep)
    local vm = wep:GetOwner():GetViewModel()
    local delta = wep:GetSightDelta()
    local coolilove = math.cos(delta * (math.pi / 2))
    vm:SetPoseParameter( "sights", Lerp(coolilove, 0, 1) ) -- thanks fesiug
end

-- right forward up
local traces1 = {
    {   -- Up
        Distance = Vector(0, 0, 1024),
        Influence = 1,
    },
}
local traces2 = {
    {   -- Up
        Distance = Vector(0, 0, 1024),
        Influence = 1,
    },
    {   -- Right
        Distance = Vector(768, 768, 0),
        Influence = 0.5,
    },
    {   -- Left
        Distance = Vector(-768, 768, 0),
        Influence = 0.5,
    },
}
local traces3 = {
    {   -- Up
        Distance = Vector(0, 0, 1024),
        Influence = 1,
    },
    {   -- Up Forward
        Distance = Vector(0, 1024, 384),
        Influence = 1,
    },
    {   -- Up Back
        Distance = Vector(0, -1024, 384),
        Influence = 1,
    },
    {   -- Forward
        Distance = Vector(0, 1024, 0),
        Influence = 1,
    },
    {   -- Right
        Distance = Vector(768, 768, 0),
        Influence = 0.5,
    },
    {   -- Left
        Distance = Vector(-768, 768, 0),
        Influence = 0.5,
    },
}
local traces4 = {
    {   -- Up
        Distance = Vector(0, 0, 1024),
        Influence = 1,
    },
    {   -- Up Forward
        Distance = Vector(0, 1024, 384),
        Influence = 1,
    },
    {   -- Up Back
        Distance = Vector(0, -1024, 384),
        Influence = 1,
    },
    {   -- Forward
        Distance = Vector(0, 1024, 0),
        Influence = 1,
    },
    {   -- Back
        Distance = Vector(0, -1024, 0),
        Influence = 0.5,
    },
    {   -- Right
        Distance = Vector(768, 768, 0),
        Influence = 0.5,
    },
    {   -- Left
        Distance = Vector(-768, 768, 0),
        Influence = 0.5,
    },
    {   -- Left Back
        Distance = Vector(-768, -768, 0),
        Influence = 0.5,
    },
    {   -- Right Back
        Distance = Vector(768, -768, 0),
        Influence = 0.5,
    },
}

local tracebase = {
    start = 0,
    endpos = 0,
    filter = NULL,
}
local choice = {
    [1] = traces1,
    [2] = traces2,
    [3] = traces3,
    [4] = traces4,
}
if game.SinglePlayer() and SERVER then
    util.AddNetworkString("ArcCW_UC_InnyOuty")
elseif game.SinglePlayer() and CLIENT then
    net.Receive("ArcCW_UC_InnyOuty", function(len, ply)
        ArcCW.UD.InnyOuty(net.ReadEntity())
    end)
end
ArcCW.UD.InnyOuty = function(wep)
    if (game.SinglePlayer() and SERVER) then
        net.Start("ArcCW_UC_InnyOuty")
            net.WriteEntity(wep)
        net.Send(wep:GetOwner())
    elseif (CLIENT and wep:GetOwner() == LocalPlayer()) then
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
            local option = GetConVar("arccw_uc_disttrace"):GetInt()

            local fps = 1 / ( RealFrameTime() )
            if option > 0 then
                option = choice[option]
            else
                if fps > 100 then
                    option = 4
                elseif fps > 40 then
                    option = 3
                else
                    option = 2
                end
                if GetConVar("developer"):GetInt() > 0 then print("perf" .. option) end
                option = choice[option]
            end

            for _, tin in ipairs( option ) do
                tracebase.start = wop
                offset = Vector()
                --if !tin.AngleUp then--_ != 1 then
                    offset = offset + (tin.Distance.x * woa:Right())
                    offset = offset + (tin.Distance.y * woa:Forward())
                    offset = offset + (tin.Distance.z * woa:Up())
                --end
                tracebase.endpos = wop + offset
                tracebase.filter = wo
                t_influ = t_influ + (tin.Influence or 1)
                local result = util.TraceLine(tracebase)
                debugoverlay.Line(wop-(vector_up*4), result.HitPos-(vector_up*4), 1, Color((_/4)*255, 0, (1-(_/4))*255))
                debugoverlay.Text(result.HitPos-(vector_up*4), math.Round((result.HitSky and 1 or result.Fraction)*100).."%", 1)
                vol = vol + (result.HitSky and 1 or result.Fraction) * tin.Influence
            end

            vol = vol / t_influ
            if GetConVar("developer"):GetInt() > 0 then print(vol) end
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

    CreateClientConVar("arccw_uc_disttrace", 0, true, false, "Mode for traces", 0, 4)
	local function menu_uc(panel)
        panel:AddControl( "header", { description = "This menu contains options for configuring Urban Coalition weapons and items." } )
		local combobox = panel:ComboBox( "Trace count", "arccw_uc_disttrace" )--vgui.Create( "DComboBox", panel )
        combobox:SetSortItems( false )
		combobox:AddChoice( "Automatic",            0 )
		combobox:AddChoice( "1-way (performance, not recommended)",  1 )
		combobox:AddChoice( "3-way (default)",      2 )
		combobox:AddChoice( "6-way (expensive)",    3 )
		combobox:AddChoice( "9-way (absurd)",       4 )
        panel:ControlHelp( "How accurate should the weapon tail calculation be for when used outdoors or indoors?" )
	end

    hook.Add("PopulateToolMenu", "ARC9_MenuOptions", function()
        spawnmenu.AddToolMenuOption("Options", "ArcCW", "ArcCW_UC", "Urban Coalition", "", "", menu_uc)
    end)

end