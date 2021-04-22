att.PrintName = "Pointman"

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Firearms and dexterity training for quick response in breaching situations. The pointman is always the first to enter, and the first to identify and disable threats."
att.Desc_Pros = {
    "ud.pointman"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_training"

att.AutoStats = true

att.Mult_SightTime = 0.9
att.Add_BarrelLength = -4
att.M_Hook_Mult_RPM = function(wep, data)
    local hta = wep:GetBuff("HoldtypeActive")
    if (hta == "pistol" or hta == "revolver") and wep:GetCurrentFiremode().Mode == 1 then
        data.mult = data.mult * 1.25
    end
end
att.Mult_ReloadTime = 1.2