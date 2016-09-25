// Advanced HurtSounds 4 Base
// FUNNY EDITION
// 2016/03/11
// Fixed, simplied & HEAVILY optimized...

math.randomseed(os.clock())
AddCSLuaFile("hurtsounds_atara.lua")
CreateConVar("hurtsounds_humansonly",1,true,false)
local delay = false // Delay for sounds for players.
local npcdelay = false // Delay for sounds for NPCs.

local sndTaunt = file.Find("sound/hurtmod_rev/taunt/" .. "*", "GAME" )
local sndDie = file.Find("sound/hurtmod_rev/die/" .. "*", "GAME" )

hook.Add("PlayerDeath","HS4PLYDie",function(victim,inflictor,attacker)
victim:EmitSound("hurtmod_rev/die/" .. table.Random(sndDie))
if inflictor:IsValid() && inflictor != victim then if math.random(1,2) == 1 then inflictor:EmitSound("hurtmod_rev/taunt/" .. table.Random(sndTaunt)) end end
end)


hook.Add("OnNPCKilled","HS4NPCDie",function(npc,attacker,inflictor)
npc:EmitSound("hurtmod_rev/die/" .. table.Random(sndDie))
if inflictor:IsValid() && inflictor != victim then if math.random(1,2) == 1 then inflictor:EmitSound("hurtmod_rev/taunt/" .. table.Random(sndTaunt)) end end
end)