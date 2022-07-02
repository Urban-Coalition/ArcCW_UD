att.PrintName = "Glock 17 Olive Drab Finish"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "GEN3 Olive Drab Finish"
end
att.AbbrevName = "Olive Drab"

att.Icon = Material("entities/att/acwatt_ud_glock_material.png", "smooth mips")
att.Description = "Olive drab finish for for your polymer handgun."
att.Desc_Neutrals = {"uc.cosmetic"}
att.Slot = "ud_glock_skin"
