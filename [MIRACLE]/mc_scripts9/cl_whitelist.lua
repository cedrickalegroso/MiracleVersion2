
local blipsEms               = {}
local blipsGroove            = {}
local blipsCops           = {}
local isClaimed = 0


Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(100)
	end

	PlayerLoaded = true
    ESX.PlayerData = ESX.GetPlayerData()
    
    print('debug '.. ESX.PlayerData.job.name)

  if ESX.PlayerData.job.name == 'ambulance' then 
	TriggerServerEvent('retro_scripts:updateEmsBlips1')
	Citizen.Wait(5000)
	TriggerEvent('retro_scripts:initems')
  elseif ESX.PlayerData.job.name == 'groove' then 
	TriggerServerEvent('retro_scripts:updateGrooveBlips1')
	Citizen.Wait(5000)
	TriggerEvent('retro_scripts:initgroove')
  elseif ESX.PlayerData.job.name == 'police' then 
--	TriggerServerEvent('retro_scripts:updatePoliceBlips1')
	Citizen.Wait(5000)
	TriggerEvent('retro_scripts:initpolice')
  end

end)


RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
	Citizen.Wait(5000)
end)

-- Create blip for colleagues
function createBlipAmbulance(id)
	local ped = GetPlayerPed(id)
	local blip = GetBlipFromEntity(ped)

	if not DoesBlipExist(blip) then -- Add blip and create head display on player
		blip = AddBlipForEntity(ped)
		SetBlipSprite(blip, 1)
		ShowHeadingIndicatorOnBlip(blip, true) -- Player Blip indicator
		SetBlipRotation(blip, math.ceil(GetEntityHeading(ped))) -- update rotation
		SetBlipNameToPlayerName(blip, id) -- update blip name
		SetBlipScale(blip, 0.85) -- set scale
		SetBlipAsShortRange(blip, true)
		
		table.insert(blipsEms, blip) -- add blip to array so we can remove it later
	end
end

RegisterNetEvent('retro_scripts:updateEmsBlips')
AddEventHandler('retro_scripts:updateEmsBlips', function()
	
	-- Refresh all blips
	for k, existingBlip in pairs(blipsEms) do
		RemoveBlip(existingBlip)
	end
	
	-- Clean the blip table
	blipsEms = {}


	-- Is the player a cop? In that case show all the blips for other cops
	if PlayerData.job ~= nil and PlayerData.job.name == 'ambulance' then
		ESX.TriggerServerCallback('esx_society:getOnlRETROinePlayers', function(players)
			for i=1, #players, 1 do
				if players[i].job.name == 'ambulance' then
					local id = GetPlayerFromServerId(players[i].source)
					if NetworkIsPlayerActive(id) and GetPlayerPed(id) ~= PlayerPedId() then
						createBlipAmbulance(id)
					end
				end
			end
		end)
	end

end)



-- Create blip for colleagues
function createBlipGroove(id)
	local ped = GetPlayerPed(id)
	local blip = GetBlipFromEntity(ped)

	if not DoesBlipExist(blip) then -- Add blip and create head display on player
		blip = AddBlipForEntity(ped)
		SetBlipSprite(blip, 1)
		ShowHeadingIndicatorOnBlip(blip, true) -- Player Blip indicator
		SetBlipRotation(blip, math.ceil(GetEntityHeading(ped))) -- update rotation
		SetBlipNameToPlayerName(blip, id) -- update blip name
		SetBlipScale(blip, 0.85) -- set scale
		SetBlipAsShortRange(blip, true)
		
		table.insert(blipsGroove, blip) -- add blip to array so we can remove it later
	end
end


RegisterNetEvent('retro_scripts:updateGrooveBlips')
AddEventHandler('retro_scripts:updateGrooveBlips', function()
	
	-- Refresh all blips
	for k, existingBlip in pairs(blipsGroove) do
		RemoveBlip(existingBlip)
	end
	
	-- Clean the blip table
	blipsGroove = {}


	-- Is the player a cop? In that case show all the blips for other cops
	if PlayerData.job ~= nil and PlayerData.job.name == 'groove' then
		ESX.TriggerServerCallback('esx_society:getOnlRETROinePlayers', function(players)
			for i=1, #players, 1 do
				if players[i].job.name == 'groove' then
					local id = GetPlayerFromServerId(players[i].source)
					if NetworkIsPlayerActive(id) and GetPlayerPed(id) ~= PlayerPedId() then
						createBlipGroove(id)
					end
				end
			end
		end)
	end

end)


-- Create blip for colleagues
function createBlipCops(id)
	local ped = GetPlayerPed(id)
	local blip = GetBlipFromEntity(ped)

	if not DoesBlipExist(blip) then -- Add blip and create head display on player
		blip = AddBlipForEntity(ped)
		SetBlipSprite(blip, 1)
		ShowHeadingIndicatorOnBlip(blip, true) -- Player Blip indicator
		SetBlipRotation(blip, math.ceil(GetEntityHeading(ped))) -- update rotation
		SetBlipNameToPlayerName(blip, id) -- update blip name
		SetBlipScale(blip, 0.85) -- set scale
		SetBlipAsShortRange(blip, true)
		
		table.insert(blipsCops, blip) -- add blip to array so we can remove it later
	end
end


RegisterNetEvent('retro_scripts:blipsCops')
AddEventHandler('retro_scripts:blipsCops', function()
	
	-- Refresh all blips
	for k, existingBlip in pairs(blipsCops) do
		RemoveBlip(existingBlip)
	end
	
	-- Clean the blip table
	blipsCops = {}


	-- Is the player a cop? In that case show all the blips for other cops
	if PlayerData.job ~= nil and PlayerData.job.name == 'police' then
		ESX.TriggerServerCallback('esx_society:getOnlRETROinePlayers', function(players)
			for i=1, #players, 1 do
				if players[i].job.name == 'police' then
					local id = GetPlayerFromServerId(players[i].source)
					if NetworkIsPlayerActive(id) and GetPlayerPed(id) ~= PlayerPedId() then
						createBlipCops(id)
					end
				end
			end
		end)
	end

end)


RegisterNetEvent("retro_scripts:initgroove")
AddEventHandler('retro_scripts:initgroove', function(source)
	exports["rp-radio"]:GivePlayerAccessToFrequencies(3,4) 
	ESX.ShowNotification('Whitelist Frequency for Mechanic activated ~g~FREQ #3 and #4(All Whitelisted) ')
end)

RegisterNetEvent("retro_scripts:initpolice")
AddEventHandler('retro_scripts:initpolice', function(source)
	exports["rp-radio"]:GivePlayerAccessToFrequencies(2,4) 
	ESX.ShowNotification('Whitelist Frequency for Police activated ~g~FREQ #2 and #4(All Whitelisted) ')
end)

RegisterNetEvent("retro_scripts:initems")
AddEventHandler('retro_scripts:initems', function(source)
	exports["rp-radio"]:GivePlayerAccessToFrequencies(1,4) 	
	ESX.ShowNotification('Whitelist Frequency for EMS activated ~g~FREQ #1 and #4(All Whitelisted) ')
end)


RegisterNetEvent("retro_scripts:disabledutyradioPD")
AddEventHandler('retro_scripts:disabledutyradioPD', function(source, job)
	exports["rp-radio"]:RemovePlayerAccessToFrequencies(2,4)
    ESX.ShowNotification('Whitelist Frequencies for Police ~r~deactivated')
end)

RegisterNetEvent("retro_scripts:disabledutyradioEMS")
AddEventHandler('retro_scripts:disabledutyradioEMS', function(source, job)
	exports["rp-radio"]:RemovePlayerAccessToFrequencies(1,4)
    ESX.ShowNotification('Whitelist Frequencies for EMS ~r~deactivated')
end)

RegisterNetEvent("retro_scripts:disabledutyradioMECH")
AddEventHandler('retro_scripts:disabledutyradioMECH', function(source, job)
	exports["rp-radio"]:RemovePlayerAccessToFrequencies(3,4)
    ESX.ShowNotification('Whitelist Frequencies for MECHANIC ~r~deactivated')
end)

RegisterNetEvent("retro_scripts:enabledutyradioPD")
AddEventHandler('retro_scripts:enabledutyradioPD', function(source)
	exports["rp-radio"]:GivePlayerAccessToFrequencies(2, 4)
    ESX.ShowNotification('Whitelist Frequency for Police activated ~g~FREQ #2 and #4(All Whitelisted)')
end)


RegisterNetEvent("retro_scripts:enabledutyradioEMS")
AddEventHandler('retro_scripts:enabledutyradioEMS', function(source)
	exports["rp-radio"]:GivePlayerAccessToFrequencies(1, 4)
    ESX.ShowNotification('Whitelist Frequency for EMS activated ~g~FREQ #1 and #4(All Whitelisted)')
end)


RegisterNetEvent("retro_scripts:enabledutyradioMECH")
AddEventHandler('retro_scripts:enabledutyradioMECH', function(source)
	exports["rp-radio"]:GivePlayerAccessToFrequencies(3, 4)
    ESX.ShowNotification('Whitelist Frequency for Mechanic activated ~g~FREQ #3 and #4(All Whitelisted)')
end)



Citizen.CreateThread(function()
	--Wait(2*60000) -- Delay first spawn.
	while true do
		ClearAllBrokenGlass()
		ClearAllHelpMessages()
		LeaderboardsReadClearAll()
		ClearBrief()
		ClearGpsFlags()
		ClearPrints()
		ClearSmallPrints()
		ClearReplayStats()
		LeaderboardsClearCacheData()
		ClearFocus()
		ClearHdArea()
		print("MIRACLE CITY FPS BOOT RUNNING")
		Wait(1*60000)
	end
end)


--blindfire

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5)
        local ped = PlayerPedId()
        if IsPedInCover(ped, 1) and not IsPedAimingFromCover(ped, 1) then 
            DisableControlAction(2, 24, true) 
            DisableControlAction(2, 142, true)
            DisableControlAction(2, 257, true)
        end
    end
end)
