Keys = {
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
			coords = vector3( 354.54, -1416.71, 32.261), --pillbox
			sprite = 61,
			scale  = 0.7,
			color  = 2
		},

		AmbulanceActions = {
			vector3(366.75, -1419.63, 32.51)
		},

		Pharmacies = {
			vector3(362.3, -1417.0, 32.51) --pillbox
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


local FirstSpawn, PlayerLoaded = true, false

IsDead = false
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(0)
	end

	PlayerLoaded = true
	ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
	PlayerLoaded = true
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

AddEventHandler('playerSpawned', function()
	IsDead = false

	if FirstSpawn then
		exports.spawnmanager:setAutoSpawn(false) -- disable respawn
		FirstSpawn = false

		ESX.TriggerServerCallback('esx_ambulancejob:getDeathStatus', function(isDead)
			if isDead and ConfigAMBU.AntiCombatLog then
				while not PlayerLoaded do
					Citizen.Wait(1000)
				end

				--ESX.ShowNotification(_U('combatlog_message'))
				exports['mythic_notify']:DoCustomHudText('inform', _U('combatlog_message'), 5000)
				RemoveItemsAfterRPDeath()
			end
		end)
	end
end)

-- Create blips
Citizen.CreateThread(function()
	for k,v in pairs(ConfigAMBU.Hospitals) do
		local blip = AddBlipForCoord(v.Blip.coords)

		SetBlipSprite(blip, v.Blip.sprite)
		SetBlipScale(blip, v.Blip.scale)
		SetBlipColour(blip, v.Blip.color)
		SetBlipAsShortRange(blip, true)

		BeginTextCommandSetBlipName('STRING')
		AddTextComponentSubstringPlayerName(_U('hospital'))
		EndTextCommandSetBlipName(blip)
	end
end)

-- Disable most inputs when dead
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if IsDead then
			DisableAllControlActions(0)
			EnableControlAction(0, Keys['G'], true)
			EnableControlAction(0, Keys['T'], true)
			EnableControlAction(0, Keys['E'], true)
			EnableControlAction(0, Keys['H'], true)
		else
			Citizen.Wait(500)
		end
	end
end)

function OnPlayerDeath()
	IsDead = true
	local second = 1000
	Citizen.CreateThread(function()
		repeat
			Citizen.Wait(300 * second)
			ClearPedTasksImmediately(GetPlayerPed(-1))
		until IsDead == false
	end)
		
	ESX.UI.Menu.CloseAll()
	TriggerServerEvent('esx_ambulancejob:setDeathStatus', true)

	StartDeathTimer()
	StartDistressSignal()

	ClearPedTasksImmediately(GetPlayerPed(-1))
	StartScreenEffect('DeathFailOut', 0, false)
end

RegisterNetEvent('esx_ambulancejob:useItem')
AddEventHandler('esx_ambulancejob:useItem', function(itemName)
	ESX.UI.Menu.CloseAll()

	if itemName == 'medikit' then
		local lib, anim = 'anim@heists@narcotics@funding@gang_idle', 'gang_chatting_idle01' -- TODO better animations
		local playerPed = PlayerPedId()

		ESX.Streaming.RequestAnimDict(lib, function()
			TaskPlayAnim(playerPed, lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)

			Citizen.Wait(500)
			while IsEntityPlayingAnim(playerPed, lib, anim, 3) do
				Citizen.Wait(0)
				DisableAllControlActions(0)
			end
	
			TriggerEvent('esx_ambulancejob:heal', 'big', true)
			--ESX.ShowNotification(_U('used_medikit'))
			exports['mythic_notify']:DoCustomHudText('inform', _U('used_medikit'), 5000)
		end)

	elseif itemName == 'bandage' then
		local lib, anim = 'anim@heists@narcotics@funding@gang_idle', 'gang_chatting_idle01' -- TODO better animations
		local playerPed = PlayerPedId()

		ESX.Streaming.RequestAnimDict(lib, function()
			TaskPlayAnim(playerPed, lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)

			Citizen.Wait(500)
			while IsEntityPlayingAnim(playerPed, lib, anim, 3) do
				Citizen.Wait(0)
				DisableAllControlActions(0)
			end

			TriggerEvent('esx_ambulancejob:heal', 'small', true)
			--ESX.ShowNotification(_U('used_bandage'))
			exports['mythic_notify']:DoCustomHudText('inform', _U('used_bandage'), 5000)
		end)
	end
end)

function StartDistressSignal()
	Citizen.CreateThread(function()
		local timer = ConfigAMBU.BleedoutTimer

		while timer > 0 and IsDead do
			Citizen.Wait(2)
			timer = timer - 30

			SetTextFont(4)
			SetTextScale(0.45, 0.45)
			SetTextColour(185, 185, 185, 255)
			SetTextDropshadow(0, 0, 0, 0, 255)
			SetTextEdge(1, 0, 0, 0, 255)
			SetTextDropShadow()
			SetTextOutline()
			BeginTextCommandDisplayText('STRING')
			AddTextComponentSubstringPlayerName(_U('distress_send'))
			EndTextCommandDisplayText(0.175, 0.805)

			if IsControlPressed(0, Keys['G']) then
				SendDistressSignal()

				Citizen.CreateThread(function()
					Citizen.Wait(1000 * 60 * 5)
					if IsDead then
						StartDistressSignal()
					end
				end)

				break
			end
		end
	end)
end

function SendDistressSignal()
	local playerPed = PlayerPedId()
	PedPosition		= GetEntityCoords(playerPed)
	
	local PlayerCoords = { x = PedPosition.x, y = PedPosition.y, z = PedPosition.z }

	--ESX.ShowNotification(_U('distress_sent'))
	exports['mythic_notify']:DoCustomHudText('inform', _U('distress_sent'), 5000)

    TriggerServerEvent('esx_addons_gcphone:startCall', 'ambulance', _U('distress_message'), PlayerCoords, {

		PlayerCoords = { x = PedPosition.x, y = PedPosition.y, z = PedPosition.z },
	})
end

function DrawGenericTextThisFrame()
	SetTextFont(4)
	SetTextScale(0.0, 0.5)
	SetTextColour(255, 255, 255, 255)
	SetTextDropshadow(0, 0, 0, 0, 255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextCentre(true)
end

function secondsToClock(seconds)
	local seconds, hours, mins, secs = tonumber(seconds), 0, 0, 0

	if seconds <= 0 then
		return 0, 0
	else
		local hours = string.format("%02.f", math.floor(seconds / 3600))
		local mins = string.format("%02.f", math.floor(seconds / 60 - (hours * 60)))
		local secs = string.format("%02.f", math.floor(seconds - hours * 3600 - mins * 60))

		return mins, secs
	end
end

function StartDeathTimer()
	local canPayFine = false

	if ConfigAMBU.EarlyRespawnFine then
		ESX.TriggerServerCallback('esx_ambulancejob:checkBalance', function(canPay)
			canPayFine = canPay
		end)
	end

	local earlySpawnTimer = ESX.Math.Round(ConfigAMBU.EarlyRespawnTimer / 1000)
	local bleedoutTimer = ESX.Math.Round(ConfigAMBU.BleedoutTimer / 1000)

	Citizen.CreateThread(function()
		-- early respawn timer
		while earlySpawnTimer > 0 and IsDead do
			Citizen.Wait(1000)

			if earlySpawnTimer > 0 then
				earlySpawnTimer = earlySpawnTimer - 1
			end
		end

		-- bleedout timer
		while bleedoutTimer > 0 and IsDead do
			Citizen.Wait(1000)

			if bleedoutTimer > 0 then
				bleedoutTimer = bleedoutTimer - 1
			end
		end
	end)

	Citizen.CreateThread(function()
		local text, timeHeld

		-- early respawn timer
		while earlySpawnTimer > 0 and IsDead do
			Citizen.Wait(0)
			text = _U('respawn_available_in', secondsToClock(earlySpawnTimer))

			DrawGenericTextThisFrame()

			SetTextEntry("STRING")
			AddTextComponentString(text)
			DrawText(0.5, 0.8)
		end

		-- bleedout timer
		while bleedoutTimer > 0 and IsDead do
			Citizen.Wait(0)
			text = _U('respawn_bleedout_in', secondsToClock(bleedoutTimer))

			if not ConfigAMBU.EarlyRespawnFine then
				text = text .. _U('respawn_bleedout_prompt')

				if IsControlPressed(0, Keys['E']) and timeHeld > 60 then
					RemoveItemsAfterRPDeath()
					break
				end
			elseif ConfigAMBU.EarlyRespawnFine and canPayFine then
				text = text .. _U('respawn_bleedout_fine', ESX.Math.GroupDigits(ConfigAMBU.EarlyRespawnFineAmount))

				if IsControlPressed(0, Keys['E']) and timeHeld > 60 then
					TriggerServerEvent('esx_ambulancejob:payFine')
					RemoveItemsAfterRPDeath()
					break
				end
			end

			if IsControlPressed(0, Keys['E']) then
				timeHeld = timeHeld + 1
			else
				timeHeld = 0
			end

			DrawGenericTextThisFrame()

			SetTextEntry("STRING")
			AddTextComponentString(text)
			DrawText(0.5, 0.8)
		end
			
		if bleedoutTimer < 1 and IsDead then
			RemoveItemsAfterRPDeath()
		end
	end)
end

function RemoveItemsAfterRPDeath()
	TriggerServerEvent('esx_ambulancejob:setDeathStatus', false)

	Citizen.CreateThread(function()
		DoScreenFadeOut(800)

		while not IsScreenFadedOut() do
			Citizen.Wait(10)
		end

		ESX.TriggerServerCallback('esx_ambulancejob:removeItemsAfterRPDeath', function()
			local playerpos = GetEntityCoords( GetPlayerPed(-1) )
				
			ESX.SetPlayerData('lastPosition', playerpos)
			ESX.SetPlayerData('loadout', {})
			RespawnPed(PlayerPedId(), playerpos, ConfigAMBU.RespawnPoint.heading)

			TriggerServerEvent('esx:updateLastPosition', playerpos)
			TriggerServerEvent('mythic_hospital:server:RequestBed')
			Citizen.Wait(10)
			StopScreenEffect('DeathFailOut')
			DoScreenFadeIn(800)
		end)
	end)
end


function RespawnPed(ped, coords, heading)
	SetEntityCoordsNoOffset(ped, coords.x, coords.y, coords.z, false, false, false, true)
	NetworkResurrectLocalPlayer(coords.x, coords.y, coords.z, heading, true, false)
	SetPlayerInvincible(ped, false)
	TriggerEvent('playerSpawned', coords.x, coords.y, coords.z)
	ClearPedBloodDamage(ped)

	ESX.UI.Menu.CloseAll()
end

RegisterNetEvent('esx_phone:loaded')
AddEventHandler('esx_phone:loaded', function(phoneNumber, contacts)
	local specialContact = {
		name       = 'Ambulance',
		number     = 'ambulance',
		base64Icon = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEwAACxMBAJqcGAAABp5JREFUWIW1l21sFNcVhp/58npn195de23Ha4Mh2EASSvk0CPVHmmCEI0RCTQMBKVVooxYoalBVCVokICWFVFVEFeKoUdNECkZQIlAoFGMhIkrBQGxHwhAcChjbeLcsYHvNfsx+zNz+MBDWNrYhzSvdP+e+c973XM2cc0dihFi9Yo6vSzN/63dqcwPZcnEwS9PDmYoE4IxZIj+ciBb2mteLwlZdfji+dXtNU2AkeaXhCGteLZ/X/IS64/RoR5mh9tFVAaMiAldKQUGiRzFp1wXJPj/YkxblbfFLT/tjq9/f1XD0sQyse2li7pdP5tYeLXXMMGUojAiWKeOodE1gqpmNfN2PFeoF00T2uLGKfZzTwhzqbaEmeYWAQ0K1oKIlfPb7t+7M37aruXvEBlYvnV7xz2ec/2jNs9kKooKNjlksiXhJfLqf1PXOIU9M8fmw/XgRu523eTNyhhu6xLjbSeOFC6EX3t3V9PmwBla9Vv7K7u85d3bpqlwVcvHn7B8iVX+IFQoNKdwfstuFtWoFvwp9zj5XL7nRlPXyudjS9z+u35tmuH/lu6dl7+vSVXmDUcpbX+skP65BxOOPJA4gjDicOM2PciejeTwcsYek1hyl6me5nhNnmwPXBhjYuGC699OpzoaAO0PbYJSy5vgt4idOPrJwf6QuX2FO0oOtqIgj9pDU5dCWrMlyvXf86xsGgHyPeLos83Brns1WFXLxxgVBorHpW4vfQ6KhkbUtCot6srns1TLPjNVr7+1J0PepVc92H/Eagkb7IsTWd4ZMaN+yCXv5zLRY9GQ9xuYtQz4nfreWGdH9dNlkfnGq5/kdO88ekwGan1B3mDJsdMxCqv5w2Iq0khLs48vSllrsG/Y5pfojNugzScnQXKBVA8hrX51ddHq0o6wwIlgS8Y7obZdUZVjOYLC6e3glWkBBVHC2RJ+w/qezCuT/2sV6Q5VYpowjvnf/iBJJqvpYBgBS+w6wVB5DLEOiTZHWy36nNheg0jUBs3PoJnMfyuOdAECqrZ3K7KcACGQp89RAtlysCphqZhPtRzYlcPx+ExklJUiq0le5omCfOGFAYn3qFKS/fZAWS7a3Y2wa+GJOEy4US+B3aaPUYJamj4oI5LA/jWQBt5HIK5+JfXzZsJVpXi/ac8+mxWIXWzAG4Wb4g/jscNMp63I4U5FcKaVvsNyFALokSA47Kx8PVk83OabCHZsiqwAKEpjmfUJIkoh/R+L9oTpjluhRkGSPG4A7EkS+Y3HZk0OXYpIVNy01P5yItnptDsvtIwr0SunqoVP1GG1taTHn1CloXm9aLBEIEDl/IS2W6rg+qIFEYR7+OJTesqJqYa95/VKBNOHLjDBZ8sDS2998a0Bs/F//gvu5Z9NivadOc/U3676pEsizBIN1jCYlhClL+ELJDrkobNUBfBZqQfMN305HAgnIeYi4OnYMh7q/AsAXSdXK+eH41sykxd+TV/AsXvR/MeARAttD9pSqF9nDNfSEoDQsb5O31zQFprcaV244JPY7bqG6Xd9K3C3ALgbfk3NzqNE6CdplZrVFL27eWR+UASb6479ULfhD5AzOlSuGFTE6OohebElbcb8fhxA4xEPUgdTK19hiNKCZgknB+Ep44E44d82cxqPPOKctCGXzTmsBXbV1j1S5XQhyHq6NvnABPylu46A7QmVLpP7w9pNz4IEb0YyOrnmjb8bjB129fDBRkDVj2ojFbYBnCHHb7HL+OC7KQXeEsmAiNrnTqLy3d3+s/bvlVmxpgffM1fyM5cfsPZLuK+YHnvHELl8eUlwV4BXim0r6QV+4gD9Nlnjbfg1vJGktbI5UbN/TcGmAAYDG84Gry/MLLl/zKouO2Xukq/YkCyuWYV5owTIGjhVFCPL6J7kLOTcH89ereF1r4qOsm3gjSevl85El1Z98cfhB3qBN9+dLp1fUTco+0OrVMnNjFuv0chYbBYT2HcBoa+8TALyWQOt/ImPHoFS9SI3WyRajgdt2mbJgIlbREplfveuLf/XXemjXX7v46ZxzPlfd8YlZ01My5MUEVdIY5rueYopw4fQHkbv7/rZkTw6JwjyalBCHur9iD9cI2mU0UzD3P9H6yZ1G5dt7Gwe96w07dl5fXj7vYqH2XsNovdTI6KMrlsAXhRyz7/C7FBO/DubdVq4nBLPaohcnBeMr3/2k4fhQ+Uc8995YPq2wMzNjww2X+vwNt1p00ynrd2yKDJAVN628sBX1hZIdxXdStU9G5W2bd9YHR5L3f/CNmJeY9G8WAAAAAElFTkSuQmCC'
	}

	TriggerEvent('esx_phone:addSpecialContact', specialContact.name, specialContact.number, specialContact.base64Icon)
end)

AddEventHandler('esx:onPlayerDeath', function(data)
	OnPlayerDeath()
end)

RegisterNetEvent('esx_ambulancejob:reRETROvive')
AddEventHandler('esx_ambulancejob:reRETROvive', function()
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)

	TriggerServerEvent('esx_ambulancejob:setDeathStatus', false)

	Citizen.CreateThread(function()
		DoScreenFadeOut(800)

		while not IsScreenFadedOut() do
			Citizen.Wait(50)
		end

		local formattedCoords = {
			x = ESX.Math.Round(coords.x, 1),
			y = ESX.Math.Round(coords.y, 1),
			z = ESX.Math.Round(coords.z, 1)
		}

		ESX.SetPlayerData('lastPosition', formattedCoords)

		TriggerServerEvent('esx:updateLastPosition', formattedCoords)

		RespawnPed(playerPed, formattedCoords, 0.0)

		StopScreenEffect('DeathFailOut')
		DoScreenFadeIn(800)
	end)
end)

-- Load unloaded IPLs
if ConfigAMBU.LoadIpl then
	Citizen.CreateThread(function()
		RequestIpl('Coroner_Int_on') -- Morgue
	end)
end
