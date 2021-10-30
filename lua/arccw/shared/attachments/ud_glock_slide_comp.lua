att.PrintName = "GEN3 Competition Slide"
att.AbbrevName = "Competition Slide"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Glock 17 Competition Slide"
end

att.Icon = Material("entities/att/acwatt_ud_glock_slide_comp.png", "smooth mips")
att.Description = "Custom slide with side vents and ring sight. Improves sighting time and straightens recoil."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_slide"

att.AutoStats = true

att.Mult_SightTime = 0.8
att.Mult_RecoilSide = 0.75
att.Mult_Recoil = 1.1

att.ActivateElements = {"ud_glock_slide_comp"}