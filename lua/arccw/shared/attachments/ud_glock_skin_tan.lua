att.PrintName = "Glock 17 FDE Polymer Finish"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "GEN3 FDE Polymer Finish"
end
att.AbbrevName = "FDE Polymer"
att.Icon = Material("entities/att/acwatt_ud_glock_material.png", "smooth mips")
att.Description = "Flat dark earth finish for your polymer handgun."
att.Desc_Neutrals = {"uc.cosmetic"}
att.Slot = "ud_glock_skin"
