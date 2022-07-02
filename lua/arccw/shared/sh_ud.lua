ArcCW.UD = ArcCW.UD or {}

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

hook.Add( "PopulateWeapons", "UC_AddWeaponContent", function( pnlContent, tree, node )

    local AllUCWeapons = {}
    local AllUCWeaponsByPack = {}
    for classname, _ in pairs( weapons.GetList() ) do
        local wep = weapons.Get(_.ClassName)
        if wep.Category == "ArcCW - Urban Coalition" then
            AllUCWeapons[_.ClassName] = wep
        end
    end

    for classname, weapondata in pairs( AllUCWeapons ) do
        local pack = weapondata.UC_CategoryPack or "_Unknown"
        if pack then
            if !AllUCWeaponsByPack[pack] then AllUCWeaponsByPack[pack] = {} end
            table.insert(AllUCWeaponsByPack[pack], classname)
        end
    end

    -- PrintTable(AllUCWeapons)
    -- PrintTable(AllUCWeaponsByPack)

    local NodeToUse = 0
    -- MW base devs, I tried to recreate this spawnmenu stuff without looking at the code for yours
    -- BUT I WAS FUCKING BAWLING MY EYES OUT TRYING TO GET HOW TO DO THIS NEXT LINE
    -- anyways you guys probably are not reading this so i will end it here thank you
    -- ( i had the idea to do this kinda shit like. 2 days before smgs were pushed. i'm fucking crying i crode 😭😭😭 )
    for _, UCNode in pairs(tree:Root():GetChildNodes()) do
        if UCNode:GetText() != "ArcCW - Urban Coalition" then continue end
        NodeToUse = UCNode
    end

    NodeToUse.DoPopulate = function(self)
        -- If we've already populated it - forget it.
        if (self.PropPanel) then return end

        -- Create the container panel
        self.PropPanel = vgui.Create("ContentContainer", pnlContent)
        self.PropPanel:SetVisible(false)
        self.PropPanel:SetTriggerSpawnlistChange(false)

        for pack, class in SortedPairs( AllUCWeaponsByPack ) do
            local label = vgui.Create("ContentHeader", NodeToUse)
            label:SetText( string.Right( pack, #pack-1 ) )
            self.PropPanel:Add(label)

            local alphabeticallist = {}
            for _, k in pairs(class) do table.insert(alphabeticallist, {AllUCWeapons[k], PrintName = AllUCWeapons[k].PrintName}) end
            for k, ent in SortedPairsByMemberValue( alphabeticallist, "PrintName" ) do
                local ent = ent[1]
                CreateUCWeapon( self.PropPanel, {
                    nicename	= ent.PrintName or ent.ClassName,
                    spawnname	= ent.ClassName,
                    material	= ent.IconOverride or "entities/" .. ent.ClassName .. ".png",
                    admin		= ent.AdminOnly,

                    uc_manu = ent.Trivia_Manufacturer,
                    uc_year = ent.Trivia_Year,
                    uc_cali = ent.Trivia_Calibre,
                } )
            end

        end
    end
end )

function CreateUCWeapon( container, obj )

    if ( !obj.material ) then return end
    if ( !obj.nicename ) then return end
    if ( !obj.spawnname ) then return end

    local icon = vgui.Create( "UCWepSel", container )
    icon:SetContentType( "weapon" )
    icon:SetSpawnName( obj.spawnname )
    icon:SetName( obj.nicename, obj.spawnname, { manu = obj.uc_manu, year = obj.uc_year, cali = obj.uc_cali } )
    icon:SetMaterial( obj.material )
    icon:SetAdminOnly( obj.admin )
    icon:SetColor( Color( 135, 206, 250, 255 ) )
    icon.DoClick = function()
        RunConsoleCommand( "gm_giveswep", obj.spawnname )
        surface.PlaySound( "ui/buttonclickrelease.wav" )
    end

    icon.DoMiddleClick = function()
        RunConsoleCommand( "gm_spawnswep", obj.spawnname )
        surface.PlaySound( "ui/buttonclickrelease.wav" )
    end

    icon.OpenMenuExtra = function( self, menu )
        menu:AddOption( "#spawnmenu.menu.spawn_with_toolgun", function() RunConsoleCommand( "gmod_tool", "creator" ) RunConsoleCommand( "creator_type", "3" ) RunConsoleCommand( "creator_name", obj.spawnname ) end ):SetIcon( "icon16/brick_add.png" )

        if ( self:GetIsNPCWeapon() ) then
            local opt = menu:AddOption( "#spawnmenu.menu.use_as_npc_gun", function() RunConsoleCommand( "gmod_npcweapon", self:GetSpawnName() ) end )
            if ( self:GetSpawnName() == GetConVarString( "gmod_npcweapon" ) ) then
                opt:SetIcon( "icon16/monkey_tick.png" )
            else
                opt:SetIcon( "icon16/monkey.png" )
            end
        end
    end
    icon.OpenMenu = DoGenericSpawnmenuRightclickMenu

    if ( IsValid( container ) ) then
        container:Add( icon )
    end

    return icon

end



if CLIENT then

surface.CreateFont( "UCWepSel", {
    font = "Bahnschrift",
    size = 36,
    weight = 0,
    blursize = 0,
    antialias = true,
} )

surface.CreateFont( "UCWepSel2", {
    font = "Bahnschrift Light",
    size = 17,
    weight = 0,
    blursize = 0,
    antialias = true,
} )

surface.CreateFont( "UCWepSel3", {
    font = "Bahnschrift Light",
    size = 13,
    weight = 0,
    blursize = 0,
    antialias = true,
} )

local PANEL = {}

local matOverlay_Normal = Material( "gui/ContentIcon-normal.png" )
local matOverlay_Hovered = Material( "gui/ContentIcon-hovered.png" )

local matOverlay_AdminOnly = Material( "icon16/shield.png" )
local matOverlay_NPCWeapon = Material( "icon16/monkey.png" )
local matOverlay_NPCWeaponSelected = Material( "icon16/monkey_tick.png" )

AccessorFunc( PANEL, "m_Color", "Color" )
AccessorFunc( PANEL, "m_Type", "ContentType" )
AccessorFunc( PANEL, "m_SpawnName", "SpawnName" )
AccessorFunc( PANEL, "m_NPCWeapon", "NPCWeapon" )
AccessorFunc( PANEL, "m_bAdminOnly", "AdminOnly" )
AccessorFunc( PANEL, "m_bIsNPCWeapon", "IsNPCWeapon" )

local function DoGenericSpawnmenuRightclickMenu( self )
    local menu = DermaMenu()
        menu:AddOption( "#spawnmenu.menu.copy", function() SetClipboardText( self:GetSpawnName() ) end ):SetIcon( "icon16/page_copy.png" )
        if ( isfunction( self.OpenMenuExtra ) ) then
            self:OpenMenuExtra( menu )
        end

        if ( !IsValid( self:GetParent() ) || !self:GetParent().GetReadOnly || !self:GetParent():GetReadOnly() ) then
            menu:AddSpacer()
            menu:AddOption( "#spawnmenu.menu.delete", function() self:Remove() hook.Run( "SpawnlistContentChanged" ) end ):SetIcon( "icon16/bin_closed.png" )
        end
    menu:Open()
end

function PANEL:Init()

    self:SetPaintBackground( false )
    local sw, sh = self:GetParent():GetParent():GetParent():GetSize()
    self:SetSize( 384, 128 ) -- TODO: get real long n har. nvm
    self:SetText( "" )
    self:SetDoubleClickingEnabled( false )

    self.Image = self:Add( "DImage" )
    self.Image:SetPos( 3, 3 )
    self.Image:SetSize( 128 - 6, 128 - 6 )
    self.Image:SetVisible( false )

    self.Border = 0

end

function PANEL:SetName( name, spname, other )

    self:SetTooltip( name .. "\n" .. spname )
    self.WEP_NAME = name
    self.WEP_MANU = other.manu
    self.WEP_YEAR = other.year
    self.WEP_CALI = other.cali
    --self.Label:SetText( name )
    --self.Label2:SetText( name )
    self.m_NiceName = name

end

function PANEL:SetMaterial( name )

    self.m_MaterialName = name

    local mat = Material( name )

    -- Look for the old style material
    if ( !mat || mat:IsError() ) then

        name = name:Replace( "entities/", "VGUI/entities/" )
        name = name:Replace( ".png", "" )
        mat = Material( name )

    end

    -- Couldn't find any material.. just return
    if ( !mat || mat:IsError() ) then
        mat = Material( "entities/ucepicfail.png" )
    end

    self.Image:SetMaterial( mat )

end

function PANEL:DoRightClick()

    local pCanvas = self:GetSelectionCanvas()
    if ( IsValid( pCanvas ) && pCanvas:NumSelectedChildren() > 0 && self:IsSelected() ) then
        return hook.Run( "SpawnlistOpenGenericMenu", pCanvas )
    end

    --self:OpenMenu()

end

function PANEL:DoClick()
end

function PANEL:OpenMenu()
end

function PANEL:OnDepressionChanged( b )
end

function PANEL:Paint( w, h )

    if ( self.Depressed && !self.Dragging ) then
        if ( self.Border != 8 ) then
            self.Border = 8
            self:OnDepressionChanged( true )
        end
    else
        if ( self.Border != 0 ) then
            self.Border = 0
            self:OnDepressionChanged( false )
        end
    end

    surface.SetDrawColor( 255, 255, 255, 255 )

    if ( !dragndrop.IsDragging() && ( self:IsHovered() || self.Depressed || self:IsChildHovered() ) ) then

        surface.SetMaterial( Material( "entities/uchover.png" ) )
        surface.DrawTexturedRect( self.Border, self.Border, w, h )
        --surface.SetMaterial( matOverlay_Hovered )
        --self.Label:Hide()
    else
        --surface.SetMaterial( matOverlay_Normal )
        --self.Label:Show()
    end

    local c_w, c_s = Color( 255, 255, 255, 200 ), Color( 0, 0, 0, 127 )

    -- Name
    if assert(self.WEP_NAME, "Holy balls no weapon name??") then
        surface.SetFont("UCWepSel")

        surface.SetTextPos( (128+16)+2, (50-24)+2 )
        surface.SetTextColor( c_s )
        surface.DrawText(self.WEP_NAME or "idk")

        surface.SetTextPos( (128+16), (50-24) )
        surface.SetTextColor( color_white )
        surface.DrawText(self.WEP_NAME or "idk")
    end

    local ya = false
    if self.WEP_MANU then
        -- Manufacturer
        surface.SetFont("UCWepSel2")

        surface.SetTextPos( (128+16)+2, (50-24+32)+2 )
        surface.SetTextColor( c_s )
        surface.DrawText(self.WEP_MANU or "idk")

        surface.SetTextPos( (128+16), (50-24+32) )
        surface.SetTextColor( c_w )
        surface.DrawText(self.WEP_MANU or "idk")
        ya = true
    end

    if self.WEP_CALI then
        -- Caliber
        surface.SetFont("UCWepSel3")

        surface.SetTextPos( (128+16)+2, (50-24+32+(ya and 16 or 0))+2 )
        surface.SetTextColor( c_s )
        surface.DrawText(self.WEP_CALI or "idk")

        surface.SetTextPos( (128+16), (50-24+32+(ya and 16 or 0)) )
        surface.SetTextColor( c_w )
        surface.DrawText(self.WEP_CALI or "idk")
    end

    if self.WEP_YEAR then
        -- Year
        surface.SetFont("UCWepSel3")

        surface.SetTextPos( (128+16)+2, (50-31)+2 )
        surface.SetTextColor( c_s )
        surface.DrawText(self.WEP_YEAR or "9999")

        surface.SetTextPos( (128+16), (50-31) )
        surface.SetTextColor( c_w )
        surface.DrawText(self.WEP_YEAR or "9999")
    end

    render.PushFilterMag( TEXFILTER.ANISOTROPIC )
    render.PushFilterMin( TEXFILTER.ANISOTROPIC )

    self.Image:PaintAt( 3 + self.Border, 3 + self.Border, 128 - 8 - self.Border * 2, 128 - 8 - self.Border * 2 )

    render.PopFilterMin()
    render.PopFilterMag()

    --surface.DrawTexturedRect( self.Border, self.Border, w-self.Border*2, h-self.Border*2 )

    if ( self:GetAdminOnly() ) then
        surface.SetMaterial( matOverlay_AdminOnly )
        surface.DrawTexturedRect( self.Border + 8, self.Border + 8, 16, 16 )
    end

    -- This whole thing could be more dynamic
    if ( self:GetIsNPCWeapon() ) then
        surface.SetMaterial( matOverlay_NPCWeapon )

        if ( self:GetSpawnName() == GetConVarString( "gmod_npcweapon" ) ) then
            surface.SetMaterial( matOverlay_NPCWeaponSelected )
        end

        surface.DrawTexturedRect( w - self.Border - 24, self.Border + 8, 16, 16 )
    end
    self:ScanForNPCWeapons()

end

function PANEL:ScanForNPCWeapons()
    if ( self.HasScanned ) then return end
    self.HasScanned = true

    for _, v in pairs( list.Get( "NPCUsableWeapons" ) ) do
        if ( v.class == self:GetSpawnName() ) then
            self:SetIsNPCWeapon( true )
            break
        end
    end
end

function PANEL:PaintOver( w, h )

    self:DrawSelections()

end

function PANEL:ToTable( bigtable )

    local tab = {}

    tab.type		= self:GetContentType()
    tab.nicename	= self.m_NiceName
    tab.material	= self.m_MaterialName
    tab.admin		= self:GetAdminOnly()
    tab.spawnname	= self:GetSpawnName()
    tab.weapon		= self:GetNPCWeapon()

    table.insert( bigtable, tab )

end

function PANEL:Copy()

    local copy = vgui.Create( "UCWepSel", self:GetParent() )

    copy:SetContentType( self:GetContentType() )
    copy:SetSpawnName( self:GetSpawnName() )
    copy:SetName( self.m_NiceName, self:GetSpawnName() )
    copy:SetMaterial( self.m_MaterialName )
    copy:SetNPCWeapon( self:GetNPCWeapon() )
    copy:SetAdminOnly( self:GetAdminOnly() )
    copy:CopyBase( self )
    copy.DoClick = self.DoClick
    copy.OpenMenu = self.OpenMenu
    copy.OpenMenuExtra = self.OpenMenuExtra

    return copy

end

vgui.Register( "UCWepSel", PANEL, "DButton" )

end