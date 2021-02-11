local rob = false
local robbers = {}
ESX = nil

TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)

function get3DDistance(x1, y1, z1, x2, y2, z2)
	return math.sqrt(math.pow(x1 - x2, 2) + math.pow(y1 - y2, 2) + math.pow(z1 - z2, 2))
end

RegisterServerEvent('be-rob-bery:toofar')
AddEventHandler('be-rob-bery:toofar', function(robb)
	local source = source
	local xPlayers = ESX.GetPlayers()
	rob = false
	for i=1, #xPlayers, 1 do
 		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
 		if xPlayer.job.name == 'police' then
			TriggerClientEvent('esx:showNotification', xPlayers[i], _U('robbery_cancelled_at') .. Banks[robb].nameofbank)
			TriggerClientEvent('be-rob-bery:killblip', xPlayers[i])
		end
	end
	if(robbers[source])then
		TriggerClientEvent('be-rob-bery:toofarlocal', source)
		robbers[source] = nil
		TriggerClientEvent('esx:showNotification', source, _U('robbery_has_cancelled') .. Banks[robb].nameofbank)
	end
end)

RegisterServerEvent('be-rob-bery:rob')
AddEventHandler('be-rob-bery:rob', function(robb)

	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local xPlayers = ESX.GetPlayers()
	
	if Banks[robb] then

		local bank = Banks[robb]

		if (os.time() - bank.lastrobbed) < 600 and bank.lastrobbed ~= 0 then

			TriggerClientEvent('esx:showNotification', source, _U('already_robbed') .. (1800 - (os.time() - bank.lastrobbed)) .. _U('seconds'))
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
		
			if xPlayer.getInventoryItem('blowtorch').count >= 1 then
				xPlayer.removeInventoryItem('blowtorch', 1)

				if(cops >= Config.NumberOfCopsRequired)then

					rob = true
					for i=1, #xPlayers, 1 do
						local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
						if xPlayer.job.name == 'police' then
								--TriggerServerEvent('MF_Trackables:Notify',"Alarm triggered on Pacific Bank",GetEntityCoords(GetPlayerPed(-1)),"police")
								--TriggerServerEvent('MF_Trackables:Notify',"Robbery in Progress.",GetEntityCoords(GetPlayerPed(-1)),"ambulance")
								--TriggerClientEvent('chatMessage', -1, 'NEWS', {255, 0, 0}, "Robbery in progress at ^2" .. bank.nameofbank)
								TriggerClientEvent('esx:showNotification', xPlayers[i], _U('rob_in_prog') .. bank.nameofbank)
								TriggerClientEvent('be-rob-bery:killblip', xPlayers[i])							
								TriggerClientEvent('be-rob-bery:setblip', xPlayers[i], Banks[robb].position)
						end
					end

					TriggerClientEvent('esx:showNotification', source, _U('started_to_rob') .. bank.nameofbank .. _U('do_not_move'))
					TriggerClientEvent('esx:showNotification', source, _U('alarm_triggered'))
					TriggerClientEvent('esx:showNotification', source, _U('hold_pos'))
					TriggerClientEvent('be-rob-bery:currentlyrobbing', source, robb)
					TriggerClientEvent('be-blow-torch:startblowtorch', source)
					Banks[robb].lastrobbed = os.time()
					robbers[source] = robb
					local savedSource = source
					SetTimeout(300000, function()
					

						if(robbers[savedSource])then

							rob = false
							TriggerClientEvent('be-rob-bery:robberycomplete', savedSource, job)
							if(xPlayer)then

								--Updated to choose between cash or black money
								if Config.moneyType == 'cash' then
									xPlayer.addMoney(bank.reward)
								elseif Config.moneyType == 'black' then
									xPlayer.addAccountMoney('black_money',bank.reward)
								end

								local xPlayers = ESX.GetPlayers()
								for i=1, #xPlayers, 1 do
									local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
									if xPlayer.job.name == 'police' then
											TriggerClientEvent('esx:showNotification', xPlayers[i], _U('robbery_complete_at') .. bank.nameofbank)
											TriggerClientEvent('be-rob-bery:killblip', xPlayers[i])
									end
								end
							end
						end
					end)
				else
					TriggerClientEvent('esx:showNotification', source, _U('min_two_police')..Config.NumberOfCopsRequired)
				end
			else
				TriggerClientEvent('esx:showNotification', source, _U('blowtorch_needed'))
			end

		else
			TriggerClientEvent('esx:showNotification', source, _U('robbery_already'))
		end
	end
end)

RegisterServerEvent('be-rob-bery:finishclear')
AddEventHandler('be-rob-bery:finishclear', function()
	TriggerClientEvent('be-blow-torch:finishclear', -1)
end)
