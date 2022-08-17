att.PrintName = "M4 Semi-Grip Fixed Stock"
att.AbbrevName = "Sporting Stock"
att.Icon = Material("entities/att/acwatt_ud_m1014_stock_sport.png", "smooth mips")
att.Description = "Solid, non-adjustable polymer stock common in civilian markets. Provides a better brace at the cost of combat mobility."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_1014_stock"

att.AutoStats = true

att.Mult_Recoil = .8
att.Mult_Sway = .8

att.Mult_SightedSpeedMult = .85
att.Mult_DrawTime = 1.25
att.Mult_HolsterTime = 1.25

att.ActivateElements = {"ud_autoshotgun_stock_sport"}

att.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_stock"
end 