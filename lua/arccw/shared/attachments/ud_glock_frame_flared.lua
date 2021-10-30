att.PrintName = "GEN3 Flared Frame"
att.AbbrevName = "Flared Magwell"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Glock 17 Flared Frame"
end

att.Icon = Material("entities/att/acwatt_ud_glock_frame_flared.png", "smooth mips")
att.Description = "Custom frame with a flared magwell to facilitate faster reloads. The extra weight slows down handling by a bit."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_frame"

att.AutoStats = true

att.Mult_ReloadTime = 0.9
att.Mult_SightTime = 1.1
att.Mult_SightedSpeedMult = 0.95
att.Mult_DrawTime = 1.25
att.Mult_HolsterTime = 1.25

att.ActivateElements = {"ud_glock_frame_flared"}