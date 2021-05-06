att.PrintName = "Underload"

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Just because it fits, does not mean you have to fill it. Partially filled magazines reduces follower stress and improves feeding rate."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "-14% magazine capacity"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_fg"

att.AutoStats = true

-- I give up, arctic help pls

function att.Hook_GetCapacity(wep,cap)
    return math.max(math.floor(cap * (1 - 0.14)), 1)
end

-- att.Add_ClipSize = math.floor(att.Hook_GetCapacity() * -.25)
att.Mult_HeatCapacity = 1.25
att.Mult_RPM = 1.05
att.Mult_ReloadTime = 0.95