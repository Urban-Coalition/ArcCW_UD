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
    --arccw_ud_mini14 = true,
    --arccw_ud_870 = true,
}

-- If arccw_ud_licenseatts_civvie is on:
-- For each of these guns, specified slots will be forced to have its attachment.
-- They cannot be taken off unless the user has a gun license. (They are also made free.)
-- If set to true, the guns require a gun license.

-- If arccw_ud_licenseatts_civvie is off:
-- The following guns require a gun license.
ArcCW.UD.LicenseGuns = {
    arccw_ud_m16 = {[4] = "ud_m16_receiver_civvie"},
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
    ud_uzi_body_mini = true,
    ud_uzi_body_micro = true,

    -- M1014
    ud_m1014_tube_ext = true,
}

local function shipment_func(class, price, sep, allowed)
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
        category = "Urban Decay",
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

    if shipments:GetBool() then
        DarkRP.createCategory{
            name = "Urban Decay",
            categorises = "shipments",
            startExpanded = true,
            color = Color(50, 107, 50, 255),
            sortOrder = 500,
        }
        DarkRP.createCategory{
            name = "Urban Decay",
            categorises = "weapons",
            startExpanded = true,
            color = Color(50, 107, 50, 255),
            sortOrder = 500,
        }
    end
end
hook.Add("postLoadCustomDarkRPItems", "ArcCW_UD", load_ud_config)

hook.Add("InitPostEntity", "ArcCW_UD_DarkRP", function()
    if DarkRP and shipments:GetBool() then
        shipment_func("arccw_ud_glock", 1800, true, {TEAM_GUN})
        shipment_func("arccw_ud_uzi", 2550, false, {TEAM_GUN})
        shipment_func("arccw_ud_mini14", 2300, false, {TEAM_GUN})
        shipment_func("arccw_ud_m16", 2950, false, {TEAM_GUN})
        shipment_func("arccw_ud_870", 2150, false, {TEAM_GUN})
        shipment_func("arccw_ud_m1014", 2650, false, {TEAM_GUN})
    end
end)

hook.Add("ArcCW_PostLoadAtts", "ArcCW_UD", function()
    if not DarkRP or not licenseatts_civ:GetBool() then return end
    for k, v in pairs(ArcCW.UD.LicenseGuns) do
        if not istable(v) then continue end
        for _, attname in pairs(v) do
            if ArcCW.AttachmentTable[attname] then
                ArcCW.AttachmentTable[attname].Free = true
            end
        end
    end
end)

-- I found this hook in the darkrp github but it's not documented?
hook.Add("playerPickedUpWeapon", "ArcCW_UD", function(ply, ent, wep)
    local class = ent:GetWeaponClass()
    if licenseatts_civ:GetBool() and
            not ply:getDarkRPVar("HasGunlicense", false)
            and istable(ArcCW.UD.LicenseGuns[class]) then
        timer.Simple(0.001, function()
            wep = ply:GetWeapon(class)
            if not IsValid(wep) then return end
            for k, v in pairs(ArcCW.UD.LicenseGuns[class]) do
                local oldatt = wep.Attachments[k].Installed
                wep.Attachments[k].Installed = v
                if oldatt then
                    ArcCW:PlayerGiveAtt(ply, oldatt)
                end
            end
            wep:NetworkWeapon()
            ArcCW:PlayerSendAttInv(ply)
        end)
    end
end)

hook.Add("ArcCW_PlayerCanAttach", "ArcCW_UD", function(ply, wep, attname, slot, detach)
    if not DarkRP or not licenseatts:GetBool() then return end

    local strict = licenseatts_s:GetBool()
    local has = ply:getDarkRPVar("HasGunlicense", false)
    if has then return end

    local req = hook.Run("ArcCW_UD_AttNeedsLicense", ply, attname)
    req = req or ArcCW.UD.LicenseAtts[attname]
    if req and (not detach or strict) then
        if SERVER then DarkRP.notify(ply, 1, 3, "You need a gun license to use this attachment!")
        else notification.AddLegacy("You need a gun license to use this attachment!", 1, 3) end
        return false
    end

    local lic = ArcCW.UD.LicenseGuns[wep:GetClass()]
    if licenseatts_civ:GetBool() and istable(lic) and detach and lic[slot] and lic[slot] == attname then
        if SERVER then DarkRP.notify(ply, 1, 3, "You can't remove this without a gun license!")
        else notification.AddLegacy("You can't remove this without a gun license!", 1, 3) end
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
        if SERVER then DarkRP.notify(ply, 1, 3, "You need a gun license to pickup this attachment!")
        else notification.AddLegacy("You need a gun license to pickup this attachment!", 1, 3) end
        return true
    end
end)