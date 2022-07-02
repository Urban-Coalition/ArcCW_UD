att.PrintName = "Glock 17 Custom Finish"
att.Description = "Make your Glock truly yours by giving it a horrible color nobody else wants to touch."
att.AbbrevName = "Custom"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "GEN3 Custom Finish"
    att.Description = "Make your gun truly yours by giving it a horrible color nobody else wants to touch."
end

att.Icon = Material("entities/att/acwatt_ud_glock_material.png", "smooth mips")
att.Desc_Neutrals = {"uc.cosmetic", "uc.custcolor"}
att.Slot = "ud_glock_skin"
