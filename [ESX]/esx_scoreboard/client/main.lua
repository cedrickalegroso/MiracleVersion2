local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local ajdik = GetPlayerServerId(PlayerId())
local idVisable = true
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	Citizen.Wait(2000)
	ESX.TriggerServerCallback('esx_scoreboard:getConnectedPlayers', function(connectedPlayers)
		UpdatePlayerTable(connectedPlayers)
	end)
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	local data = xPlayer
	-- Job
	local job = data.job
	local job2 = data.job2
	SendNUIMessage({action = "updatePraca", praca = job.label.." - "..job.grade_label, praca2 = job2.label.." - "..job2.grade_label})
	SendNUIMessage({action = "updatePraca", praca2 = job2.label.." - "..job2.grade_label})
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	SendNUIMessage({action = "updatePraca", praca = job.label.." - "..job.grade_label})
end)

RegisterNetEvent('esx:setJob2')
AddEventHandler('esx:setJob2', function(job2)
	SendNUIMessage({action = "updatePraca2", praca2 = job2.label.." - "..job2.grade_label})
end)


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(5000)
		ajdik = GetPlayerServerId(PlayerId())
		if ajdik == nil or ajdik == '' then
			ajdik = GetPlayerServerId(PlayerId())
		end
	end
end)

Citizen.CreateThread(function()
	Citizen.Wait(500)
	ajdik = GetPlayerServerId(PlayerId())
	if ajdik == nil or ajdik == '' then
		ajdik = GetPlayerServerId(PlayerId())
	end
	SendNUIMessage({
		action = 'updateServerInfo',

		maxPlayers = GetConvarInt('sv_maxclients', 64),
		uptime = ajdik,
	})
end)

RegisterNetEvent('esx_scoreboard:updateConnectedPlayers')
AddEventHandler('esx_scoreboard:updateConnectedPlayers', function(connectedPlayers)
	UpdatePlayerTable(connectedPlayers)
end)

RegisterNetEvent('esx_scoreboard:updatePing')
AddEventHandler('esx_scoreboard:updatePing', function(connectedPlayers)
	SendNUIMessage({
		action  = 'updatePing',
		players = connectedPlayers
	})
end)

RegisterNetEvent('esx_scoreboard:toggleID')
AddEventHandler('esx_scoreboard:toggleID', function(state)
	if state then
		idVisable = state
	else
		idVisable = not idVisable
	end

	SendNUIMessage({
		action = 'toggleID',
		state = idVisable
	})
end)

RegisterNetEvent('uptime:tick')
AddEventHandler('uptime:tick', function(uptime)
	ajdik = GetPlayerServerId(PlayerId())
	if ajdik == nil or ajdik == '' then
		ajdik = GetPlayerServerId(PlayerId())
	end
	SendNUIMessage({
		action = 'updateServerInfo',
		uptime = ajdik
	})
end)



RegisterNetEvent('uptime:tick')
AddEventHandler('uptime:tick', function(uptime)
	ajdik = GetPlayerServerId(PlayerId())
	if ajdik == nil or ajdik == '' then
		ajdik = GetPlayerServerId(PlayerId())
	end
	SendNUIMessage({
		action = 'updateServerInfo',
		uptime = ajdik
	})
end)


RegisterNetEvent('retro_script:checkplayers')
AddEventHandler('retro_script:checkplayers', function()
	ESX.TriggerServerCallback('esx_scoreboard:getConnectedPlayers', function(connectedPlayers)
		checkemscount(connectedPlayers)
	end)
end)

function checkemscount(connectedPlayers)

	local formattedPlayerList, num = {}, 1
	local ems, police, magtibay, taxi, groove, guerrero, tamasakv2, cardealer, players government, cuatro = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

	for k,v in pairs(connectedPlayers) do

	

		players = players + 1

		if v.job or v.job2  == 'ambulance' then
			--print('add to ambu')
			ems = ems + 1
		elseif v.job or v.job2 == 'police' then
			police = police + 1
		elseif v.job or v.job2 == 'taxi' then
			taxi = taxi + 1
		elseif v.job or v.job2 == 'groove' then
			groove = groove + 1
		elseif v.job or v.job2 == 'taxi' then
			taxi = taxi + 1
		elseif v.job or v.job2 == 'tamasakv2' then
			tamasakv2 = tamasakv2 + 1
		elseif v.job or v.job2 == 'guerrero' then
			guerrero = guerrero + 1
		elseif v.job or v.job2 == 'cuatro' then
			cuatro = cuatro + 1
		elseif v.job or v.job2 == 'government' then
			government = government + 1
		elseif v.job or v.job2 == 'vermillion' then
			vermillion = vermillion + 1
		elseif v.job or v.job2 == 'thelost' then
			thelost = thelost + 1
		elseif v.job or v.job2 == 'magtibay' then
			magtibay = magtibay + 1
		end


		print(ems)

		if ems > 0 then
			TriggerEvent('retro_script:callems')
		else 
			TriggerEvent('retro_script:allowheal')
		end
	end

end



function UpdatePlayerTable(connectedPlayers)
	local formattedPlayerList, num = {}, 1
	local ems, gang13, gang14, gang15,  gang16, police, taxi, groove, magtibay, guerrero, tamasakv2, cardealer, players, government, cuatro, vermillion, thelost, gordo = 0,0,0,0,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

	for k,v in pairs(connectedPlayers) do

		table.insert(formattedPlayerList, ('<tr><td>%s</td><td>%s</td><td>%s</td>'):format(v.name, v.id, v.ping))

		players = players + 1

		if v.job == 'ambulance'  then
			ems = ems + 1
		elseif v.job == 'police'  then
			police = police + 1
		elseif v.job == 'taxi'  then
			taxi = taxi + 1
		elseif v.job == 'groove'  then
			groove = groove + 1
		elseif v.job == 'taxi'  then
			taxi = taxi + 1
		elseif v.job == 'tamasakv2'  then
			tamasakv2 = tamasakv2 + 1
		elseif v.job == 'guerrero' then
			guerrero = guerrero + 1
		elseif v.job == 'cuatro'   then
			cuatro = cuatro + 1
		elseif v.job == 'government' then
			government = government + 1
		elseif v.job == 'vermillion'  then
			vermillion = vermillion + 1
		elseif v.job == 'thelost'  then
			thelost = thelost + 1
		elseif v.job == 'gordo'  then
			gordo = gordo + 1
		elseif v.job == 'magtibay'  then
			magtibay = magtibay + 1
		elseif v.job == 'gang13'  then
			gang13 = gang13 + 1
		elseif v.job == 'gang14'  then
			gang14 = gang14 + 1
		elseif v.job == 'gang15'  then
			gang15 = gang15 + 1
		elseif v.job == 'gang16'  then
			gang16 = gang16 + 1
		end

		if v.job2 == 'ambulance'  then
			ems = ems + 1
		elseif v.job2 == 'police'  then
			police = police + 1
		elseif v.job2 == 'taxi'  then
			taxi = taxi + 1
		elseif v.job2 == 'groove'  then
			groove = groove + 1
		elseif v.job2 == 'taxi'  then
			taxi = taxi + 1
		elseif v.job2 == 'tamasakv2'  then
			tamasakv2 = tamasakv2 + 1
		elseif v.job2 == 'guerrero' then
			guerrero = guerrero + 1
		elseif v.job2 == 'cuatro'   then
			cuatro = cuatro + 1
		elseif v.job2 == 'government' then
			government = government + 1
		elseif v.job2 == 'vermillion'  then
			vermillion = vermillion + 1
		elseif v.job2 == 'thelost'  then
			thelost = thelost + 1
		elseif v.job2 == 'gordo'  then
			gordo = gordo + 1
		elseif v.job2 == 'magtibay'  then
			magtibay = magtibay + 1
		elseif v.job2 == 'gang13'  then
			gang13 = gang13 + 1
		elseif v.job2 == 'gang14'  then
			gang14 = gang14 + 1
		elseif v.job2 == 'gang15'  then
			gang15 = gang15 + 1
		elseif v.job2 == 'gang16'  then
			gang16 = gang16 + 1
		end
		
	end

	if num == 1 then
		table.insert(formattedPlayerList, '</tr>')
	end

	SendNUIMessage({
		action = 'updatePlayerJobs',
		jobs   = {ems = ems, gang13 = gang13, gang14 = gang14, gang15 = gang15, gang16 = gang16,   police = police,  magtibay = magtibay,   groove = groove, taxi = taxi, tamasakv2 = tamasakv2, guerrero = guerrero, cuatro = cuatro,government = government, vermillion = vermillion, thelost = thelost,    gordo = gordo,  player_count = players}
	})

	local pingpong = nil

	ESX.TriggerServerCallback('zetka-ping', function(data)
		local deta = data
		pingpong = deta
		
		SendNUIMessage({
			action = 'updateServerInfo',
			playTime = pingpong
		})

	end)

end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if IsControlJustPressed(0, Keys['F10']) and IsInputDisabled(0) then
			ToggleScoreBoard()
		end
		if IsControlJustReleased(0, Keys['F10']) and IsInputDisabled(0) then
			ToggleScoreBoard()
		end
	end
end)

-- Close scoreboard when game is paused
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(300)

		if IsPauseMenuActive() and not IsPaused then
			IsPaused = true
			SendNUIMessage({
				action  = 'close'
			})
		elseif not IsPauseMenuActive() and IsPaused then
			IsPaused = false
		end
	end
end)

function ToggleScoreBoard()
	SendNUIMessage({
		action = 'toggle'
	})
end
