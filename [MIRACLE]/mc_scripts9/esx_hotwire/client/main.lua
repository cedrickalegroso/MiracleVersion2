local Keys = {
  ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
  ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
  ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
  ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
  ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
  ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
  ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
  ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
}

ESX = nil
local TimeLeft = 0
local hotwirevehs = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1)))
		if TimeLeft>0 then ESX.Game.Utils.DrawText3D(vector3(x,y,z+2), "~r~Hotwiring: ~s~"..TimeLeft.."~r~s", 1) end
	end
end)

function hotwire(vehicle)
	if not DoesEntityExist(vehicle) then return end
	Citizen.CreateThread(function()
		local props = ESX.Game.GetVehicleProperties(vehicle)
		TimeLeft = cfg.hotwiretime
		ESX.Streaming.RequestAnimDict("anim@veh@std@panto@ds@base", function()
			TaskPlayAnim(GetPlayerPed(-1), "anim@veh@std@panto@ds@base", "hotwire", 8.0, 8.0, cfg.hotwiretime, 1, 0, 0, 0, 0)
		end)
		while TimeLeft>0 do
			Citizen.Wait(1000)
			TimeLeft=TimeLeft-1
		end
		ClearPedTasks(GetPlayerPed(-1))
		local chance = math.random(100)
		if chance <= cfg.hotwirechance then
			SetVehicleNeedsToBeHotwired(vehicle,false)
			SetVehicleUndriveable(vehicle, false)
			SetVehicleEngineOn(vehicle, true, true, false)
			hotwirevehs[props.plate]=nil
			ESX.ShowNotification("~g~The car started!")
		else
			ESX.ShowNotification("~r~You couldn't find the right wire.")
		end
	end)
end

Citizen.CreateThread(function()
	local lastveh = nil
	while true do
		Citizen.Wait(0)
		local ped = GetPlayerPed(-1)
		if IsPedTryingToEnterALockedVehicle(ped) or DoesEntityExist(GetVehiclePedIsIn(ped,false)) and lastveh~=GetVehiclePedIsIn(ped,false) then
			local veh = GetVehiclePedIsIn(ped,false)
			local props = ESX.Game.GetVehicleProperties(veh)
			if IsVehicleNeedsToBeHotwired(veh) or (hotwirevehs[props.plate]~=nil and hotwirevehs[props.plate]==veh) then
				Citizen.Trace(props.plate.." needs to be hotwired")
				Citizen.Trace(tostring(hotwirevehs[props.plate]))
				ClearPedTasks(ped)
				if hotwirevehs[props.plate]==nil or hotwirevehs[props.plate]~=veh then hotwirevehs[props.plate]=veh end
				ESX.TriggerServerCallback("esx_hotwire:isOwner", function(owner)
					if owner then
						SetVehicleNeedsToBeHotwired(veh, false)
						SetVehicleEngineOn(veh, true, false, false)
					else
						SetVehicleNeedsToBeHotwired(veh, false)
						SetVehicleUndriveable(veh, true)
					end
				end, props.plate)
			end
			lastveh = veh
		end

		if IsPedInAnyVehicle(ped, false) and GetPedInVehicleSeat(GetVehiclePedIsIn(ped,false), -1)==ped then
			local veh = GetVehiclePedIsIn(ped,false)
			local props = ESX.Game.GetVehicleProperties(veh)
			if (IsVehicleEngineStarting(veh) or GetIsVehicleEngineRunning(veh)) and (hotwirevehs[props.plate]~=nil and hotwirevehs[props.plate]==veh) then
				SetVehicleUndriveable(veh,true)
			end
			if IsVehicleNeedsToBeHotwired(veh) or (hotwirevehs[props.plate]~=nil and hotwirevehs[props.plate]==veh) and TimeLeft<=0 then
				ESX.Game.Utils.DrawText3D(GetEntityCoords(veh), "[~r~X~s~] Hotwire", 1)
				if IsControlJustPressed(0, Keys["X"]) then
					ESX.TriggerServerCallback("esx_hotwire:hotwire",function()
						hotwire(veh)
					end)
				end
			end
		end

	end
end)