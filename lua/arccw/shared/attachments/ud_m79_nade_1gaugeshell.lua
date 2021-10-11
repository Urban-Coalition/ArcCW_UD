att.PrintName = "40mm Shotgun"
att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "big shotgun"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_ammo_gl"

att.AutoStats = true

att.Override_ShootEntity = false
att.Override_Num = 8
att.Mult_Damage = 24
att.Mult_DamageMin = 16

att.Mult_AccuracyMOA = 2


att.ActivateElements = {"m79_nade_1gaugeshell"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_shotgun"
end

-- att.Hook_GetShootSound = function(wep, fsound)
--     if fsound == wep.ShootSound then return ")^weapons/arccw_ud/870/fire.ogg" end
-- end