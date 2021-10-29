att.PrintName = "Express-12 Polymer Forend"
att.AbbrevName = "Polymer Forend"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Remington 870 Polymer Forend"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "A hardened polymer forend, improving sighted mobility slightly."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_870_slide"

att.AutoStats = true

att.Mult_SightTime = 0.9
att.Mult_SightedSpeedMult = 1.1

att.Mult_Sway = 1.15
att.Mult_RecoilSide = 1.25

att.LHIK = true

att.Model = "models/weapons/arccw/atts/moe_lhik.mdl"

att.ActivateElements = {"ud_870_slide_poly"}