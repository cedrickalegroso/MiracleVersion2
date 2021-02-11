ESX = nil
local hasAlreadyEnteredMarker, lastZone, currentAction, currentActionMsg, hasPaid

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

function OpenShopMenu()
	hasPaid = false

	TriggerEvent('esx_skin:openRestrictedMenu', function(data, menu)
		menu.close()

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'shop_confirm', {
			title = 'validate this purchase?',
			align = 'top-left',
			elements = {
				{label = 'No',  value = 'no'},
				{label = 'Yes', value = 'yes'}
		}}, function(data, menu)
			menu.close()

			if data.current.value == 'yes' then
				ESX.TriggerServerCallback('esx_barbershop:checkMoney', function(hasEnoughMoney)
					if hasEnoughMoney then
						TriggerEvent('skinchanger:getSkin', function(skin)
							TriggerServerEvent('esx_skin:save', skin)
						end)

						TriggerServerEvent('esx_barbershop:pay')
						hasPaid = true
					else
						ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
							TriggerEvent('skinchanger:loadSkin', skin) 
						end)

						ESX.ShowNotification(_U('not_enough_money'))
					end
				end)
			elseif data.current.value == 'no' then
				ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
					TriggerEvent('skinchanger:loadSkin', skin) 
				end)
			end

			currentAction = 'shop_menu'
			currentActionMsg = 'press ~INPUT_CONTEXT~ to access the ~y~Barber Shop~s~.'
		end, function(data, menu)
			menu.close()
			currentAction = 'shop_menu'
			currentActionMsg ='press ~INPUT_CONTEXT~ to access the ~y~Barber Shop~s~.'
		end)
	end, function(data, menu)
		menu.close()

		currentAction    = 'shop_menu'
		currentActionMsg  = 'press ~INPUT_CONTEXT~ to access the ~y~Barber Shop~s~.'
	end, {
		'beard_1',
		'beard_2',
		'beard_3',
		'beard_4',
		'hair_1',
		'hair_2',
		'hair_color_1',
		'hair_color_2',
		'eyebrows_1',
		'eyebrows_2',
		'eyebrows_3',
		'eyebrows_4',
		'makeup_1',
		'makeup_2',
		'makeup_3',
		'makeup_4',
		'lipstick_1',
		'lipstick_2',
		'lipstick_3',
		'lipstick_4',
		'ears_1',
		'ears_2',
	})
end

AddEventHandler('esx_barbershop:hasEnteredMarker', function(zone)
	currentAction = 'shop_menu'
	currentActionMsg = 'press ~INPUT_CONTEXT~ to access the ~y~Barber Shop~s~.'
end)

AddEventHandler('esx_barbershop:hasExitedMarker', function(zone)
	ESX.UI.Menu.CloseAll()
	currentAction = nil

	if not hasPaid then
		ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
			TriggerEvent('skinchanger:loadSkin', skin)
		end)
	end
end)

-- Create Blips
Citizen.CreateThread(function()
	for k,v in ipairs(ConfigBarber.Shops) do
		local blip = AddBlipForCoord(v)

		SetBlipSprite (blip, 71)
		SetBlipColour (blip, 51)
		SetBlipAsShortRange(blip, true)

		BeginTextCommandSetBlipName('STRING')
		AddTextComponentSubstringPlayerName('Barber Shop')
		EndTextCommandSetBlipName(blip)
	end
end)

-- Enter / Exit marker events and draw marker
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local playerCoords, isInMarker, currentZone, letSleep = GetEntityCoords(PlayerPedId()), nil, nil, true

		for k,v in ipairs(ConfigBarber.Shops) do
			local distance = #(playerCoords - v)

			if distance < ConfigBarber.DrawDistance then
				letSleep = false
				DrawMarker(ConfigBarber.MarkerType, v, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, ConfigBarber.MarkerSize, ConfigBarber.MarkerColor.r, ConfigBarber.MarkerColor.g, ConfigBarber.MarkerColor.b, 100, false, true, 2, false, nil, nil, false)

				if distance < 1.5 then
					isInMarker, currentZone = true, k
				end
			end
		end

		if (isInMarker and not hasAlreadyEnteredMarker) or (isInMarker and lastZone ~= currentZone) then
			hasAlreadyEnteredMarker, lastZone = true, currentZone
			TriggerEvent('esx_barbershop:hasEnteredMarker', currentZone)
		end

		if not isInMarker and hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = false
			TriggerEvent('esx_barbershop:hasExitedMarker', lastZone)
		end

		if letSleep then
			Citizen.Wait(500)
		end
	end
end)

-- Key controls
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if currentAction then
			ESX.ShowHelpNotification(currentActionMsg)

			if IsControlJustReleased(0, 38) then
				if currentAction == 'shop_menu' then
					OpenShopMenu()
				end

				currentAction = nil
			end
		else
			Citizen.Wait(500)
		end
	end
end)