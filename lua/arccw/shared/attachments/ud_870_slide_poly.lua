att.PrintName = "Express-12 Polymer Forend"
att.AbbrevName = "Polymer Forend"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Remington 870 Polymer Forend"
end

att.Icon = Material("entities/att/acwatt_ud_870_slide_poly.png", "smooth mips")
att.Description = "A hardened polymer forend, improving sighted mobility slightly."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_870_slide"

att.AutoStats = true

att.Mult_SightTime = 0.95
att.Mult_SightedSpeedMult = 1.05
att.Mult_RecoilSide = 1.15

att.LHIK = true

att.Model = "models/weapons/arccw/atts/poly_lhik.mdl"

att.ActivateElements = {"ud_870_slide_poly"}