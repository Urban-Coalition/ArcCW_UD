--CreateConVar("arccw_ud_darkrp", "1", FCVAR_ARCHIVE + FCVAR_REPLICATED, "Enable Urban Decay's DarkRP features.", 0, 1)

local jobatts = CreateConVar("arccw_ud_jobatts", "1", FCVAR_ARCHIVE + FCVAR_REPLICATED, "Certain jobs are allowed to take specified attachments on guns.", 0, 1)
local jobatts_f = CreateConVar("arccw_ud_jobatts_forced", "1", FCVAR_ARCHIVE + FCVAR_REPLICATED, "Job-specific attachments *cannot* be removed.", 0, 1)

local licenseatts = CreateConVar("arccw_ud_licenseatts", "1", FCVAR_ARCHIVE + FCVAR_REPLICATED, "Certain attachments will require a gun license to equip.", 0, 1)
local licenseatts_s = CreateConVar("arccw_ud_licenseatts_strict", "0", FCVAR_ARCHIVE + FCVAR_REPLICATED, "Without a license, players cannot pickup or detatch licensed attachments at all.", 0, 1)


ArcCW.UD = ArcCW.UD or {}



local function load_ud_config()
    ArcCW.UD.JobAtts = {
        --[TEAM_POLICE] = {att = true}
    }

    ArcCW.UD.LicenseAtts = {
        ud_glock_100_mag = true,
    }
end
hook.Add("postLoadCustomDarkRPItems", "ArcCW_UD", load_ud_config)

hook.Add("ArcCW_PlayerCanAttach", "ArcCW_UD", function(ply, wep, attname, slot, detach)
    if not DarkRP or not licenseatts:GetBool() then return end

    local strict = licenseatts_s:GetBool()
    local has = ply:getDarkRPVar("HasGunlicense", false)
    if has or (not strict and detach) then return end

    local req = hook.Run("ArcCW_UD_AttNeedsLicense", ply, attname)
    req = req or ArcCW.UD.LicenseAtts[attname]
    if req then
        if SERVER then DarkRP.notify(ply, 1, 3, "You need a gun license to use this attachment!") end -- todo localize
        return false
    end
end)

hook.Add("ArcCW_PickupAttEnt", "ArcCW_UD", function(ply, attname)
    if not DarkRP or not licenseatts:GetBool() or not licenseatts_s:GetBool() then return end
    local has = ply:getDarkRPVar("HasGunlicense", false)
    if has then return end

    local req = hook.Run("ArcCW_UD_AttNeedsLicense", ply, attname)
    req = req or ArcCW.UD.LicenseAtts[attname]
    if req then
        if SERVER then DarkRP.notify(ply, 1, 3, "You need a gun license to pickup this attachment!") end -- todo localize
        return true
    end
end)