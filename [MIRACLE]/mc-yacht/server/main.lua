ESX               = nil
TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)

local cooldown = 0
local cooldowntime = 600 * 6000

function Timer()
	cooldown = 1
	Citizen.Wait(cooldowntime)
	cooldown = 0
end

RegisterServerEvent('mc-yacht:robbery')
AddEventHandler('mc-yacht:robbery', function(text)
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
	local xPlayers = ESX.GetPlayers()
	local police = 0
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			police = police+1
		end
	end
		if police > Config.LSPD-1 and cooldown == 0 then
			TriggerClientEvent("mc-yacht:start", source)
			TriggerClientEvent("mc-yacht:true", source)
			TriggerClientEvent("mc-yacht:notification", source, _U('robbery_started'))
			LSPD()
			Citizen.Wait(1000)
			Timer()
		end

		if cooldown == 1 then
			TriggerClientEvent("mc-yacht:notification", source, _U('robbed_recent'))
		end

		if police < Config.LSPD then
			TriggerClientEvent("mc-yacht:notification", source, _U('police'))
		end
end)

RegisterServerEvent('mc-yacht:reward')
AddEventHandler('mc-yacht:reward', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local reward = math.random(Config.MinReward,Config.MaxReward)
	xPlayer.addAccountMoney("black_money", reward)
end)

function LSPD()
	local _source = source
	local xPlayers = ESX.GetPlayers()

	for i=1, #xPlayers, 1 do
		xPlayer = ESX.GetPlayerFromId(xPlayers[i])

		if xPlayer.job.name == 'police' then
			TriggerClientEvent("mc-yacht:notify", -1)
		end
	end
end
