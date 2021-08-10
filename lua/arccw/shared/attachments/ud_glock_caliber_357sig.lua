att.PrintName = "Glock .357 SIG Conversion"
att.AbbrevName = ".357 SIG"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "GEN3 .357 SIG Conversion"
end

att.SortOrder = 90
att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "A law-enforcement caliber well-known for its accuracy."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_caliber"

att.AutoStats = true

att.Override_Trivia_Calibre = ".357 SIG"

att.Mult_Damage = 1.1
att.Mult_Damage = 1.1
att.Mult_AccuracyMOA = 0.5
att.Mult_Recoil = 1.15

att.Mult_ClipSize = 0.88