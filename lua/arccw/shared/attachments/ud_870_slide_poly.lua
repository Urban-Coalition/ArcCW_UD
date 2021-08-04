att.PrintName = "Express-12 Polymer Forend"
att.AbbrevName = "Poly Forend"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Remington 870 Polymer Forend"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "A hardened polymer forend. Faster to cycle but harder to grip on, increasing both fire rate and recoil."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_870_slide"

att.AutoStats = true

-- att.Mult_SightTime = 0.75
-- att.Mult_Recoil = 1.15
-- att.Mult_Sway = 1.15

att.Mult_SightTime = 0.85

att.Mult_Sway = 1.25
att.Mult_Recoil = 1.1
att.Mult_RecoilSide = 1.5

att.Mult_CycleTime = 0.9

att.LHIK = true

att.Model = "models/weapons/arccw/atts/moe_lhik.mdl"

att.ActivateElements = {"ud_870_slide_poly"}