att.PrintName = "R870 Sawn-Off Barrel"
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "A hand-made shortened barrel with no sights. More agile and has a bigger pellet spread."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "ud.nofs",
}
att.Desc_Neutrals = {
}
att.Slot = "ud_870_barrel"

att.AutoStats = true

att.Mult_AccuracyMOA = 1.2
att.Mult_Recoil = 1.2

att.Mult_Sway = 0.5
att.Mult_SightTime = 0.8
att.Mult_SpeedMult = 1.05
--att.Mult_SightedSpeedMult = 1.25

att.A_Hook_Add_SightsDispersion = function(wep, data)
    if data and !wep.Attachments[1].Installed then
        data.add = data.add + 250
    end
end

att.ActivateElements = {"ud_870_barrel_sawnoff"}