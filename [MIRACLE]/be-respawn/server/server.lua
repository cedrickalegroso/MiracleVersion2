ESX                = nil

TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)

RegisterCommand("hospital", function(src, args, raw)

	local xPlayer = ESX.GetPlayerFromId(src)

	if xPlayer["job"]["name"] == "ambulance" then

		local hospitalPlayer = args[1]
		local hospitalTime = tonumber(args[2])
		local hospitalReason = args[3]

		if GetPlayerName(hospitalPlayer) ~= nil then

			if hospitalTime ~= nil then
				HospitalPlayer(hospitalPlayer, hospitalTime)

				TriggerClientEvent("esx:showNotification", src, GetPlayerName(hospitalPlayer) .. " wait for " .. hospitalTime .. " minute(s)!")
				
				if args[3] ~= nil then
					GetRPName(hospitalPlayer, function(Firstname, Lastname)
						TriggerClientEvent('esx:showNotification', -1, Firstname.." "..Lastname.." is now in heaven. Cause of death: ".. args[3] , true , true, 20)
						--TriggerClientEvent('chat:addMessage', -1, { args = { "DOCTOR: ",  Firstname .. " " .. Lastname .. " is now in heaven. Cause of death: " .. args[3] }, color = { 249, 166, 0 } })
					end)
				end
			else
				TriggerClientEvent("esx:showNotification", src, "This time is invalid!")
			end
		else
			TriggerClientEvent("esx:showNotification", src, "This ID is not online!")
		end
	else
		TriggerClientEvent("esx:showNotification", src, "You are not a doctor!")
	end
end)

RegisterCommand("unhospital", function(src, args)

	local xPlayer = ESX.GetPlayerFromId(src)

	if xPlayer["job"]["name"] == "ambulance" then

		local hospitalPlayer = args[1]

		if GetPlayerName(hospitalPlayer) ~= nil then
			UnHospital(hospitalPlayer)
		else
			TriggerClientEvent("esx:showNotification", src, "This ID is not online!")
		end
	else
		TriggerClientEvent("esx:showNotification", src, "You are not a doctor!")
	end
end)

RegisterServerEvent("esx-axis-morgue:hospitalPlayer")
AddEventHandler("esx-axis-morgue:hospitalPlayer", function(targetSrc, hospitalTime, hospitalReason)
	local src = source
	local targetSrc = tonumber(targetSrc)

	HospitalPlayer(targetSrc, hospitalTime)
	

	GetRPName(targetSrc, function(Firstname, Lastname)
		TriggerClientEvent('esx:showNotification', -1, Firstname.." "..Lastname.." is now in heaven. Cause of death: ".. hospitalReason , true , true, 20)
		--TriggerClientEvent('chat:addMessage', -1, { args = { "DOCTOR: ",  Firstname .. " " .. Lastname .. " was sent to heaven. Cause of death: " .. hospitalReason }, color = { 249, 166, 0 } })
	end)

	TriggerClientEvent("esx:showNotification", src, GetPlayerName(targetSrc) .. " Sent to heaven for " .. hospitalTime .. " minute(s)!")
end)

RegisterServerEvent("esx-axis-morgue:unHospitalPlayer")
AddEventHandler("esx-axis-morgue:unHospitalPlayer", function(targetIdentifier)
	local src = source
	local xPlayer = ESX.GetPlayerFromIdentifier(targetIdentifier)

	if xPlayer ~= nil then
		UnHospital(xPlayer.source)
	else
		MySQL.Async.execute(
			"UPDATE users SET hospital = @newHospitalTime WHERE identifier = @identifier",
			{
				['@identifier'] = targetIdentifier,
				['@newHospitalTime'] = 0
			}
		)
	end

	TriggerClientEvent("esx:showNotification", src, xPlayer.name .. " Brought back!")
end)

RegisterServerEvent("esx-axis-morgue:updateHospitalTime")
AddEventHandler("esx-axis-morgue:updateHospitalTime", function(newHospitalTime)
	local src = source

	EditHospitalTime(src, newHospitalTime)
end)


function HospitalPlayer(hospitalPlayer, hospitalTime)
	TriggerClientEvent("esx-axis-morgue:hospitalPlayer", hospitalPlayer, hospitalTime)

	EditHospitalTime(hospitalPlayer, hospitalTime)
end

function UnHospital(hospitalPlayer)
	TriggerClientEvent("esx-axis-morgue:unHospitalPlayer", hospitalPlayer)

	EditHospitalTime(hospitalPlayer, 0)
end

function EditHospitalTime(source, hospitalTime)

	local src = source

	local xPlayer = ESX.GetPlayerFromId(src)
	local Identifier = xPlayer.identifier

	MySQL.Async.execute(
       "UPDATE users SET hospital = @newHospitalTime WHERE identifier = @identifier",
        {
			['@identifier'] = Identifier,
			['@newHospitalTime'] = tonumber(hospitalTime)
		}
	)
end

function GetRPName(playerId, data)
	local Identifier = ESX.GetPlayerFromId(playerId).identifier

	MySQL.Async.fetchAll("SELECT firstname, lastname FROM users WHERE identifier = @identifier", { ["@identifier"] = Identifier }, function(result)

		data(result[1].firstname, result[1].lastname)

	end)
end

ESX.RegisterServerCallback("esx-axis-morgue:retrieveHospitaledPlayers", function(source, cb)
	
	local hospitaledPersons = {}

	MySQL.Async.fetchAll("SELECT firstname, lastname, hospital, identifier FROM users WHERE hospital > @hospital", { ["@hospital"] = 0 }, function(result)

		for i = 1, #result, 1 do
			table.insert(hospitaledPersons, { name = result[i].firstname .. " " .. result[i].lastname, hospitalTime = result[i].hospital, identifier = result[i].identifier })
		end

		cb(hospitaledPersons)
	end)
end)

ESX.RegisterServerCallback("esx-axis-morgue:retrieveHospitalTime", function(source, cb)

	local src = source

	local xPlayer = ESX.GetPlayerFromId(src)
	local Identifier = xPlayer.identifier


	MySQL.Async.fetchAll("SELECT hospital FROM users WHERE identifier = @identifier", { ["@identifier"] = Identifier }, function(result)

		local HospitalTime = tonumber(result[1].hospital)

		if HospitalTime > 0 then

			cb(true, HospitalTime)
		else
			cb(false, 0)
		end

	end)
end)

ESX.RegisterServerCallback('esx-axis-morgue:removeItemsAfterRPDeath', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerLoadout = {}

	if Config.RemoveWeaponsAfterRPDeath then
		for i = 1, #xPlayer.loadout, 1 do
			if Config.VIPWeapons[xPlayer.loadout[i].name] == nil then
				xPlayer.removeWeapon(xPlayer.loadout[i].name)
			else
				table.insert(playerLoadout, xPlayer.loadout[i])

				Citizen.CreateThread(function()
					Citizen.Wait(5000)

					for i = 1, #playerLoadout, 1 do
						if playerLoadout[i].label then
							xPlayer.addWeapon(playerLoadout[i].name, playerLoadout[i].ammo)
						end
					end
				end)
			end
		end
	else
		for i = 1, #xPlayer.loadout, 1 do
			table.insert(playerLoadout, xPlayer.loadout[i])
		end

		Citizen.CreateThread(function()
			Citizen.Wait(5000)

			for i = 1, #playerLoadout, 1 do
				if playerLoadout[i].label ~= nil then
					xPlayer.addWeapon(playerLoadout[i].name, playerLoadout[i].ammo)
				end
			end
		end)
	end

	cb()
end)