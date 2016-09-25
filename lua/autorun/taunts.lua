local taunts = {
    "deathsounds/awall.wav",
    "deathsounds/grandma.wav",
    "deathsounds/secretformula.wav",
    "deathsounds/tguyahhshit.wav",
    "deathsounds/tguyahshit.wav",
    "deathsounds/tguymess.wav",
    "deathsounds/tguyallthatbullshit.wav",
    "deathsounds/tguybitchinchurch.wav",
    "deathsounds/tguyfulldick.wav",
    "deathsounds/tguyglasses.wav",
    "deathsounds/tguysofuckhim.wav",
    "deathsounds/getdown.wav",
    "deathsounds/wtfyoulookingat.wav",
    "deathsounds/dontrunawayfromme.wav",
    "deathsounds/illendyou.wav",
    "deathsounds/yousonofabitch.wav",
    "deathsounds/tguybetterkoolaid.wav",
    "deathsounds/tguyshaveyoursideburns.wav",
    "deathsounds/tguyhotwater.wav",
    "deathsounds/ohhellno.wav",
    "deathsounds/tguywouldntgooglelimpbiz.wav",
    "deathsounds/tguyshitloadofmashedpotatoes.wav",
    "deathsounds/tguyscotchtapeass.wav",
    "deathsounds/tguyhowmuchass.wav",
    "deathsounds/tguywasteofshit.wav",
    "deathsounds/tguybuttfuck.wav",
    "deathsounds/tguywhogivesashit.wav",
    "deathsounds/tguychewbacca1.wav",
    "deathsounds/tguyohshitdamnit.wav",
    "deathsounds/tguysquirrelfuckingtomatoes.wav",
    "deathsounds/tguyyouregrounded.wav",
    "deathsounds/tguychewbacca2.wav",
    "deathsounds/tguycallingpeopledicks.wav",
    "deathsounds/tguyfuckyou.wav",
    "deathsounds/tguywhatsthatdumbasswantnow.wav",
    "deathsounds/tguytitdirt.wav"
}

hook.Add("OnNPCKilled","HS4NPCDie",function(npc,attacker,inflictor)
	inflictor:EmitSound(table.Random(taunts)) 
end)

hook.Add("PlayerDeath","HS4PLYDie",function(victim,attacker,inflictor)
	inflictor:EmitSound(table.Random(taunts)) 
end)

hook.Add( "OnNPCKilled", "NPCHappyDeathSounds", taunt )
hook.Add( "PlayerDeath", "PlayerHappyDeathSounds", taunt )