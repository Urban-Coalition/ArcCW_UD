att.PrintName = "Binary Trigger"

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "you pull it to fire a shot. you release it to fire a shot. like 2 bullet"
att.Desc_Pros = {
    "Binary fire"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_fg"
att.Ignore = true -- as i was writing htis i got headache
att.AutoStats = true
att.NotForNPCS = true

att.Hook_Compatible = function(wep)
    if wep:GetIsManualAction() then
        return false
    end
end

att.Override_Firemodes_Priority = 100
att.Override_Firemodes = {
    {
        PrintName = "BINARY",
        Mode = -2,
    },
    {
        Mode = 0
    }
}

att.Hook_Think = function(wep)
    if IsFirstTimePredicted() and wep:GetOwner():KeyReleased(IN_ATTACK) then
        wep:PrimaryAttack()
    end
end