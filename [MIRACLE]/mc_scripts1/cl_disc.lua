ConfigDiscord = {}
ConfigDiscord.ClientID = 763715352680202270 -- Put your discord bot client id here
ConfigDiscord.PlayerCount = 64
ConfigDiscord.PlayerText = "Players" -- Player text. Example Players 10/32
ConfigDiscord.ResourceTimer = 5 -- Time in witch resource updates in seconds
ConfigDiscord.UseESXIdentity = true -- Uses ESX Identity name not steam name

ESX = nil
local jobGrade = ''
local job = ''
local playerName = nil
local playerLoaded = false
-- ESX Stuff----
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
	playerLoaded = true
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

RegisterNetEvent('discord:client:setPresence')
AddEventHandler('discord:client:setPresence', function(_playerName)
	playerName = _playerName
   	SetRichPresence('ID:' .. GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1))) .. ' | ' .. playerName .. ' | ' ..' '.. ConfigDiscord.PlayerText ..' ' .. #GetActivePlayers() .. '/' .. tostring(ConfigDiscord.PlayerCount))
end)

Citizen.CreateThread(function()
	while true do
		local Player = LocalPlayer()

		AddTextEntry('FE_THDR_GTAO', ('[~r~PH~w~] ~y~Miracle City~w~ | ~b~%s~w~ [~b~%s~w~] | discord.miraclecity.wtf'):format(Player.Name, Player.ServerID))

		SetDiscordAppId(738474552949997648)
		SetDiscordRichPresenceAsset('untitled-2')
		--SetDiscordRichPresenceAssetText("")
		SetDiscordRichPresenceAssetSmall('untitled-2')
		SetDiscordRichPresenceAssetSmallText('discord.miraclecity.wtf')
		SetRichPresence(("%s [%s]"):format(Player.Name, Player.ServerID))

		Citizen.Wait(30000)
	end
end)