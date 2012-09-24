--[[=========================================
 _     _    _
| |   | |  | |  /\                  /\
| |   | |  | | /  \   _ __  _ __   /  \   _ __ ___
| |   | |  | |/ /\ \ | '_ \| '_ \ / /\ \ | '__/ __|
| |___| |__| / ____ \| |_) | |_) / ____ \| | | (__
|______\____/_/    \_\ .__/| .__/_/    \_\_|  \___|
  Scripting Project  | |   | | Improved LUA Engine
                     |_|   |_|
   SVN: http://svn.burning-azzinoth.de/LUAppArc
   LOG: http://luapparc.burning-azzinoth.de/trac/timeline
   TRAC: http://luapparc.burning-azzinoth.de/trac
   ----------------------
   Shadowfang Keep Units.lua
   Original Code by DARKI
   Version 1
========================================]]--
-- % Complete: 1%
-- Comments: Only ChatMessages

-- [[ Spells ]] --



-- [[ Functions ]] --
function Nandos_OnCombat(Unit, Event)
	unit:SendChatMessage(14, 0, "I can't believe it! You've destroyed my pack... Now face my wrath!")
end

function Nandos_OnLeaveCombat(Unit, Event)
	unit:RemoveEvents()
end

function Nandos_OnKilledTarget(Unit, Event)
end

function Nandos_OnDied(Unit, Event)
	unit:RemoveEvents()
end 


-- [[ Registering ]] --
RegisterUnitEvent(3927, 1, "Nandos_OnCombat")
RegisterUnitEvent(3927, 2, "Nandos_OnLeaveCombat")
RegisterUnitEvent(3927, 3, "Nandos_OnKilledTarget")
RegisterUnitEvent(3927, 4, "Nandos_OnDied")