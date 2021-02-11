local rob = false
local robbers = {}

TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)

RegisterServerEvent('esx_holdup:toofar')
AddEventHandler('esx_holdup:toofar', function(robb)
	local _source = source
	local xPlayers = ESX.GetPlayers()
	rob = false

	for i = 1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		
		if xPlayer.job.name == 'police' then
			TriggerClientEvent('esx:showNotification', xPlayers[i], _U('robbery_cancelled_at', ConfigHoldaper.Stores[robb].storeName))
			TriggerClientEvent('esx_holdup:killblip', xPlayers[i])
		end
	end

	if robbers[_source] then
		TriggerClientEvent('esx_holdup:toofarlocal', _source)
		robbers[_source] = nil
		TriggerClientEvent('esx:showNotification', _source, _U('robbery_cancelled_at', ConfigHoldaper.Stores[robb].storeName))
	end
end)

RegisterServerEvent('esx_holdup:rob')
AddEventHandler('esx_holdup:rob', function(robb)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers = ESX.GetPlayers()

	if ConfigHoldaper.Stores[robb] then
		if (os.time() - ConfigHoldaper.Stores[robb].lastRobbed) < ConfigHoldaper.TimerBeforeNewRob and ConfigHoldaper.Stores[robb].lastRobbed ~= 0 then
			TriggerClientEvent('esx:showNotification', _source, _U('recently_robbed', ConfigHoldaper.TimerBeforeNewRob - (os.time() - ConfigHoldaper.Stores[robb].lastRobbed)))
			return
		end

		local cops = 0

		for i = 1, #xPlayers, 1 do
			local xPlayer = ESX.GetPlayerFromId(xPlayers[i])

		
		--	if xPlayer and xPlayer.job.name == 'police' then
		if xPlayer.job.name == 'police' then
				cops = cops + 1
			end
		end

		if not rob then
			if cops >= ConfigHoldaper.PoliceNumberRequired then
				rob = true

				for i = 1, #xPlayers, 1 do
					local xPlayer = ESX.GetPlayerFromId(xPlayers[i])

				if xPlayer and xPlayer.job.name == 'police'  then
				--if xPlayer.job.name == 'police' then
						TriggerClientEvent('esx:showNotification', xPlayers[i], _U('rob_in_prog', ConfigHoldaper.Stores[robb].storeName))
						TriggerClientEvent('esx_holdup:setblip', xPlayers[i], ConfigHoldaper.Stores[robb].coords)
						--TriggerClientEvent('esx_holdup:playSound', xPlayers[i])
						TriggerClientEvent('InteractSound_CL:PlayOnOne', xPlayers[i], 'countbeep', 1.0)
					end
				end

				TriggerClientEvent('esx:showNotification', _source, _U('started_to_rob', ConfigHoldaper.Stores[robb].storeName))
				TriggerClientEvent('esx:showNotification', _source, _U('alarm_triggered'))
				--TriggerClientEvent('MF_Trackables:DoNotify',-1,'Heist in Progress',GetEntityCoords(GetPlayerPed(source)),"police")
				--TriggerClientEvent('MF_Trackables:DoNotify',-1,'Heist in Progress',GetEntityCoords(GetPlayerPed(source)),"ambulance")
				TriggerClientEvent('esx_holdup:currentlyrobbing', _source, robb)
				TriggerClientEvent('esx_holdup:starttimer', _source)

				TriggerEvent('isPriority')

				ConfigHoldaper.Stores[robb].lastRobbed = os.time()
				robbers[_source] = robb

			SetTimeout(ConfigHoldaper.Stores[robb].secondsRemaining * 1000, function()
		        	--SetTimeout(5 * 1000, function()
					if robbers[_source] then
						rob = false
						if xPlayer then
							math.randomseed(GetGameTimer())
							math.random()
							local robReward = math.random(ConfigHoldaper.Stores[robb].reward[1], ConfigHoldaper.Stores[robb].reward[2])
							TriggerClientEvent('esx_holdup:robberycomplete', _source, robReward)
							xPlayer.addAccountMoney('black_money', robReward)

							local xPlayers = ESX.GetPlayers()

							for i = 1, #xPlayers, 1 do
								local xPlayer = ESX.GetPlayerFromId(xPlayers[i])

								print('DEBUG')
								print(xPlayers[i])
								

								if xPlayer.job.name == 'police' then
									TriggerClientEvent('esx:showNotification', xPlayers[i], _U('robbery_complete_at', ConfigHoldaper.Stores[robb].storeName))
									TriggerClientEvent('esx_holdup:killblip', xPlayers[i])
								end
							end
						end
					end
				end)
			else
				TriggerClientEvent('esx:showNotification', _source, _U('min_police', ConfigHoldaper.PoliceNumberRequired))
			end
		else
			TriggerClientEvent('esx:showNotification', _source, _U('robbery_already'))
		end
	end
end)
