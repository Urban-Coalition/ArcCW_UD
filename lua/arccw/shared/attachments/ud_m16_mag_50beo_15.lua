att.PrintName = ".50 Beowulf 15-Round Extended Mag"
att.AbbrevName = "15-Round Extended Mag"

att.Icon = Material("entities/att/acwatt_ud_m16_mag_40.png", "smooth mips")
att.Description = "Extended 5.56mm magazines converted to load .50 Beowulf rounds in a single stack. Really as far as you can go with these thick cartridges."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "ud_m16_mag"

att.AutoStats = true
att.HideIfBlocked = true
att.InvAtt = "ud_m16_mag_40"

att.SortOrder = 1
att.Override_ClipSize = 15

att.Mult_SightTime = 1.2
att.Mult_ReloadTime = 1.3
att.Mult_Sway = 2.25

att.Mult_SpeedMult = 0.95

att.ActivateElements = {"ud_m16_mag_40"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_40"
end

att.RequireFlags = {"m16_50beo"}