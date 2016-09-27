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
local sndHurt = file.Find("sound/hurtmod_rev/hurt/" .. "*", "GAME" )
local sndDie = file.Find("sound/hurtmod_rev/die/" .. "*", "GAME" )
local sndImpact = file.Find("sound/hurtmod_rev/imp/" .. "*", "GAME" )

local function playertakedm(t,i) // Player is harmed.
if !t:Alive() then return end
if delay == true then return else delay = true timer.Simple(0.25, function() delay = false end) end

// Always play flesh sound.
t:EmitSound("hurtmod_rev/imp/" .. table.Random(sndImpact))

// Take a chance to play pain sound.
if math.random(1,2) == 1 then t:EmitSound("hurtmod_rev/hurt/" .. table.Random(sndHurt)) end

end

hook.Add("PlayerDeath","HS4PLYDie",function(victim,inflictor,attacker)
victim:EmitSound("hurtmod_rev/die/" .. table.Random(sndDie))
if inflictor:IsValid() && inflictor != victim then if math.random(1,2) == 1 then inflictor:EmitSound("hurtmod_rev/taunt/" .. table.Random(sndTaunt)) end end
end)


hook.Add("OnNPCKilled","HS4NPCDie",function(npc,attacker,inflictor)
npc:EmitSound("hurtmod_rev/die/" .. table.Random(sndDie))
if inflictor:IsValid() && inflictor != victim then if math.random(1,2) == 1 then inflictor:EmitSound("hurtmod_rev/taunt/" .. table.Random(sndTaunt)) end end
end)

hook.Add("PlayerShouldTakeDamage", "HS4Player", playertakedm) // The hook that lets us check when a PLAYER has been injured.
hook.Add("EntityTakeDamage", "HS4NPC", npctakedm) // The hook that lets us check when an NPC has been injured.