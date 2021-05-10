att.PrintName = "20-Round USAS Drum Mag"
att.SortOrder = -1
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Heavy drum magazine holding double the amount of shotgun shells. If twenty 12 gauge rounds isn't killing what you're killing, no gun is gonna be big enough."
att.Desc_Pros = {
    "pro.magcap"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_mag"

att.AutoStats = true

att.Override_ClipSize = 20

att.Mult_SightTime = 1.25
--att.Mult_Recoil = 0.9
att.Mult_ReloadTime = 1.25
att.Mult_SpeedMult = 0.95
att.Mult_Sway = 3

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_40"
end

att.RequireFlags = {"m16_usas"}