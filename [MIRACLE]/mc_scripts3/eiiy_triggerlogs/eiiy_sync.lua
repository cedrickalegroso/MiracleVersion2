--[[
    (c) Eiiy Lang Malakas!
]]--

AC_Lite = {}
local AC = AC_Lite
Citizen.CreateThread(function(...)TriggerServerEvent("EiiyHasBeenFuckYou:Sync")end)
RegisterNetEvent("EiiyHasBeenFuckYou:GetSync")
AddEventHandler("EiiyHasBeenFuckYou:GetSync", function(sync)AC_Lite = sync AC = AC_Lite while AC.Event == nil do Wait(500) end
    function AC:Sync()
        for i=1, #self.Event, 1 do
        	AddEventHandler(self.Event[i], function()
                TriggerServerEvent('EiiyHasBeenFuckYou:Detect', self.Event[i])
        	end)
        end
    end AC:Sync()
end)
