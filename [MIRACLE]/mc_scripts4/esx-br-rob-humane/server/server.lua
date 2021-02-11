local rob = false
local robbers = {}
ESX = nil

TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)

function get3DDistance(x1, y1, z1, x2, y2, z2)
	return math.sqrt(math.pow(x1 - x2, 2) + math.pow(y1 - y2, 2) + math.pow(z1 - z2, 2))
end

RegisterServerEvent('esx-br-rob-humane:toofar')
AddEventHandler('esx-br-rob-humane:toofar', function(robb)
	local source = source
	local xPlayers = ESX.GetPlayers()
	rob = false
	for i=1, #xPlayers, 1 do
 		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
 		if xPlayer.job.name == 'police' then
			TriggerClientEvent('esx:showNotification', xPlayers[i], _U('robbery_cancelled_at') .. BanksHumanes[robb].nameofBanksHumane)
			TriggerClientEvent('esx-br-rob-humane:killblip', xPlayers[i])
		end
	end
	if(robbers[source])then
		TriggerClientEvent('esx-br-rob-humane:toofarlocal', source)
		robbers[source] = nil
		TriggerClientEvent('esx:showNotification', source, _U('robbery_has_cancelled') .. BanksHumanes[robb].nameofBanksHumane)
	end
end)

RegisterServerEvent('esx-br-rob-humane:rob')
AddEventHandler('esx-br-rob-humane:rob', function(robb)

	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local pendrive = xPlayer.getInventoryItem('pendrive')
	local xPlayers = ESX.GetPlayers()
	
	if BanksHumane[robb] then

		local BanksHumane = BanksHumane[robb]

		if (os.time() - BanksHumane.lastrobbed) < 43200 and BanksHumane.lastrobbed ~= 0 then

			TriggerClientEvent('esx:showNotification', source, _U('already_robbed') .. (2 - (os.time() - BanksHumane.lastrobbed)) .. _U('seconds'))
			return
		end


		local cops = 0
		for i=1, #xPlayers, 1 do
 		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
 		if xPlayer.job.name == 'police' then
				cops = cops + 1
			end
		end


		if rob == false then
		   
		  if xPlayer.getInventoryItem('pendrive').count >= 1 then
		     xPlayer.removeInventoryItem('pendrive', 1)

			if(cops >= Config.NumberOfCopsRequiredHumane)then

				rob = true
				for i=1, #xPlayers, 1 do
					local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
					if xPlayer.job.name == 'police' then
							TriggerClientEvent('esx:showNotification', xPlayers[i], _U('rob_in_prog') .. BanksHumane.nameofbank)
							TriggerClientEvent('esx-br-rob-humane:setblip', xPlayers[i], BanksHumanes[robb].position)
					end
				end


				
				TriggerEvent('isPriority')

				Citizen.Wait(5000)


				TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="chat-message system"><b> 👮 NCPD : </b> ^1Ongoing Humane Labs Robbery! @ '..BanksHumane.nameofbank..  '^3 EMS AND MECHANIC STANDBY!  </div>',
					args = { fal, msg }
				})

				Citizen.Wait(2500)

				TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="chat-message system"><b> 👮 NCPD : </b> ^1Ongoing Humane Labs Robbery! @ '..BanksHumane.nameofbank..  '^3 EMS AND MECHANIC STANDBY!  </div>',
					args = { fal, msg }
				})

				Citizen.Wait(2500)

				TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="chat-message system"><b> 👮 NCPD : </b> ^1Ongoing Humane Labs Robbery! @ '..BanksHumane.nameofbank..  '^3 EMS AND MECHANIC STANDBY!  </div>',
					args = { fal, msg }
				})

				Citizen.Wait(2500)


				TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="chat-message system"><b> 👮 NCPD : </b> ^1Ongoing Humane Labs Robbery! @ '..BanksHumane.nameofbank..  '^3 EMS AND MECHANIC STANDBY!  </div>',
					args = { fal, msg }
				})


				TriggerClientEvent('esx:showNotification', source, _U('started_to_rob') .. BanksHumane.nameofbank .. _U('do_not_move'))
				TriggerClientEvent('esx:showNotification', source, _U('alarm_triggered'))
				TriggerClientEvent('esx:showNotification', source, _U('hold_pos'))
				TriggerClientEvent('esx_borrmaskin_yacht:startpendrive', source)
				TriggerClientEvent('esx-br-rob-humane:currentlyrobbing', source, robb)
				BanksHumanes[robb].lastrobbed = os.time()
				robbers[source] = robb
				local savedSource = source
				SetTimeout(600000, function()

					if(robbers[savedSource])then

						rob = false
						TriggerClientEvent('esx-br-rob-humane:robberycomplete', savedSource, job)
						if(xPlayer)then

							xPlayer.addAccountMoney('black_money', BanksHumane.reward)
							local xPlayers = ESX.GetPlayers()
							for i=1, #xPlayers, 1 do
								local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
								if xPlayer.job.name == 'police' then
										TriggerClientEvent('esx:showNotification', xPlayers[i], _U('robbery_complete_at') .. BanksHumane.nameofBanksHumane)
										TriggerClientEvent('esx-br-rob-humane:killblip', xPlayers[i])
								end
							end
						end
					end
				end)
			else
				TriggerClientEvent('esx:showNotification', source, _U('min_two_police') .. Config.NumberOfCopsRequiredHumane)
			end
		end
		else
			TriggerClientEvent('esx:showNotification', source, _U('robbery_already'))
		end
	end
end)
