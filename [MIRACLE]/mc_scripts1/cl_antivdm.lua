Citizen.CreateThread(function()
    while true do
        N_0x4757f00bc6323cfe(-1553120962, 0.0) --undocumented damage modifier. 1st argument is hash, 2nd is modified (0.0-1.0)
        Wait(0)
    end
end)


--// RADAR //--


Citizen.CreateThread(function()
    while true do

        local player = GetPlayerPed(-1)
		local vehicle = GetVehiclePedIsIn(player, false)
		local position = GetEntityCoords(player)
		local vehicleIsOn = GetIsVehicleEngineRunning(vehicle)
        local vehicleInfo
        
        local vehicleClass = GetVehicleClass(vehicle)

       
        if IsPedInAnyVehicle(player, false) and vehicleIsOn then
            DisplayRadar(true)
        else
            DisplayRadar(false)
        end
        Wait(0)
    end
end)

