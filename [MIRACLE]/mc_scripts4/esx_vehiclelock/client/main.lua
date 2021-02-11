ESX = nil

ConfigLock = {}

ConfigLock.Locale = 'en'

local isRunningWorkaround = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

function StartWorkaroundTask()
	if isRunningWorkaround then
		return
	end

	local timer = 0
	local playerPed = PlayerPedId()
	isRunningWorkaround = true

	while timer < 100 do
		Citizen.Wait(0)
		timer = timer + 1

		local vehicle = GetVehiclePedIsTryingToEnter(playerPed)

		if DoesEntityExist(vehicle) then
			local lockStatus = GetVehicleDoorLockStatus(vehicle)

			if lockStatus == 4 then
				ClearPedTasks(playerPed)
			end
		end
	end

	isRunningWorkaround = false
end

function ToggleVehicleLock()
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)
	local vehicle

	

	Citizen.CreateThread(function()
		StartWorkaroundTask()
	end)

	if IsPedInAnyVehicle(playerPed, false) then
		vehicle = GetVehiclePedIsIn(playerPed, false)
	else
		vehicle = GetClosestVehicle(coords, 8.0, 0, 71)
		
	end

	if not DoesEntityExist(vehicle) then
		return
	end

	ESX.TriggerServerCallback('esx_vehiclelock:requestPlayerCars', function(isOwnedVehicle)




		if isOwnedVehicle then
			local lockStatus = GetVehicleDoorLockStatus(vehicle)
			local vehicleLabel = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))
			vehicleLabel = GetLabelText(vehicleLabel)

			if lockStatus == 1 then -- unlocked
				SetVehicleDoorsLocked(vehicle, 2, false)
				PlayVehicleDoorCloseSound(vehicle, 1)

				SetVehicleLights(vehicle, 2)
							Citizen.Wait(150)
							SetVehicleLights(vehicle, 0)
							Citizen.Wait(150)
							SetVehicleLights(vehicle, 2)
							Citizen.Wait(150)
							SetVehicleLights(vehicle, 0)

				ESX.ShowNotification(vehicleLabel..' ~r~Locked~s~ ')
			--	TriggerServerEvent('retro_scripts:playlocksound')
			elseif lockStatus == 2 then -- locked
				SetVehicleDoorsLocked(vehicle, 1)
				PlayVehicleDoorOpenSound(vehicle, 0)

				SetVehicleLights(vehicle, 2)
				Citizen.Wait(150)
				SetVehicleLights(vehicle, 0)
				Citizen.Wait(150)
				SetVehicleLights(vehicle, 2)
				Citizen.Wait(150)
				SetVehicleLights(vehicle, 0)
			--	TriggerServerEvent('retro_scripts:playlocksound')
				ESX.ShowNotification( vehicleLabel..' ~g~Unlocked~s~')
			end
		end

	end, ESX.Math.Trim(GetVehicleNumberPlateText(vehicle)))
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if IsControlJustReleased(0, 303) and IsInputDisabled(0) then
			ToggleVehicleLock()
			Citizen.Wait(300)
	
		-- D-pad down on controllers works, too!
		elseif IsControlJustReleased(0, 173) and not IsInputDisabled(0) then
			ToggleVehicleLock()
			Citizen.Wait(300)
		end
	end
end)
