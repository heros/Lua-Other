--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 27, 2009. ]]
--[[
function Broodlord_Lashlayer_OnCombat(Unit, event)
--	Unit:SendChatMessage(14, 0, "Need to find out what he says oncombat still")
	Unit:RegisterEvent("Cleave", 15000, 0)
	Unit:RegisterEvent("Whelps", 190000, 0)
	Unit:RegisterEvent("Taskmaster", 640000, 0)
	Unit:RegisterEvent("Hatcher", 640000, 0)
	Unit:RegisterEvent("Back", 30000, 0)
end

function Whelps(Unit, event)
local x,y,z,o =	Unit:GetX(),Unit:GetY(),Unit:GetZ(),Unit:GetO()
	Unit:SpawnCreature(14024 , x, y, z, o, 14, 190000)
	Unit:SpawnCreature(14025 , x, y, z, o, 14, 190000)
	Unit:SpawnCreature(14023 , x, y, z, o, 14, 190000)
	Unit:SpawnCreature(14022 , x, y, z, o, 14, 190000)
end

function Taskmaster(Unit, event)
local x,y,z,o =	Unit:GetX(),Unit:GetY(),Unit:GetZ(),Unit:GetO()
	Unit:SpawnCreature(12458 , x, y, z, o, 14, 650000)
	Unit:SpawnCreature(12458 , x, y, z, o, 14, 650000)
	Unit:SpawnCreature(12458 , x, y, z, o, 14, 650000)
end
	
function Hatcher(Unit, event)
local x,y,z,o =	Unit:GetX(),Unit:GetY(),Unit:GetZ(),Unit:GetO()
	Unit:SpawnCreature(12468 , x, y, z, o, 14, 650000)
end

function Cleave(Unit, event)
local tank =	Unit:GetMainTank()
	if tank ~= nill then
		Unit:FullCastSpellOnTarget(15284, tank)
	end
end

function Back(Unit, event)
local plr =	Unit:GetMainTank()
	if plr ~= nil then
		Unit:CastSpellOnTarget(18670, plr)
		Unit:RemoveThreatByPtr(plr)
	end
end

function Broodlord_Lashlayer_OnLeaveCombat(Unit, event)
	--Unit:SendChatMessage(14, 0, "Something)
	Unit:RemoveEvents()
end

function Broodlord_Lashlayer_OnDeath(Unit, event)
	Unit:RemoveEvents()
end
	
RegisterUnitEvent(12017, 1, "Broodlord_Lashlayer_OnCombat")
RegisterUnitEvent(12017, 2, "Broodlord_Lashlayer_OnLeaveCombat")
RegisterUnitEvent(12017, 4, "Broodlord_Lashlayer_OnDeath")]]--		