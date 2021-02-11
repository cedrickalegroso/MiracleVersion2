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

ESX          = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

local havebike = false

Citizen.CreateThread(function()

	if not ConfigBike.EnableBlips then return end
	
	for _, info in pairs(ConfigBike.BlipZones) do
		info.blip = AddBlipForCoord(info.x, info.y, info.z)
		SetBlipSprite(info.blip, info.id)
		SetBlipDisplay(info.blip, 4)
		SetBlipScale(info.blip, 1.0)
		SetBlipColour(info.blip, info.colour)
		SetBlipAsShortRange(info.blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(info.title)
		EndTextCommandSetBlipName(info.blip)
	end
end)



Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(ConfigBike.MarkerZones) do
            DrawMarker(ConfigBike.TypeMarker, ConfigBike.MarkerZones[k].x, ConfigBike.MarkerZones[k].y, ConfigBike.MarkerZones[k].z, 0, 0, 0, 0, 0, 0, ConfigBike.MarkerScale.x, ConfigBike.MarkerScale.y, ConfigBike.MarkerScale.z, ConfigBike.MarkerColor.r, ConfigBike.MarkerColor.g, ConfigBike.MarkerColor.b, 100, 0, 0, 0, 0)	
		end
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
	
        for k in pairs(ConfigBike.MarkerZones) do
        	local ped = PlayerPedId()
            local pedcoords = GetEntityCoords(ped, false)
            local distance = Vdist(pedcoords.x, pedcoords.y, pedcoords.z, ConfigBike.MarkerZones[k].x, ConfigBike.MarkerZones[k].y, ConfigBike.MarkerZones[k].z)
            if distance <= 1.40 then
				if havebike == false then

					helptext('Press ~INPUT_CONTEXT~ rent a bike.')
					
					if IsControlJustPressed(0, Keys['E']) and IsPedOnFoot(ped) then
						OpenBikesMenu()
					end 
				elseif havebike == true then

					helptext('Press ~INPUT_CONTEXT~ store bike back.')

				

					if IsControlJustPressed(0, Keys['E']) then

						TriggerEvent('esx:deleteVehicle')
					
						if ConfigBike.EnableEffects then
							ESX.ShowNotification('We hope you enjoyed the ride. Come back later. :)')
						else
							TriggerEvent("chatMessage", 'Retro Bike Service', {255,255,0}, 'We hope you enjoyed the ride. Come back later. :)')
						end
						havebike = false
					else

					


						if ConfigBike.EnableEffects then
							ESX.ShowNotification(_U('notabike'))
						else
						
						end
					end 		
				end
			elseif distance < 1.45 then
				ESX.UI.Menu.CloseAll()
            end
        end
    end
end)



function OpenBikesMenu()
	
	local elements = {}
	
	if ConfigBike.EnablePrice == false then
		table.insert(elements, {label = 'Bike - <span style="color:green;">TriBike</span>', value = 'bike'}) 
		table.insert(elements, {label = 'Bike - <span style="color:green;">Scorcher</span>', value = 'bike2'}) 
		table.insert(elements, {label = 'Bike - <span style="color:green;">Cruiser</span>', value = 'bike3'}) 
		table.insert(elements, {label =  'Bike - <span style="color:green;">BMX</span>', value = 'bike4'}) 
	end
	
	if ConfigBike.EnablePrice == true then
		table.insert(elements, {label = 'Bike - <span style="color:green;">TriBike</span> <span style="color:red;">1000</span>', value = 'bike'}) 
		table.insert(elements, {label ='Bike - <span style="color:green;">Scorcher</span> <span style="color:red;">950</span>', value = 'bike2'}) 
		table.insert(elements, {label ='Bike - <span style="color:green;">Cruiser</span> <span style="color:red;">750</span>', value = 'bike3'}) 
		table.insert(elements, {label = 'Bike - <span style="color:green;">BMX</span> <span style="color:red;">450</span>', value = 'bike4'}) 
	end
	
	
	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'client',
    {
		title    = 'Bike Rental',
		align    = 'bottom-right',
		elements = elements,
    },
	
	
	function(data, menu)

	if data.current.value == 'bike' then
		if ConfigBike.EnablePrice then
			TriggerServerEvent("esx:bike:lowmoney", ConfigBike.PriceTriBike) 
			TriggerEvent("chatMessage", '[Bikes]', {255,0,255},  'You paid: $'..ConfigBike.PriceTriBike)
		end
		
		if ConfigBike.EnableEffects then
			Citizen.Wait(500)
			spawn_effect("tribike2")
			---Citizen.Wait(30000)
		else
			Citizen.Wait(500)
			TriggerEvent('esx:spawnVehicle', "tribike2")
			--Citizen.Wait(30000)
		end
	end
	
	if data.current.value == 'bike2' then
		if ConfigBike.EnablePrice then
			TriggerServerEvent("esx:bike:lowmoney", ConfigBike.PriceScorcher) 
			TriggerEvent("chatMessage", '[Bikes]', {255,0,255}, 'You paid: $'.. ConfigBike.PriceScorcher)
		end
		
		if ConfigBike.EnableEffects then
			Citizen.Wait(500)
			spawn_effect("scorcher")
			Citizen.Wait(30000)
		else
			Citizen.Wait(500)
			TriggerEvent('esx:spawnVehicle', "scorcher")
			Citizen.Wait(30000)
		end
		
	end
	
	if data.current.value == 'bike3' then
		if ConfigBike.EnablePrice then
			TriggerServerEvent("esx:bike:lowmoney", ConfigBike.PriceCruiser) 
			TriggerEvent("chatMessage", '[Bikes]', {255,0,255}, 'You paid: $'.. ConfigBike.PriceCruiser)
		end
		
		if ConfigBike.EnableEffects then
			Citizen.Wait(500)
			spawn_effect("cruiser")
			Citizen.Wait(30000)
		else
			Citizen.Wait(500)
			TriggerEvent('esx:spawnVehicle', "cruiser")
			Citizen.Wait(30000)
		end
	end
	
	if data.current.value == 'bike4' then
		if ConfigBike.EnablePrice then
			TriggerServerEvent("esx:bike:lowmoney", ConfigBike.PriceBmx) 
			TriggerEvent("chatMessage", '[Bikes]', {255,0,255}, 'You paid: $'.. ConfigBike.PriceBmx)
		end
		
		if ConfigBike.EnableEffects then
			Citizen.Wait(500)
			spawn_effect("bmx")
			Citizen.Wait(30000)
		else
			Citizen.Wait(500)
			TriggerEvent('esx:spawnVehicle', "bmx")
			Citizen.Wait(30000)
		end
	end

	ESX.UI.Menu.CloseAll()
	havebike = true	
	

    end,
	function(data, menu)
		menu.close()
		end
	)
end


function helptext(text)
	SetTextComponentFormat('STRING')
	AddTextComponentString(text)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function spawn_effect(somecar) 
	DoScreenFadeOut(1000)
	Citizen.Wait(1000)
	TriggerEvent('esx:spawnVehicle', somecar)
	DoScreenFadeIn(3000) 
end