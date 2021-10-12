att.PrintName = "Short Barrel"
att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "pirategun"
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.nofs"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m79_barrel"

att.LHIK = true

att.Model = "models/weapons/arccw/atts/lhik_short.mdl"

att.AutoStats = true

att.Mult_MuzzleVelocity = 0.5
att.Mult_Recoil = 1.25
att.Mult_AccuracyMOA = 2

att.Mult_MoveDispersion = 0.75
att.Mult_SightTime = 0.75
att.Mult_ReloadTime = 0.85
att.Mult_SpeedMult = 1.02
att.Mult_SightedSpeedMult = 1.05

att.Mult_Sway = 0.75

att.A_Hook_Add_SightsDispersion = function(wep, data)
    if data and !wep.Attachments[1].Installed then
        data.add = data.add + 100
    end
end

att.ActivateElements = {"m79_pirategun"}