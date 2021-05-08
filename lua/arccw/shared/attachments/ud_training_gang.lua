att.PrintName = "Homeboy"
-- BANDIT STYLE IS BACK, BABY
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "GANGSTAS ROLL UP IN DA HOOD, POP POP POP POP POP NIGGA, I BALL HARD STICK A GLOCK UP IN YOUR FACE NIGGA, DROP DROP DROP DROP DROP GO YOUR HOMIES NIGGA"
att.Desc_Pros = {
    "ud.homeboy"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_training"

att.AutoStats = true

att.Mult_HipDispersion = 0.6
att.Mult_RecoilSide = 1.25
att.Mult_SightTime = 1.75
att.Mult_Sway = 1.75

att.LHIK = true
att.LHIKHide = true

-- sry bby u too OP
att.O_Hook_Override_ShootWhileSprint = function(wep, data)
    if GetConVar("arccw_ud_homeboy_epic"):GetBool() then
        return true
    end
end

att.Override_ActivePos = Vector(1, 0, 1)
att.Override_ActiveAng = Angle(0, 0, -60)

att.Override_RecoilDirection = Angle(0.707, -0.707, 0)
att.Override_RecoilDirectionSide = Angle(0.707, 0.707, 0)

att.Override_AddSightRoll = -45

att.Hook_Compatible = function(wep, data)
    if wep:GetIsManualAction() or (not GetConVar("arccw_ud_homeboy_epic"):GetBool()
            and wep:GetBuff("HoldtypeActive") ~= "pistol" and wep:GetBuff("HoldtypeActive") ~= "revolver") then return false end
end