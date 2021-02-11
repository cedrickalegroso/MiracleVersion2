-- ESX Stuff (DON'T TOUCH!!!)
ESX = nil 

Citizen.CreateThread(function() 
	while ESX == nil do 
		TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end) 
		Citizen.Wait(1) 
	end 
		PlayerData = ESX.GetPlayerData() 
end) 
 
RegisterNetEvent('esx:playerLoaded') 
AddEventHandler('esx:playerLoaded', function(xPlayer) 
	PlayerData = xPlayer 
end) 
 
RegisterNetEvent('esx:setJob') 
AddEventHandler('esx:setJob', function(job) 
	PlayerData.job = job 
end) 

--[[
Citizen.CreateThread(function()

	local hash = GetHashKey('s_m_m_paramedic_01')
	while not HasModelLoaded(hash) do
		RequestModel(hash)
		Wait(20)
	end 
	

	local ped = CreatePed(21, hash, -434.92080688477,-323.99914550781, 34.910774230957 -1, 150.0, true, true)
	FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    TaskStartScenarioInPlace(ped, 'WORLD_HUMAN_GUARD_STAND', 0, true)
end)
]]--
-- Set Ped 


-- Draw 3D text 
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		local coords = GetEntityCoords(PlayerPedId())
		for k,v in pairs(Config.Locations) do
            if GetDistanceBetweenCoords(coords, v.Coords.x, v.Coords.y, v.Coords.z, true) < Config.TextDrawDistance then
                local location = v
                DrawText3D(v.Coords.x, v.Coords.y, v.Coords.z - 1.0, _U('requestCheckIn'))
				if IsControlJustReleased(0, 38) then
					
					
					TriggerEvent("mythic_progbar:client:progress", {
						name = "unique_action_name",
						duration = 10000,
						label = "Checking in to the Hospital",
						useWhileDead = false,
						canCancel = false,
						controlDisables = {
							disableMovement = true,
							disableCarMovement = true,
							disableMouse = false,
							disableCombat = true,
						},
						animation = {
							animDict = "missheistdockssetup1clipboard@idle_a",
							anim = "idle_a",
						},
						prop = {
							model = "prop_fib_clipboard",
						}
					}, function(status)
						if not status then
							ExecuteCommand('huhuhuhuhsakitkatawanpahilot')
							Citizen.Wait(500)
							TriggerServerEvent('esx_checkin:keyPressed')
						end
					end)
					--[[
	local ped = GetPlayerPed(-1)
                	exports['pogressBar']:drawBar(5000, 'Checking in to the hospital.')
                	TaskStartScenarioInPlace(ped, 'WORLD_HUMAN_CLIPBOARD', 0, true)
                	Citizen.Wait(5000)
                    
					]]--
					
                
                end
			end
		end
	end
end)

-- 3D text function
function DrawText3D(x,y,z, text)
	local onScreen, _x, _y = World3dToScreen2d(x, y, z)
	local p = GetGameplayCamCoords()
	local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
	local scale = (1 / distance) * 2
	local fov = (1 / GetGameplayCamFov()) * 100
	local scale = scale * fov
	if onScreen then
		  SetTextScale(0.35, 0.35)
		  SetTextFont(4)
		  SetTextProportional(1)
		  SetTextColour(255, 255, 255, 215)
		  SetTextEntry("STRING")
		  SetTextCentre(1)
		  AddTextComponentString(text)
		  DrawText(_x,_y)
		  local factor = (string.len(text)) / 370
		  DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
	  end
end

-- Revive function 
function RespawnPed(ped, coords, heading)
	SetEntityCoordsNoOffset(ped, coords.x, coords.y, coords.z, false, false, false, true)
	NetworkResurrectLocalPlayer(coords.x, coords.y, coords.z, heading, true, false)
	SetPlayerInvincible(ped, false)
	TriggerEvent('playerSpawned', coords.x, coords.y, coords.z)
	ClearPedBloodDamage(ped)
	StopScreenEffect('DeathFailOut')

	ESX.UI.Menu.CloseAll()
end

-- Main Event
RegisterNetEvent('esx_checkin:checkIn')
AddEventHandler('esx_checkin:checkIn', function()
	local ped = GetPlayerPed(-1)
	local pos = GetEntityCoords(ped)
	local head = GetEntityHeading(ped)
	local chance = math.random(1,6)
	local coords1 = {
		
		x = -469.88134765625,
		y = -284.22500610352,
		z = 35.835098266602
	}
	local coords2 = {
		
		x = -466.32379150391,
		y = -283.02789306641,
		z = 35.835102081299
	}
	local coords3 = {
		
		x = -462.74481201172,
		y = -281.16720581055,
		z = 35.835048675537
	}
	local coords4 = {
		
		x = -466.93618774414,
		y = -291.25796508789,
		z = 35.835094451904
	}
	local coords5 = {
		
		x = -463.66268920898,
		y = -290.0418395996,
		z = 35.833198547363
	}
	local coords6 = {
	
		x = -460.27844238281,
		y = -288.59265136719,
		z = 35.833225250244
	}

	chance = 4
	

	-- Bed 1
	if chance == 1 then 
		RespawnPed(ped, coords1, 0.0)
		--TaskStartScenarioAtPosition(ped, 'WORLD_HUMAN_SUNBATHE_BACK', -466.97103881836,-291.20452880859,35.835048675537, 360.0, 0, false, true)
		SetEntityCoords(ped, 322.56188964844,-587.27191162109,44.203979492188, false, false, false, false)
		FreezeEntityPosition(ped, true)
		TriggerEvent("mythic_progbar:client:progress", {
			name = "unique_action_name",
			duration = 10000,
			label = "Proceeding with the surgery",
			useWhileDead = false,
			canCancel = true,
			controlDisables = {
				disableMovement = true,
				disableCarMovement = true,
				disableMouse = false,
				disableCombat = true,
			},
			animation = {
				animDict = "amb@world_human_sunbathe@male@back@base",
				anim = "base",
			},
			prop = {
				model = "",
			}
		}, function(status)
			if not status then
				--	exports['mythic_notify']:DoCustomHudText('inform', _U('notificationText1'), Config.BedTime * 1000)

				--TriggerEvent('MF_SkeletalSystem:HealBones',ped,"all");

			

		--Citizen.Wait(Config.BedTime * 1000)
		FreezeEntityPosition(ped, false) 
		ClearPedTasksImmediately(ped)
		TriggerServerEvent('esx_checkin:takeMoney')
		TriggerEvent('MF_SkeletalSystem:HealBones', "all")
		TriggerEvent('esx_basicneeds:healPlayer')
		TriggerEvent('notification', 'You have been treated by the Miracle CITY EMS.', 1)
		SetEntityCoords(ped, 322.53842163086,-585.25451660156,43.284099578857, false, false, false, false)
			end
		end)

	end
	-- Bed 2
	if chance == 2 then 
		RespawnPed(ped, coords2, 0.0)
	--	TaskStartScenarioAtPosition(ped, 'WORLD_HUMAN_SUNBATHE_BACK', 360.28, -587.48, 43.0 + 1, 360.0, 0, false, true)
	
	SetEntityCoords(ped, -470.00827026367,-284.22305297852,35.835048675537, false, false, false, false)
	FreezeEntityPosition(ped, true)
	TriggerEvent("mythic_progbar:client:progress", {
		name = "unique_action_name",
		duration = 10000,
		label = "Proceeding with the surgery",
		useWhileDead = false,
		canCancel = true,
		controlDisables = {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
		},
		animation = {
			animDict = "amb@world_human_sunbathe@male@back@base",
			anim = "base",
		},
		prop = {
			model = "",
		}
	}, function(status)
		if not status then
			--	exports['mythic_notify']:DoCustomHudText('inform', _U('notificationText1'), Config.BedTime * 1000)

	--Citizen.Wait(Config.BedTime * 1000)
	FreezeEntityPosition(ped, false) 
	ClearPedTasksImmediately(ped)
	TriggerServerEvent('esx_checkin:takeMoney')
	TriggerEvent('notification', 'You have been treated by the Miracle CITY EMS.', 1)

	--exports['mythic_notify']:DoCustomHudText('inform', _U('notificationText2'), 4000)
	SetEntityCoords(ped, -469.43270874023,-286.14797973633,34.909339904785, false, false, false, false)
		end
	end)

	end
	-- Bed 3
	if chance == 3 then 
		RespawnPed(ped, coords3, 0.0)
		--TaskStartScenarioAtPosition(ped, 'WORLD_HUMAN_SUNBATHE_BACK', 354.32, -592.72, 43.12 + 1, 360.0, 0, false, true)
		SetEntityCoords(ped, 324.27209472656,-582.79132080078,44.203971862793, false, false, false, false)
		
		--FreezeEntityPosition(ped, true)
		TriggerEvent("mythic_progbar:client:progress", {
			name = "unique_action_name",
			duration = 10000,
			label = "Proceeding with the surgery",
			useWhileDead = false,
			canCancel = true,
			controlDisables = {
				disableMovement = true,
				disableCarMovement = true,
				disableMouse = false,
				disableCombat = true,
			},
			animation = {
				animDict = "amb@world_human_sunbathe@male@back@base",
				anim = "base",
			},
			prop = {
				model = "",
			}
		}, function(status)
			if not status then
				--	exports['mythic_notify']:DoCustomHudText('inform', _U('notificationText1'), Config.BedTime * 1000)
	
		--Citizen.Wait(Config.BedTime * 1000)
		FreezeEntityPosition(ped, false) 
		ClearPedTasksImmediately(ped)
		TriggerServerEvent('esx_checkin:takeMoney')
	--	ESX.showNotification('You have been healed by the Miracle CITY EMS')
	TriggerEvent('notification', 'You have been treated by the Miracle CITY EMS.', 1)
		--TriggerClientEvent('notification', source, '')
		SetEntityCoords(ped, 323.63168334961,-584.73461914062,43.280944824219, false, false, false, false)
			end
		end)
	
	end
	-- Bed 4 
	if chance == 4 then 
		RespawnPed(ped, coords4, 0.0)
		--TaskStartScenarioAtPosition(ped, 'WORLD_HUMAN_SUNBATHE_BACK', 356.72, -585.88, 43.12 + 1, 360.0, 0, false, true)
		SetEntityCoords(ped, 322.72320556641,-587.03747558594,44.20397567749, false, false, false, false)
		
		--FreezeEntityPosition(ped, true)
		TriggerEvent("mythic_progbar:client:progress", {
			name = "unique_action_name",
			duration = 10000,
			label = "Proceeding with the surgery",
			useWhileDead = false,
			canCancel = true,
			controlDisables = {
				disableMovement = true,
				disableCarMovement = true,
				disableMouse = false,
				disableCombat = true,
			},
			animation = {
				animDict = "amb@world_human_sunbathe@male@back@base",
				anim = "base",
			},
			prop = {
				model = "",
			}
		}, function(status)
			if not status then
				--	exports['mythic_notify']:DoCustomHudText('inform', _U('notificationText1'), Config.BedTime * 1000)
	
		--Citizen.Wait(Config.BedTime * 1000)
		FreezeEntityPosition(ped, false) 
		ClearPedTasksImmediately(ped)
		TriggerServerEvent('esx_checkin:takeMoney')
	--	ESX.showNotification('You have been healed by the Miracle CITY EMS')
	TriggerEvent('notification', 'You have been treated by the Miracle CITY EMS.', 1)
		--TriggerClientEvent('notification', source, '')
		SetEntityCoords(ped, 323.40289306641,-585.20642089844,43.272708892822, false, false, false, false)
			end
		end)
	
	end
	-- Bed 5
	if chance == 5 then 
		RespawnPed(ped, coords5, 0.0)
	--	TaskStartScenarioAtPosition(ped, 'WORLD_HUMAN_SUNBATHE_BACK', 350.68, -591.64, 43.12 + 1, 360.0, 0, false, true)
		--FreezeEntityPosition(ped, true)
		TriggerEvent("mythic_progbar:client:progress", {
			name = "unique_action_name",
			duration = 10000,
			label = "Proceeding with the surgery",
			useWhileDead = false,
			canCancel = true,
			controlDisables = {
				disableMovement = true,
				disableCarMovement = true,
				disableMouse = false,
				disableCombat = true,
			},
			animation = {
				animDict = "amb@world_human_sunbathe@male@back@base",
				anim = "base",
			},
			prop = {
				model = "",
			}
		}, function(status)
			if not status then
				--	exports['mythic_notify']:DoCustomHudText('inform', _U('notificationText1'), Config.BedTime * 1000)
	
		--Citizen.Wait(Config.BedTime * 1000)
		FreezeEntityPosition(ped, false) 
		ClearPedTasksImmediately(ped)
		TriggerServerEvent('esx_checkin:takeMoney')
	--	ESX.showNotification('You have been healed by the Miracle CITY EMS')
	TriggerEvent('notification', 'You have been treated by the Miracle CITY EMS.', 1)
		--TriggerClientEvent('notification', source, '')
		SetEntityCoords(ped, -461.66485595703,-283.8567199707,34.912418365479, false, false, false, false)
			end
		end)
	end
	-- Bed 6 
	if chance == 6 then 
		RespawnPed(ped, coords6, 0.0)
		--TaskStartScenarioAtPosition(ped, 'WORLD_HUMAN_SUNBATHE_BACK', 353.2, -584.72, 43.12 + 1, 360.0, 0, false, true)
	--	TaskStartScenarioAtPosition(ped, 'WORLD_HUMAN_SUNBATHE_BACK', 350.68, -591.64, 43.12 + 1, 360.0, 0, false, true)
		--FreezeEntityPosition(ped, true)
		TriggerEvent("mythic_progbar:client:progress", {
			name = "unique_action_name",
			duration = 10000,
			label = "Proceeding with the surgery",
			useWhileDead = false,
			canCancel = true,
			controlDisables = {
				disableMovement = true,
				disableCarMovement = true,
				disableMouse = false,
				disableCombat = true,
			},
			animation = {
				animDict = "amb@world_human_sunbathe@male@back@base",
				anim = "base",
			},
			prop = {
				model = "",
			}
		}, function(status)
			if not status then
				--	exports['mythic_notify']:DoCustomHudText('inform', _U('notificationText1'), Config.BedTime * 1000)
	
		--Citizen.Wait(Config.BedTime * 1000)
		FreezeEntityPosition(ped, false) 
		ClearPedTasksImmediately(ped)
		TriggerServerEvent('esx_checkin:takeMoney')
	--	ESX.showNotification('You have been healed by the Miracle CITY EMS')
	TriggerEvent('notification', 'You have been treated by the Miracle CITY EMS.', 1)
		--TriggerClientEvent('notification', source, '')
		SetEntityCoords(ped, -461.03475952148,-286.84167480469,34.908130645752, false, false, false, false)
			end
		end)
	
	end
	-- Bed 7 
	if chance == 7 then 
		RespawnPed(ped, coords7, 0.0)
		TaskStartScenarioAtPosition(ped, 'WORLD_HUMAN_SUNBATHE_BACK', 347.0, -590.4, 43.12 + 1, 360.0, 0, false, true)
		FreezeEntityPosition(ped, true)
		exports['mythic_notify']:DoCustomHudText('inform', _U('notificationText1'), Config.BedTime * 1000)
		Citizen.Wait(Config.BedTime * 1000)
		FreezeEntityPosition(ped, false) 
		ClearPedTasksImmediately(ped)
		TriggerServerEvent('esx_checkin:takeMoney')
		exports['mythic_notify']:DoCustomHudText('inform', _U('notificationText2'), 4000)
		SetEntityCoords(ped, 347.6, -588.88, 43.32, false, false, false, false)
	end
	-- Bed 8
	if chance == 8 then 
		RespawnPed(ped, coords8, 0.0)
		TaskStartScenarioAtPosition(ped, 'WORLD_HUMAN_SUNBATHE_BACK', 349.6, -583.36, 43.0 + 1, 360.0, 0, false, true)
		FreezeEntityPosition(ped, true)
		exports['mythic_notify']:DoCustomHudText('inform', _U('notificationText1'), Config.BedTime * 1000)
		Citizen.Wait(Config.BedTime * 1000)
		FreezeEntityPosition(ped, false) 
		ClearPedTasksImmediately(ped)
		TriggerServerEvent('esx_checkin:takeMoney')
		exports['mythic_notify']:DoCustomHudText('inform', _U('notificationText2'), 4000)
		SetEntityCoords(ped, 348.0, -583.36, 43.32, false, false, false, false)
	end
end)