att.PrintName = "Underload"

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Underload the magazine to put less stress on the internals, increasing fire rate."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "Reduced magazine capacity"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_training"

att.AutoStats = true

-- I give up, arctic help pls

-- function att.Hook_GetCapacity(wep,cap)
--     return wep.Primary.ClipSize
-- end

-- att.Add_ClipSize = math.floor(att.Hook_GetCapacity() * -.25)

att.Mult_RPM = 1.05