att.PrintName = "20\" Prototype Barrel"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "20\" Classic A1 Barrel"
end

att.Icon = Material("entities/att/acwatt_ud_m16_barrel_classic.png", "smooth mips")
att.Description = "Classic triangular handguard. In comparison to the modern \"ribbed\" handguard, it is more comfortable to hold but has a tendency to slip."
att.Desc_Pros = {
}
att.Desc_Cons = {
    --"uc.semionly"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_barrel"

att.AutoStats = true

att.Mult_RecoilSide = 1.2
att.Mult_Recoil = 1.1

att.Mult_SightTime = .9

att.LHIK = true

att.Model = "models/weapons/arccw/atts/classic_lhik.mdl"

att.ActivateElements = {"hg_m16a1"}