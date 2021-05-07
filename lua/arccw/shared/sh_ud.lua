--CreateConVar("arccw_ud_darkrp", "1", FCVAR_ARCHIVE + FCVAR_REPLICATED, "Enable Urban Decay's DarkRP features.", 0, 1)

CreateConVar("arccw_ud_homeboy_epic", "0", FCVAR_ARCHIVE + FCVAR_REPLICATED, "Enables the 'Homeboy' training to be used on all non-manual guns. Additionally, enables its sprint-and-shoot functionality.", 0, 1)

local shipments = CreateConVar("arccw_ud_shipments", "1", FCVAR_ARCHIVE + FCVAR_REPLICATED, "Create weapon shipments for DarkRP.", 0, 1)
local shipments_mult = CreateConVar("arccw_ud_shipments_pricemult", "1", FCVAR_ARCHIVE + FCVAR_REPLICATED, "Shipment price multiplier.", 0)


local jobatts = CreateConVar("arccw_ud_jobatts", "1", FCVAR_ARCHIVE + FCVAR_REPLICATED, "Certain jobs are allowed to take specified attachments on guns.", 0, 1)
local jobatts_f = CreateConVar("arccw_ud_jobatts_forced", "1", FCVAR_ARCHIVE + FCVAR_REPLICATED, "Job-specific attachments *cannot* be removed.", 0, 1)

local licenseatts = CreateConVar("arccw_ud_licenseatts", "1", FCVAR_ARCHIVE + FCVAR_REPLICATED, "Certain attachments will require a gun license to equip.", 0, 1)
local licenseatts_civ = CreateConVar("arccw_ud_licenseatts_civvie", "0", FCVAR_ARCHIVE + FCVAR_REPLICATED, "Some guns are forced to equip civvie attachments unless the user has a gun license. (The specified attachments will be made free.)", 0, 1)
local licenseatts_s = CreateConVar("arccw_ud_licenseatts_strict", "0", FCVAR_ARCHIVE + FCVAR_REPLICATED, "Without a license, players cannot pickup or detatch licensed attachments at all.", 0, 1)

cvars.AddChangeCallback("arccw_ud_licenseatts_civvie", function(cvar, old, new)
    for k, _ in pairs(ArcCW.UD.LicenseGuns) do
        GAMEMODE.NoLicense[k] = new
    end
end)

ArcCW.UD = ArcCW.UD or {}

-- Configure the following lines!

-- These guns do not require a gun license.
ArcCW.UD.CivvieGuns = {
    arccw_ud_glock = true,
    arccw_ud_mini14 = true,
    arccw_ud_870 = true,
}

-- If arccw_ud_licenseatts_civvie is on:
-- For each of these guns, specified slots will be forced to have its attachment.
-- They cannot be taken off unless the user has a gun license.
-- If set to true, the guns require a gun license.

-- If arccw_ud_licenseatts_civvie is off:
-- The following guns require a gun license.
ArcCW.UD.LicenseGuns = {
    arccw_ud_m16 = {[2] = "ud_m16_receiver_civvie"},
    arccw_ud_uzi = {[2] = "ud_uzi_body_civvy"},
    arccw_ud_m1014 = true,
}


-- If arccw_ud_licenseatts_strict is on:
-- These attachments require a license.
ArcCW.UD.LicenseAtts = {
    -- Glock
    ud_glock_slide_auto = true,
    ud_glock_100_mag = true,

    -- M16
    ud_m16_receiver_auto = true,
    ud_m16_receiver_auto_flat = true,

    -- Uzi
    ud_uzi_mag_100 = true,
}

local function shipment_func(class, cat, price, sep, allowed)
    local wep = weapons.Get(class)
    DarkRP.createShipment(wep.PrintName, {
        model = wep.WorldModel,
        entity = class,
        price = math.Round(price * shipments_mult:GetFloat()),
        amount = 10,
        separate = sep,
        pricesep = math.Round(price * shipments_mult:GetFloat() / 10),
        noship = false,
        allowed = allowed,
        category = cat,
    })
end

local function load_ud_config()
    ArcCW.UD.JobAtts = {
        --[TEAM_POLICE] = {att = true}
    }
    for k, _ in pairs(ArcCW.UD.CivvieGuns) do
        GAMEMODE.NoLicense[k] = true
    end

    if licenseatts_civ:GetBool() then
        for k, _ in pairs(ArcCW.UD.LicenseGuns) do
            GAMEMODE.NoLicense[k] = true
        end
    end
end
hook.Add("postLoadCustomDarkRPItems", "ArcCW_UD", load_ud_config)

hook.Add("InitPostEntity", "ArcCW_UD_DarkRP", function()
    if shipments:GetBool() then
        shipment_func("arccw_ud_glock", "Pistols", 1600, true, {TEAM_GUN})
        shipment_func("arccw_ud_uzi", nil, 2200, false, {TEAM_GUN})
        shipment_func("arccw_ud_mini14", "Rifles", 2100, false, {TEAM_GUN})
        shipment_func("arccw_ud_m16", "Rifles", 2750, false, {TEAM_GUN})
        shipment_func("arccw_ud_870", "Shotguns", 1750, false, {TEAM_GUN})
        shipment_func("arccw_ud_m1014", "Shotguns", 2250, false, {TEAM_GUN})
    end
end)

hook.Add("ArcCW_PlayerCanAttach", "ArcCW_UD", function(ply, wep, attname, slot, detach)
    if not DarkRP or not licenseatts:GetBool() then return end

    local strict = licenseatts_s:GetBool()
    local has = ply:getDarkRPVar("HasGunlicense", false)
    if has or (not strict and detach) then return end

    local req = hook.Run("ArcCW_UD_AttNeedsLicense", ply, attname)
    req = req or ArcCW.UD.LicenseAtts[attname]
    if req then
        if SERVER then DarkRP.notify(ply, 1, 3, "You need a gun license to use this attachment!") end
        return false
    end

    local lic = ArcCW.UD.LicenseGuns[wep:GetClass()]
    if licenseatts_civ:GetBool() and istable(lic) and detach and lic[slot] and lic[slot] == attname then
        if SERVER then DarkRP.notify(ply, 1, 3, "You can't remove this without a gun license!") end
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