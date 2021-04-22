att.PrintName = "Underload"

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Just because it fits, does not mean you have to fill it. Partially filling magazines reduces follower stress, improving feed rates."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "-14% magazine capacity"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_training"

att.AutoStats = true

-- I give up, arctic help pls

function att.Hook_GetCapacity(wep,cap)
    return math.max(math.floor(cap * 0.84), 1)
end

-- att.Add_ClipSize = math.floor(att.Hook_GetCapacity() * -.25)

att.Mult_RPM = 1.05