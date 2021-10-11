att.PrintName = "40mm Hornet's nest"
att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "grenade loaded with 16 22lr bullets or something"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_ammo_gl"

att.AutoStats = true

att.Override_ShootEntity = false
att.Override_Num = 16
att.Mult_Damage = 17
att.Mult_DamageMin = 9

att.Mult_Recoil = 0.6

-- att.Mult_AccuracyMOA = 1

att.ActivateElements = {"m79_nade_hornetnest"}

-- att.Hook_GetShootSound = function(wep, fsound)
--     if fsound == wep.ShootSound then return ")^weapons/arccw_ud/870/fire.ogg" end
-- end