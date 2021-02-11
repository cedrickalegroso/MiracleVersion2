local rob = false
local robbers = {}
ESX = nil

TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)

function get3DDistance(x1, y1, z1, x2, y2, z2)
	return math.sqrt(math.pow(x1 - x2, 2) + math.pow(y1 - y2, 2) + math.pow(z1 - z2, 2))
end

RegisterServerEvent('esx_holdupbank:toofar')
AddEventHandler('esx_holdupbank:toofar', function(robb)
	local source = source
	local xPlayers = ESX.GetPlayers()
	rob = false
	for i=1, #xPlayers, 1 do
 		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
 		if xPlayer.job.name == 'police' then
			TriggerClientEvent('esx:showNotification', xPlayers[i], _U('robbery_cancelled_at') .. BanksHoldap[robb].nameofbank)
			TriggerClientEvent('esx_holdupbank:killblip', xPlayers[i])
		end
	end
	if(robbers[source])then
		TriggerClientEvent('esx_holdupbank:toofarlocal', source)
		robbers[source] = nil
		TriggerClientEvent('esx:showNotification', source, _U('robbery_has_cancelled') .. BanksHoldap[robb].nameofbank)
	end
end)


RegisterServerEvent('retro_scripts:callpopo')
AddEventHandler('retro_scripts:callpopo', function(i,j)

	

	TriggerEvent('isPriority')

	Citizen.Wait(5000)


	TriggerClientEvent('chat:addMessage', -1, {
		template = '<div class="chat-message system"><b> 👮 RCPD : </b> ^1Ongoing Illegal Drug transport last seen at '..j..' ^3EMS AND MECHANIC STANDBY!  </div>',
		args = { fal, msg }
	})

	Citizen.Wait(2500)

	TriggerClientEvent('chat:addMessage', -1, {
		template = '<div class="chat-message system"><b> 👮 RCPD : </b> ^1Ongoinh Illegal Drug transport last seen at '..j..' ^3EMS AND MECHANIC STANDBY!  </div>',
		args = { fal, msg }
	})

	Citizen.Wait(2500)

	TriggerClientEvent('chat:addMessage', -1, {
		template = '<div class="chat-message system"><b> 👮 RCPD : </b> ^1Ongoing Illegal Drug transport last seen at '..j..' ^3EMS AND MECHANIC STANDBY!  </div>',
		args = { fal, msg }
	})

	Citizen.Wait(2500)


	TriggerClientEvent('chat:addMessage', -1, {
		template = '<div class="chat-message system"><b> 👮 RCPD : </b> ^1Ongoing Illegal Drug transport last seen at '..j..' ^3EMS AND MECHANIC STANDBY!  </div>',
		args = { fal, msg }
	})
end)

RegisterServerEvent('esx_holdupbank:rob')
AddEventHandler('esx_holdupbank:rob', function(robb)

	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local xPlayers = ESX.GetPlayers()
	
	if BanksHoldap[robb] then

		local bank = BanksHoldap[robb]

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

			if(cops >= Config.NumberOfCopsRequiredholdapbank)then

				rob = true
				for i=1, #xPlayers, 1 do
					local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
					if xPlayer.job.name == 'police' then
							TriggerClientEvent('chatMessage', -1, 'NEWS', {255, 0, 0}, "Robbery in progress at ^2" .. bank.nameofbank)
							TriggerClientEvent('esx:showNotification', xPlayers[i], _U('rob_in_prog') .. bank.nameofbank)							
							TriggerClientEvent('esx_holdupbank:setblip', xPlayers[i], BanksHoldap[robb].position)
					end
				end

				

				local name = GetPlayerName(source)
				local message = name..' started a bank robbery at '..bank.nameofbank
				local color = 56108
				local webhook = 'https://discordapp.com/api/webhooks/765802118945833000/t5i9lIbO39BFTBe-HsdRW58mKI_s33op0zDgCrtOT-mqjd3SCuXH0MFzddLbz2vspNy6'
			
								
				sendToDiscord(name,message,color, webhook)

				TriggerEvent('isPriority')

				Citizen.Wait(5000)


				TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="chat-message system"><b> 👮 RCPD : </b> ^1Ongoing Fleeca Bank Robbery @'..bank.nameofbank..  ' Postal code ' ..bank.blockOfbank.. ' ^3EMS AND MECHANIC STANDBY!  </div>',
					args = { fal, msg }
				})

				Citizen.Wait(2500)

				TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="chat-message system"><b> 👮 RCPD : </b> ^1Ongoing Fleeca Bank Robbery @'..bank.nameofbank..  ' Postal code ' ..bank.blockOfbank..' ^3EMS AND MECHANIC STANDBY!  </div>',
					args = { fal, msg }
				})

				Citizen.Wait(2500)

				TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="chat-message system"><b> 👮 RCPD : </b> ^1Ongoing Fleeca Bank Robbery @'..bank.nameofbank..  ' Postal code ' ..bank.blockOfbank..' ^3EMS AND MECHANIC STANDBY!  </div>',
					args = { fal, msg }
				})

				Citizen.Wait(2500)


				TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="chat-message system"><b> 👮 RCPD : </b> ^1Ongoing Fleeca Bank Robbery @'..bank.nameofbank..  ' Postal code ' ..bank.blockOfbank..' ^3EMS AND MECHANIC STANDBY!  </div>',
					args = { fal, msg }
				})


				TriggerClientEvent('esx:showNotification', source, _U('started_to_rob') .. bank.nameofbank .. _U('do_not_move'))
				TriggerClientEvent('esx:showNotification', source, _U('alarm_triggered'))
				TriggerClientEvent('esx:showNotification', source, _U('hold_pos'))
				TriggerClientEvent('esx_holdupbank:currentlyrobbing', source, robb)
				BanksHoldap[robb].lastrobbed = os.time()
				robbers[source] = robb
				local savedSource = source
				SetTimeout(300000, function()

					if(robbers[savedSource])then

						rob = false
						TriggerClientEvent('esx_holdupbank:robberycomplete', savedSource, job)
						if(xPlayer)then

							xPlayer.addAccountMoney('black_money', bank.reward)
							--xPlayer.addMoney(bank.reward)
							local xPlayers = ESX.GetPlayers()
							for i=1, #xPlayers, 1 do
								local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
								if xPlayer.job.name == 'police' then
										TriggerClientEvent('esx:showNotification', xPlayers[i], _U('robbery_complete_at') .. bank.nameofbank)
										TriggerClientEvent('esx_holdupbank:killblip', xPlayers[i])
								end
							end
						end
					end
				end)
			else
				TriggerClientEvent('esx:showNotification', source, _U('min_two_police'))
			end
		else
			TriggerClientEvent('esx:showNotification', source, _U('robbery_already'))
		end
	end
end)


function sendToDiscord (name,message,color, webhook)  
	local DiscordWebHook = webhook
	local DISCORD_IMAGE	= "https://i.imgur.com/DZUmmWL.png"
  
  local embeds = {
	  {
		  ["title"]=message,
		  ["type"]="rich",
		  ["color"] =color,
		  ["footer"]=  {
			  ["text"]= "Discord Bot by Cedrick  Alegroso",
			  ["icon_url"] = DISCORD_IMAGE,
		 },
	  }
  }
  
	if message == nil or message == '' then return FALSE end
	PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
  end