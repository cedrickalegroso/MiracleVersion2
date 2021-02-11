local cJ = false
local eJE = false

local isFrozen;

RegisterNetEvent('freeze:freezePlayer')
AddEventHandler('freeze:freezePlayer', function()
    isFrozen = not isFrozen
end)
--ESX base


local time = 1000

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)


RegisterNetEvent("retro_scripts:emsbed1")
AddEventHandler("retro_scripts:emsbed1", function(tPID)
	local pP = GetPlayerPed(-1)


	SetEntityCoords(PlayerPedId(pP), -448.35134887695,-283.72018432617,35.833194732666, true, true, true, false)
	SetEntityHeading(PlayerPedId(pP), 21)

	
	ExecuteCommand('e passout3')

	Citizen.Wait(5000)

	TriggerEvent('freeze:freezePlayer')
	exports['progressBars']:startUI(time, "You are under hospital arrest. ")
	Citizen.Wait(time)
	TriggerEvent('freeze:freezePlayer')
	  
	ExecuteCommand('e c')

end)



RegisterNetEvent("retro_scripts:emsbed2")
AddEventHandler("retro_scripts:emsbed2", function(tPID)
	local pP = GetPlayerPed(-1)


	SetEntityCoords(PlayerPedId(pP), -451.35906982422,-285.08215332031,35.833198547363, true, true, true, false)
	SetEntityHeading(PlayerPedId(pP), 21)

	
	ExecuteCommand('e passout3')

	Citizen.Wait(5000)

	TriggerEvent('freeze:freezePlayer')
	exports['progressBars']:startUI(time, "You are under hospital arrest. ")
	Citizen.Wait(time)
	TriggerEvent('freeze:freezePlayer')
	  
	ExecuteCommand('e c')

end)



RegisterNetEvent("retro_scripts:emsbed3")
AddEventHandler("retro_scripts:emsbed3", function(tPID)
	local pP = GetPlayerPed(-1)


	SetEntityCoords(PlayerPedId(pP), -454.97229003906,-286.40310668945,35.833225250244, true, true, true, false)
	SetEntityHeading(PlayerPedId(pP), 21)

	
	ExecuteCommand('e passout3')

	Citizen.Wait(5000)

	TriggerEvent('freeze:freezePlayer')
	exports['progressBars']:startUI(time, "You are under hospital arrest. ")
	Citizen.Wait(time)
	TriggerEvent('freeze:freezePlayer')
	  
	ExecuteCommand('e c')

end)


RegisterNetEvent("retro_scripts:emsbed4")
AddEventHandler("retro_scripts:emsbed4", function(tPID)
	local pP = GetPlayerPed(-1)


	SetEntityCoords(PlayerPedId(pP), -459.11019897461,-279.70425415039,35.835056304932, true, true, true, false)
	SetEntityHeading(PlayerPedId(pP), 205.1)

	
	ExecuteCommand('e passout3')

	Citizen.Wait(5000)

	TriggerEvent('freeze:freezePlayer')
	exports['progressBars']:startUI(time, "You are under hospital arrest. ")
	Citizen.Wait(time)
	TriggerEvent('freeze:freezePlayer')
	  
	ExecuteCommand('e c')

end)


RegisterNetEvent("retro_scripts:emsbed5")
AddEventHandler("retro_scripts:emsbed5", function(tPID)
	local pP = GetPlayerPed(-1)


	SetEntityCoords(PlayerPedId(pP), -455.12258911133,-278.18957519531,35.835098266602, true, true, true, false)
	SetEntityHeading(PlayerPedId(pP), 205.1)

	
	ExecuteCommand('e passout3')

	Citizen.Wait(5000)

	TriggerEvent('freeze:freezePlayer')
	exports['progressBars']:startUI(time, "You are under hospital arrest. ")
	Citizen.Wait(time)
	TriggerEvent('freeze:freezePlayer')
	  
	ExecuteCommand('e c')

end)


RegisterNetEvent("retro_scripts:morgue")
AddEventHandler("retro_scripts:morgue", function(tPID)
	local pP = GetPlayerPed(-1)


	SetEntityCoords(PlayerPedId(pP), -455.12258911133,-278.18957519531,35.835098266602, true, true, true, false)
	SetEntityHeading(PlayerPedId(pP), 205.1)

	
	ExecuteCommand('e passout3')

	Citizen.Wait(5000)

	TriggerEvent('freeze:freezePlayer')
	exports['progressBars']:startUI(time, "You are under hospital arrest. ")
	Citizen.Wait(time)
	TriggerEvent('freeze:freezePlayer')
	  
	ExecuteCommand('e c')

end)