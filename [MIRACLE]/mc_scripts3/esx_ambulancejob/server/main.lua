ESX = nil

ConfigAMBU                            = {}

ConfigAMBU.DrawDistance               = 100.0

ConfigAMBU.Marker                     = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }

ConfigAMBU.ReviveReward               = 0  -- revive reward, set to 0 if you don't want it enabled
ConfigAMBU.AntiCombatLog              = true -- enable anti-combat logging?
ConfigAMBU.LoadIpl                    = true
ConfigAMBU.Locale = 'en'

local second = 1000
local minute = 60 * second

ConfigAMBU.EarlyRespawnTimer          = 15 * minute  -- Time til respawn is available
ConfigAMBU.BleedoutTimer              = 15 * minute -- Time til the player bleeds out

ConfigAMBU.EnablePlayerManagement     = true

ConfigAMBU.RemoveWeaponsAfterRPDeath  = true
ConfigAMBU.RemoveCashAfterRPDeath     = false
ConfigAMBU.RemoveItemsAfterRPDeath    = true

-- Let the player pay for respawning early, only if he can afford it.
ConfigAMBU.EarlyRespawnFine           = false
ConfigAMBU.EarlyRespawnFineAmount     = 20000

ConfigAMBU.RespawnPoint = { coords = vector3(320.052, -593.575, 43.292), heading = 93.42} -- pillbox
ConfigAMBU.Hospitals = {

	PillBoxHospital = {

		Blip = {
			coords = vector3( 297.895, -584.094, 43.261), --pillbox
			sprite = 61,
			scale  = 0.7,
			color  = 2
		},

		AmbulanceActions = {
			vector3(334.89, -594.22, 43.28)
		},

		Pharmacies = {
			vector3(311.38, -565.0, 43.28) --pillbox
		},

	
		Vehicles = {
			{
				Spawner = vector3(297.12,-587.512,43.261), --pillbox
				InsideShop = vector3(289.532,-584.539, 42.832), --pillbox
				Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true },
				SpawnPoints = { -- all pillbox
					{ coords = vector3(292.516,-609.973,43.042), heading = 68.186, radius = 4.0 }, 
					{ coords = vector3(287.627,-589.442,42.813), heading = 342.019, radius = 4.0 },
					{ coords = vector3(291.625,-571.292, 42.853), heading = 69.296, radius = 6.0 }
				}
			}
		},
		Helicopters = {
			{
				Spawner = vector3(341.69, -593.71, 74.17),
				InsideShop = vector3(315.57, -576.8, 94.48),
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(351.27, -588.63, 74.17), heading = 252.42, radius = 10.0 },
					--{ coords = vector3(299.5, -1453.2, 46.5), heading = 142.7, radius = 10.0 }
				}
			}
		},

		FastTravels = {
			{
				From = vector3(327.1, -603.6, 43.28),
				To = { coords = vector3(342.05, -592.98, 74.17), heading = 305.1 },
				Marker = { type = 27, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, rotate = false }
			},

			{
				From = vector3(339.2, -584.13, 74.17),
				To = { coords = vector3(330.15, -601.21, 43.28), heading = 74.31 },
				Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, rotate = false }
			},

			{
				From = vector3(247.3, -1371.5, 23.5),
				To = { coords = vector3(333.1, -1434.9, 45.5), heading = 138.6 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, rotate = false }
			},

			{
				From = vector3(335.5, -1432.0, 45.50),
				To = { coords = vector3(249.1, -1369.6, 23.5), heading = 0.0 },
				Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, rotate = false }
			},

			{
				From = vector3(234.5, -1373.7, 20.9),
				To = { coords = vector3(320.9, -1478.6, 28.8), heading = 0.0 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, rotate = false }
			},

			{
				From = vector3(317.9, -1476.1, 28.9),
				To = { coords = vector3(238.6, -1368.4, 23.5), heading = 0.0 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, rotate = false }
			}
			
		},

		FastTravelsPrompt = {
			{
				From = vector3(332.227, -595.82, 43.28),
				To = { coords = vector3(280.07, -1348.97, 24.54), heading = 319.7 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, rotate = false },
				Prompt = _U('fast_travel')
			},

			{
				From = vector3(280.07, -1348.97, 24.54),
				To = { coords = vector3(332.227, -595.82, 43.28), heading = 160.55 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, rotate = false },
				Prompt = _U('fast_travel')
			}
		}

	}
}

ConfigAMBU.AuthorizedVehicles = {

	ambulance = {
		{ model = 'ambulance', label = 'Sports', price = 20000 },
		--	{ model = 'motobmw', label = 'EMS Bike', price = 20000 },
		--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			
		},
		ems = {
			{ model = 'ambulance', label = 'Sports', price = 20000 },
		--	{ model = 'motobmw', label = 'EMS Bike', price = 20000 },
		--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			
		},
		sr_ems = {
			{ model = 'ambulance', label = 'Sports', price = 20000 },
		--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			
		},
		emt = {
		--	{ model = 'POLICET', label = 'Sports', price = 20000 },
			{ model = 'ambulance', label = 'Sports', price = 20000 },
		--	{ model = 'motobmw', label = 'EMS Bike', price = 20000 },
		--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			
		},
		sr_emt = {
		--	{ model = 'POLICET', label = 'Sports', price = 20000 },
			{ model = 'dodgeems', label = 'Sports', price = 20000 },
			{ model = 'ambulance', label = 'Sports', price = 20000 },
		--	{ model = 'motobmw', label = 'EMS Bike', price = 20000 },
		--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			
		},
		paramedic = {
		--	{ model = 'POLICET', label = 'Sports', price = 20000 },
			{ model = 'dodgeems', label = 'Sports', price = 20000 },
			{ model = 'ambulance', label = 'Sports', price = 20000 },
		--	{ model = 'motobmw', label = 'EMS Bike', price = 20000 },
		--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			
		},
		sr_paramedic = {
		--	{ model = 'POLICET', label = 'Sports', price = 20000 },
			{ model = 'dodgeems', label = 'Sports', price = 20000 },
			{ model = 'ambulance', label = 'Sports', price = 20000 },
		--	{ model = 'motobmw', label = 'EMS Bike', price = 20000 },
		--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			
		},
		nurse = {
		--	{ model = 'POLICET', label = 'Sports', price = 20000 },
		{ model = 'dodgeems', label = 'Sports', price = 20000 },
		{ model = 'ambulance', label = 'Sports', price = 20000 },
		--		{ model = 'motobmw', label = 'EMS Bike', price = 20000 },
			--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			--{ model = 'rmodpolice', label = 'Sports', price = 20000 }
			
		},
		head_nurse = {
		--	{ model = 'POLICET', label = 'Sports', price = 20000 },
		{ model = 'dodgeems', label = 'Sports', price = 20000 },
		{ model = 'ambulance', label = 'Sports', price = 20000 },
		--		{ model = 'motobmw', label = 'EMS Bike', price = 20000 },
			--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			--{ model = 'rmodpolice', label = 'Sports', price = 20000 }
		},
		doctor = {
		--	{ model = 'POLICET', label = 'Sports', price = 20000 },
		{ model = 'dodgeems', label = 'Sports', price = 20000 },
		{ model = 'ambulance', label = 'Sports', price = 20000 },
		--		{ model = 'motobmw', label = 'EMS Bike', price = 20000 },
			--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			{ model = 'rmodpolice', label = 'Sports', price = 20000 }
		},
		chief_doctor = {
		--	{ model = 'POLICET', label = 'Sports', price = 20000 },
		{ model = 'dodgeems', label = 'Sports', price = 20000 },
		{ model = 'ambulance', label = 'Sports', price = 20000 },
		--		{ model = 'motobmw', label = 'EMS Bike', price = 20000 },
			--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			{ model = 'rmodpolice', label = 'Sports', price = 20000 }
			
		},
		assist_Director = {
		--	{ model = 'POLICET', label = 'Sports', price = 20000 },
		{ model = 'dodgeems', label = 'Sports', price = 20000 },
		{ model = 'ambulance', label = 'Sports', price = 20000 },
		--		{ model = 'motobmw', label = 'EMS Bike', price = 20000 },
			--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			{ model = 'rmodpolice', label = 'Sports', price = 20000 }
			
		},
		director = {
		--	{ model = 'POLICET', label = 'Sports', price = 20000 },
		{ model = 'dodgeems', label = 'Sports', price = 20000 },
		{ model = 'ambulance', label = 'Sports', price = 20000 },
		--		{ model = 'motobmw', label = 'EMS Bike', price = 20000 },
			--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			{ model = 'rmodpolice', label = 'Sports', price = 20000 }
			
		},
	
		boss = {
		--	{ model = 'POLICET', label = 'Sports', price = 20000 },
			{ model = 'dodgeems', label = 'Sports', price = 20000 },
			{ model = 'ambulance', label = 'Sports', price = 20000 },
	--		{ model = 'motobmw', label = 'EMS Bike', price = 20000 },
		--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
		{ model = 'rmodpolice', label = 'Sports', price = 20000 }
		},
	

}

ConfigAMBU.AuthorizedHelicopters = {

	ambulance = {},



	paramedic = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 100000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }

	},

	sr_paramedic = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 100000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }

	},

	nurse = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 100000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }

	},

	head_nurse = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 100000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }

	},

	doctor = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 100000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }
	
	},

	chief_doctor = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 100000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }

	},

	assist_Director = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 100000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }

	},

	director = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 100000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }

	},

	boss = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 100000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }

	}
}


TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)

RegisterServerEvent('esx_ambulancejob:reRETROvive')
AddEventHandler('esx_ambulancejob:reRETROvive', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'ambulance' then
		xPlayer.addMoney(500)
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You earned 500 pesos for reviving a patient keep it up!'})

		TriggerClientEvent('esx_ambulancejob:reRETROvive', target)
	else
		print(('esx_ambulancejob: %s attempted to revive!'):format(xPlayer.identifier))
	end
end)

RegisterServerEvent('esx_ambulancejob:heal')
AddEventHandler('esx_ambulancejob:heal', function(target, type)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'ambulance' then
		TriggerClientEvent('esx_ambulancejob:heal', target, type)
	else
		print(('esx_ambulancejob: %s attempted to heal!'):format(xPlayer.identifier))
	end
end)

RegisterServerEvent('esx_ambulancejob:putInVehicle')
AddEventHandler('esx_ambulancejob:putInVehicle', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'ambulance' then
		TriggerClientEvent('esx_ambulancejob:putInVehicle', target)
	else
		print(('esx_ambulancejob: %s attempted to put in vehicle!'):format(xPlayer.identifier))
	end
end)

TriggerEvent('esx_phone:registerNumber', 'ambulance', _U('alert_ambulance'), true, true)

TriggerEvent('esx_society:registerSociety', 'ambulance', 'Ambulance', 'society_ambulance', 'society_ambulance', 'society_ambulance', {type = 'public'})

ESX.RegisterServerCallback('esx_ambulancejob:removeItemsAfterRPDeath', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)

	if ConfigAMBU.RemoveCashAfterRPDeath then
		if xPlayer.getMoney() > 0 then
			xPlayer.removeMoney(xPlayer.getMoney())
		end

		if xPlayer.getAccount('black_money').money > 0 then
			xPlayer.setAccountMoney('black_money', 0)
		end
	end

	if ConfigAMBU.RemoveItemsAfterRPDeath then
		for i=1, #xPlayer.inventory, 1 do
			if xPlayer.inventory[i].count > 0 then
				xPlayer.setInventoryItem(xPlayer.inventory[i].name, 0)
			end
		end
	end

	local playerLoadout = {}
	if ConfigAMBU.RemoveWeaponsAfterRPDeath then
		for i=1, #xPlayer.loadout, 1 do
			xPlayer.removeWeapon(xPlayer.loadout[i].name)
		end
	else -- save weapons & restore em' since spawnmanager removes them
		for i=1, #xPlayer.loadout, 1 do
			table.insert(playerLoadout, xPlayer.loadout[i])
		end

		-- give back wepaons after a couple of seconds
		Citizen.CreateThread(function()
			Citizen.Wait(5000)
			for i=1, #playerLoadout, 1 do
				if playerLoadout[i].label ~= nil then
					xPlayer.addWeapon(playerLoadout[i].name, playerLoadout[i].ammo)
				end
			end
		end)
	end

	cb()
end)

if ConfigAMBU.EarlyRespawnFine then
	ESX.RegisterServerCallback('esx_ambulancejob:checkBalance', function(source, cb)
		local xPlayer = ESX.GetPlayerFromId(source)
		local bankBalance = xPlayer.getAccount('bank').money

		cb(bankBalance >= ConfigAMBU.EarlyRespawnFineAmount)
	end)

	RegisterServerEvent('esx_ambulancejob:payFine')
	AddEventHandler('esx_ambulancejob:payFine', function()
		local xPlayer = ESX.GetPlayerFromId(source)
		local fineAmount = ConfigAMBU.EarlyRespawnFineAmount

		TriggerClientEvent('esx:showNotification', xPlayer.source, _U('respawn_bleedout_fine_msg', ESX.Math.GroupDigits(fineAmount)))
		xPlayer.removeAccountMoney('bank', fineAmount)
	end)
end

ESX.RegisterServerCallback('esx_ambulancejob:getItemAmount', function(source, cb, item)
	local xPlayer = ESX.GetPlayerFromId(source)
	local quantity = xPlayer.getInventoryItem(item).count

	cb(quantity)
end)

ESX.RegisterServerCallback('esx_ambulancejob:buyJobVehicle', function(source, cb, vehicleProps, type)
	local xPlayer = ESX.GetPlayerFromId(source)
	local price = getPriceFromHash(vehicleProps.model, xPlayer.job.grade_name, type)

	-- vehicle model not found
	if price == 0 then
		cb(false)
	else
		if xPlayer.getMoney() >= price then
			xPlayer.removeMoney(price)

			MySQL.Async.execute('INSERT INTO owned_vehicles (owner, vehicle, plate, type, job, `stored`) VALUES (@owner, @vehicle, @plate, @type, @job, @stored)', {
				['@owner'] = xPlayer.identifier,
				['@vehicle'] = json.encode(vehicleProps),
				['@plate'] = vehicleProps.plate,
				['@type'] = type,
				['@job'] = xPlayer.job.name,
				['@stored'] = true
			}, function (rowsChanged)
				cb(true)
			end)
		else
			cb(false)
		end
	end
end)

ESX.RegisterServerCallback('esx_ambulancejob:storeNearbyVehicle', function(source, cb, nearbyVehicles)
	local xPlayer = ESX.GetPlayerFromId(source)
	local foundPlate, foundNum

	for k,v in ipairs(nearbyVehicles) do
		local result = MySQL.Sync.fetchAll('SELECT plate FROM owned_vehicles WHERE owner = @owner AND plate = @plate AND job = @job', {
			['@owner'] = xPlayer.identifier,
			['@plate'] = v.plate,
			['@job'] = xPlayer.job.name
		})

		if result[1] then
			foundPlate, foundNum = result[1].plate, k
			break
		end
	end

	if not foundPlate then
		cb(false)
	else
		MySQL.Async.execute('UPDATE owned_vehicles SET `stored` = true WHERE owner = @owner AND plate = @plate AND job = @job', {
			['@owner'] = xPlayer.identifier,
			['@plate'] = foundPlate,
			['@job'] = xPlayer.job.name
		}, function (rowsChanged)
			if rowsChanged == 0 then
				cb(false)
			else
				cb(true, foundNum)
			end
		end)
	end
end)

function getPriceFromHash(hashKey, jobGrade, type)
	if type == 'helicopter' then
		local vehicles = ConfigAMBU.AuthorizedHelicopters[jobGrade]

		for k,v in ipairs(vehicles) do
			if GetHashKey(v.model) == hashKey then
				return v.price
			end
		end
	elseif type == 'car' then
		local vehicles = ConfigAMBU.AuthorizedVehicles[jobGrade]

		for k,v in ipairs(vehicles) do
			if GetHashKey(v.model) == hashKey then
				return v.price
			end
		end
	end

	return 0
end

RegisterServerEvent('esx_ambulancejob:removeItem')
AddEventHandler('esx_ambulancejob:removeItem', function(item)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeInventoryItem(item, 1)

	if item == 'bandage' then
		TriggerClientEvent('esx:showNotification', _source, _U('used_bandage'))
	elseif item == 'medikit' then
		TriggerClientEvent('esx:showNotification', _source, _U('used_medikit'))
	end
end)

RegisterNetEvent('esx_ambulancejob:giveItem')
AddEventHandler('esx_ambulancejob:giveItem', function(itemName, amount)
	local xPlayer = ESX.GetPlayerFromId(source)

	



	local itemcounter = xPlayer.getInventoryItem(itemName)
	print(itemName) 
	
	if  itemcounter.count >= 20 then 
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You already have enough' })
	else 
		xPlayer.addInventoryItem(itemName, amount)
		
	end

		
--	else
	--	xPlayer.showNotification(_U('max_item'))
	--end
end)

TriggerEvent('es:addGroupCommand', 'revive', 'admin', function(source, args, user)
	if args[1] ~= nil then
		if GetPlayerName(tonumber(args[1])) ~= nil then
			print(('esx_ambulancejob: %s used admin revive'):format(GetPlayerIdentifiers(source)[1]))
			TriggerClientEvent('esx_ambulancejob:reRETROvive', tonumber(args[1]))
		end
	else
		TriggerClientEvent('esx_ambulancejob:reRETROvive', source)
	end
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, { help = _U('revive_help'), params = {{ name = 'id' }} })


TriggerEvent('es:addGroupCommand', 'revive', 'moderator', function(source, args, user)
	if args[1] ~= nil then
		if GetPlayerName(tonumber(args[1])) ~= nil then
			print(('esx_ambulancejob: %s used admin revive'):format(GetPlayerIdentifiers(source)[1]))
			TriggerClientEvent('esx_ambulancejob:reRETROvive', tonumber(args[1]))
		end
	else
		TriggerClientEvent('esx_ambulancejob:reRETROvive', source)
	end
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, { help = _U('revive_help'), params = {{ name = 'id' }} })

ESX.RegisterUsableItem('medikit', function(source)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('medikit', 1)

	TriggerClientEvent('esx_ambulancejob:heal', _source, 'big')
	TriggerClientEvent('esx:showNotification', _source, _U('used_medikit'))
end)

ESX.RegisterUsableItem('bandage', function(source)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('bandage', 1)

	TriggerClientEvent('esx_ambulancejob:heal', _source, 'small')
	TriggerClientEvent('esx:showNotification', _source, _U('used_bandage'))
end)

ESX.RegisterUsableItem('bandage2', function(source)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('bandage2', 1)

	TriggerClientEvent('esx_ambulancejob:heal2', _source, 'small')
	--TriggerClientEvent('esx:showNotification', _source, _U('used_bandage'))
end)

ESX.RegisterServerCallback('esx_ambulancejob:getDeathStatus', function(source, cb)
	local identifier = GetPlayerIdentifiers(source)[1]

	MySQL.Async.fetchScalar('SELECT is_dead FROM users WHERE identifier = @identifier', {
		['@identifier'] = identifier
	}, function(isDead)
		if isDead then
			print(('esx_ambulancejob: %s attempted combat logging!'):format(identifier))
		end

		cb(isDead)
	end)
end)

RegisterServerEvent('esx_ambulancejob:setDeathStatus')
AddEventHandler('esx_ambulancejob:setDeathStatus', function(isDead)
	local identifier = GetPlayerIdentifiers(source)[1]

	MySQL.Sync.execute('UPDATE users SET is_dead = @isDead WHERE identifier = @identifier', {
		['@identifier'] = identifier,
		['@isDead']     = isDead
	})
end)
