// Advanced HurtSounds 4 Base
// FUNNY EDITION
// 2016/03/11
// Fixed, simplied & HEAVILY optimized...

math.randomseed(os.clock())
AddCSLuaFile("hurtsounds_atara.lua")
CreateConVar("hurtsounds_humansonly",1,true,false)
local delay = false // Delay for sounds for players.
local npcdelay = false // Delay for sounds for NPCs.

local sndTaunt = file.Find("sound/hurtmod_rev".."/taunt/" .. "*", "GAME" )

hook.Add("PlayerDeath","HS4PLYDie",function(victim,inflictor,attacker)
if inflictor:IsValid() && inflictor != victim then inflictor:EmitSound("hurtmod_rev/taunt/" .. table.Random(sndTaunt)) end end
end)


hook.Add("OnNPCKilled","HS4NPCDie",function(npc,attacker,inflictor)
if inflictor:IsValid() && inflictor != victim then inflictor:EmitSound("hurtmod_rev/taunt/" .. table.Random(sndTaunt)) end end
end)

hook.Add("PlayerShouldTakeDamage", "HS4Player", playertakedm) // The hook that lets us check when a PLAYER has been injured.
hook.Add("EntityTakeDamage", "HS4NPC", npctakedm) // The hook that lets us check when an NPC has been injured.