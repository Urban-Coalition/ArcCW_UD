att.PrintName = "40mm Caseless"
att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "gp30 moment"
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_ammo_gl"

att.AutoStats = true

att.Mult_ReloadTime = 0.78
--att.Mult_Recoil = 1
--att.Mult_SpeedMult = 1

att.ActivateElements = {"m79_nade_caseless"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_caseless"
end