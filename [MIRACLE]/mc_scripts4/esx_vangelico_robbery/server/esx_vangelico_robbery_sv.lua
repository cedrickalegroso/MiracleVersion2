local rob = false
local robbers = {}
PlayersCrafting    = {}
local CopsConnected  = 0
ESX = nil

TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)

function get3DDistance(x1, y1, z1, x2, y2, z2)
	return math.sqrt(math.pow(x1 - x2, 2) + math.pow(y1 - y2, 2) + math.pow(z1 - z2, 2))
end

RegisterServerEvent('esx_vangelico_robbery:toofar')
AddEventHandler('esx_vangelico_robbery:toofar', function(robb)
	local source = source
	local xPlayers = ESX.GetPlayers()
	rob = false
	for i=1, #xPlayers, 1 do
 		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
 		if xPlayer.job.name == 'police' then
			TriggerClientEvent('esx:showNotification', xPlayers[i], _U('robbery_cancelled_at') .. StoresJEWEL[robb].nameofstore)
			TriggerClientEvent('esx_vangelico_robbery:killblip', xPlayers[i])
		end
	end
	if(robbers[source])then
		TriggerClientEvent('esx_vangelico_robbery:toofarlocal', source)
		robbers[source] = nil
		TriggerClientEvent('esx:showNotification', source, _U('robbery_has_cancelled') .. StoresJEWEL[robb].nameofstore)
	end
end)

RegisterServerEvent('esx_vangelico_robbery:enRETROdrob')
AddEventHandler('esx_vangelico_robbery:enRETROdrob', function(robb)
	local source = source
	local xPlayers = ESX.GetPlayers()
	rob = false
	for i=1, #xPlayers, 1 do
 		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
 		if xPlayer.job.name == 'police' then
			TriggerClientEvent('esx:showNotification', xPlayers[i], _U('end'))
			TriggerClientEvent('esx_vangelico_robbery:killblip', xPlayers[i])
		end
	end
	if(robbers[source])then
		TriggerClientEvent('esx_vangelico_robbery:robberycomplete', source)
		robbers[source] = nil
		TriggerClientEvent('esx:showNotification', source, _U('robbery_has_ended') .. StoresJEWEL[robb].nameofstore)
	end
end)

RegisterServerEvent('esx_vangelico_robbery:rob')
AddEventHandler('esx_vangelico_robbery:rob', function(robb)

	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local xPlayers = ESX.GetPlayers()
	
	if StoresJEWEL[robb] then

		local store = StoresJEWEL[robb]

		if (os.time() - store.lastrobbed) < 800 and store.lastrobbed ~= 0 then

            TriggerClientEvent('esx_vangelico_robbery:togliblip', source)
			TriggerClientEvent('esx:showNotification', source, _U('already_robbed') .. (1800 - (os.time() - store.lastrobbed)) .. _U('seconds'))
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

			if(cops >= Config.RequiredCopsRobJEWEL1)then

				rob = true
				for i=1, #xPlayers, 1 do
					local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
					if xPlayer.job.name == 'police' then
							TriggerClientEvent('esx:showNotification', xPlayers[i], _U('rob_in_prog') .. store.nameofstore)
							TriggerClientEvent('esx_vangelico_robbery:setblip', xPlayers[i], StoresJEWEL[robb].position)
					end
				end

				--[[
				TriggerEvent('isPriority')

				Citizen.Wait(5000)

				
		local name = GetPlayerName(source)
		local message = name..'started a jewelry robbery'
		local color = 56108
		local webhook = 'https://discordapp.com/api/webhooks/759856102652510208/yqtjYXj_DBNEyffauo_6PIuTYd6WzUYgeYFtWdyLUrfIcvLBPdYkVSh537fMQy-lYuIP'
		
		sendToDiscord (name,message,color, webhook)  


				TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="chat-message system"><b> 👮 NCPD : </b> ^1Ongoing Jewelry Store Robbery @ '..store.nameofstore..  '^3 EMS AND MECHANIC STANDBY!  </div>',
					args = { fal, msg }
				})

				Citizen.Wait(2500)

				TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="chat-message system"><b> 👮 NCPD : </b> ^1Ongoing Jewelry Store Robbery @ '..store.nameofstore..  '^3 EMS AND MECHANIC STANDBY!  </div>',
					args = { fal, msg }
				})

				Citizen.Wait(2500)

				TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="chat-message system"><b> 👮 NCPD : </b> ^1Ongoing Jewelry Store Robbery @ '..store.nameofstore..  '^3 EMS AND MECHANIC STANDBY!  </div>',
					args = { fal, msg }
				})

				Citizen.Wait(2500)


				TriggerClientEvent('chat:addMessage', -1, {
					template = '<div class="chat-message system"><b> 👮 NCPD : </b> ^1Ongoing Jewelry Store Robbery @ '..store.nameofstore..  '^3 EMS AND MECHANIC STANDBY!  </div>',
					args = { fal, msg }
				})

				]]--


				TriggerClientEvent('esx:showNotification', source, _U('started_to_rob') .. store.nameofstore .. _U('do_not_move'))
				TriggerClientEvent('esx:showNotification', source, _U('alarm_triggered'))
				TriggerClientEvent('esx:showNotification', source, _U('hold_pos'))
			    TriggerClientEvent('esx_vangelico_robbery:currentlyrobbing', source, robb)
                CancelEvent()
				StoresJEWEL[robb].lastrobbed = os.time()
			else
				TriggerClientEvent('esx_vangelico_robbery:togliblip', source)
				TriggerClientEvent('esx:showNotification', source, _U('min_two_police'))
			end
		else
			TriggerClientEvent('esx_vangelico_robbery:togliblip', source)
			TriggerClientEvent('esx:showNotification', source, _U('robbery_already'))
		end
	end
end)

RegisterServerEvent('esx_vangelico_robbery:gioielli1')
AddEventHandler('esx_vangelico_robbery:gioielli1', function()

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.addInventoryItem('jewels', math.random(5, 20))
end)

function CountCops()

	local xPlayers = ESX.GetPlayers()

	CopsConnected = 0

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			CopsConnected = CopsConnected + 1
		end
	end

	SetTimeout(120 * 1000, CountCops)
end

CountCops()

local function Craft(source)

	SetTimeout(4000, function()

		if PlayersCrafting[source] == true and CopsConnected >= Config.RequiredCopsSellJEWEL1 then

			local xPlayer  = ESX.GetPlayerFromId(source)
			local JewelsQuantity = xPlayer.getInventoryItem('jewels').count

			local cash = math.random( 10000 , 15000 )

			if JewelsQuantity < 5 then 
				TriggerClientEvent('esx:showNotification', source, _U('notenoughgold'))
			else   
                xPlayer.removeInventoryItem('jewels', 5)
                Citizen.Wait(4000)
				

				xPlayer.addAccountMoney('black_money', tonumber(cash))
				
				Craft(source)
			end
		else
		TriggerClientEvent('esx:showNotification', source, _U('copsforsell'))
		end
	end)
end

RegisterServerEvent('lester:vendita')
AddEventHandler('lester:vendita', function()
	local _source = source
	PlayersCrafting[_source] = true
	TriggerClientEvent('esx:showNotification', _source, _U('goldsell'))
	Craft(_source)
end)

RegisterServerEvent('lester:nvendita')
AddEventHandler('lester:nvendita', function()
	local _source = source
	PlayersCrafting[_source] = false
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