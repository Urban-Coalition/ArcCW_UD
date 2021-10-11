att.PrintName = "40mm Shotgun"
att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "wdawds"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_ammo_gl"

att.AutoStats = true

--att.Mult_Recoil = 1
--att.Mult_SpeedMult = 1

att.ActivateElements = {"m79_nade_1gaugeshell"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_shotgun"
end