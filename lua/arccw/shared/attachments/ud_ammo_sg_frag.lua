att.PrintName = "\"HE\" FRAG-12"
--att.Icon = Material("entities/acwatt_go_ammo_sub.png", "mips smooth")
att.Description = [[Shotgun slug with a small high-explosive warhead. On impact, the round saturates its surroundings with shrapnel like a frag grenade.
Meant for breaching, but it can also useful for applying damage over an area.
Beware: the explosion doesn't care who it hurts.]]
att.Desc_Pros = {
    "Splash damage"
}
att.Desc_Cons = {
}
att.SortOrder = 2

att.Slot = "ud_ammo_shotgun"

att.Mult_Penetration = 0.1
att.Mult_Damage = 0.5
att.Mult_DamageMin = 0.5
att.Mult_Range = .5
att.Mult_HipDispersion = 2.25
att.Override_Num = 1
att.Override_Num_Priority = 99
att.AutoStats = true

function BulletHit(wep, data)
    if data.damage then
        util.BlastDamage(wep, wep:GetOwner(), data.tr.HitPos, 150, data.damage)

        local eff = EffectData()
        eff:SetOrigin(data.tr.HitPos)
        util.Effect("Explosion", eff)
        util.Decal("Scorch", data.tr.HitPos - data.tr.HitNormal, data.tr.HitPos + data.tr.HitNormal, ents.GetAll())
    end
end

att.Hook_PhysBulletHit = BulletHit
att.Hook_BulletHit = BulletHit

att.Hook_Compatible = function(wep)
    if !wep:GetIsShotgun() then return false end
end