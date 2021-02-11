ESX = nil
 --[[
Citizen.CreateThread(function()
	while ESX == nil do TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end) Wait(0) end
    while not NetworkIsSessionStarted() or ESX.GetPlayerData().job == nil do Wait(0) end
    DoScreenFadeIn(0)
    for k, v in pairs(ConfigLOAFGARAGE.Impounds) do
        addBlip(v.menu, 67, 47, Strings['impound_blip'])
    end
    for k, v in pairs(ConfigLOAFGARAGE.Entrances) do
        addBlip(v.coords, 50, 38, Strings['garage'])
    end

   
 Citizen.CreateThread(function()
        while true do
           
            for k, v in pairs(ConfigLOAFGARAGE.Entrances) do
                local me = PlayerPedId()
                if GetDistanceBetweenCoords(GetEntityCoords(me), v.coords) <= 3.5 and not IsPedDeadOrDying(me, true) then
                    
                    if not IsPedInAnyVehicle(me, false) then
                        HelpText((Strings['enter_garage']):format('~INPUT_CONTEXT~'), true, -1)
                        if IsControlJustReleased(0, 38) then
                            TriggerServerEvent('esx_garage:viewVehicles', k)
                        end
                    else
                        local vehicle = GetVehiclePedIsUsing(me)
                        if DoesEntityExist(vehicle) then
                            HelpText((Strings['store_garage']):format('~INPUT_CONTEXT~', GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)))), true, -1)
                            if IsControlJustReleased(0, 38) then
                                ESX.TriggerServerCallback('esx_advancedgarage:storeVehicle', function(valid)
                                    if valid then
                                        if engineHealth < 990 then
                                            if ConfigLOAFGARAGE.Main.DamageMult then
                                                local apprasial = math.floor((1000 - engineHealth)/1000*ConfigLOAFGARAGE.Cars.PoundP*ConfigLOAFGARAGE.Main.MultAmount)
                                                RepairVehicle(apprasial, vehicle, vehicleProps)
                                            else
                                                local apprasial = math.floor((1000 - engineHealth)/1000*ConfigLOAFGARAGE.Cars.PoundP)
                                                RepairVehicle(apprasial, vehicle, vehicleProps)
                                            end
                                        else
                                            StoreVehicle(vehicle, vehicleProps)
                                        end	
                                    else
                                        ESX.ShowNotification(_U('cannot_store_vehicle'))
                                    end
                                end, vehicleProps)                       
                            end
                        end
                    end
                end
            end
           
        end
    end)
 
    Citizen.CreateThread(function()
        while true do
           
            for k, v in pairs(ConfigLOAFGARAGE.Impounds) do
                local me = PlayerPedId()
                if GetDistanceBetweenCoords(GetEntityCoords(me), v.menu) <= 2.5 then
                   
                    HelpText(Strings['open_impound'], true, -1)
                    if IsControlJustReleased(0, 38) then
                        TriggerServerEvent('esx_garage:impound', v.vehicleSpawn)
                    end
                end
            end
           
        end
    end)
   
   
end)  ]]--

RegisterNetEvent('esx_garage:openImpound')
AddEventHandler('esx_garage:openImpound', function(vehicleSpawn, impounded)
    ESX.UI.Menu.CloseAll()
    local elements = {}
    for i = 1, #impounded do
        local label = (Strings['retrieve_impounded']):format(impounded[i].plate, GetLabelText(GetDisplayNameFromVehicleModel(json.decode(impounded[i].vehicle).model)), ConfigLOAFGARAGE.ImpoundPrice)
        table.insert(elements, {label = label, value = impounded[i]})
    end
    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'take_out',
    {
        title = Strings['impound'],
        align = 'top-left',
        elements = elements
    },
    function(data, menu)
        TriggerServerEvent('esx_garage:getImpounded', vehicleSpawn.coords, vehicleSpawn.heading, data.current.value)
        ESX.UI.Menu.CloseAll()
    end, 
        function(data, menu)
        menu.close()
    end)
end)

RegisterNetEvent('retro_scripts:nocarsfound')
AddEventHandler('retro_scripts:nocarsfound', function(source)
    exports['mythic_notify']:DoHudText('error', 'You have no cars stored in garage!')
end)


RegisterNetEvent('esx_garage:stored')
AddEventHandler('esx_garage:stored', function()
    DoScreenFadeOut(750)
    while not IsScreenFadedOut() do 
        for i = 0, 31 do
            DisableAllControlActions(i)
        end
        Wait(0)
    end
    DeleteVehicle(GetVehiclePedIsUsing(PlayerPedId()))
    Wait(2000)
    DoScreenFadeIn(1500) 
end)

RegisterNetEvent('esx_garage:spawnVehicle')
AddEventHandler('esx_garage:spawnVehicle', function(info, coords, heading)
    SetEntityVisible(PlayerPedId(), true, false)
    local model = json.decode(info.vehicle).model
    print(coords)
    RequestModel(model)
    while not HasModelLoaded(model) do Wait(0) end
    local car = CreateVehicle(model, coords, heading, true, false)
    ESX.Game.SetVehicleProperties(car, json.decode(info.vehicle))
    --setDamages(car, json.decode(info.damages))

    SetEntityAsMissionEntity(car, true, false)
    SetVehicleHasBeenOwnedByPlayer(car, true)
    SetVehicleNeedsToBeHotwired(car, false)
    SetModelAsNoLongerNeeded(model)

    SetVehRadioStation(car, 'OFF')
    TaskWarpPedIntoVehicle(PlayerPedId(), car, -1)
end)

RegisterNetEvent('esx_garage:view')
AddEventHandler('esx_garage:view', function(vehicles, garage)
    SetFollowPedCamViewMode(2)
    DoScreenFadeOut(1500)
    while not IsScreenFadedOut() do 
        for i = 0, 31 do
            DisableAllControlActions(i)
        end
        Wait(0)
    end
    local firstVehicle = vehicles[1]

    local timer = GetGameTimer() + 1500 
    while timer >= GetGameTimer() do SetEntityCoords(PlayerPedId(), ConfigLOAFGARAGE.View.vehicle.coords) Wait(50) end

    local vehicle = createLocalVehicle(firstVehicle)
    local label = GetLabelText(GetDisplayNameFromVehicleModel(model))

    ESX.UI.Menu.CloseAll()
    local elements = {}
    for i = 1, #vehicles do
        print(vehicles[i].state)
            table.insert(elements, {label = ('%s | %s'):format(vehicles[i].plate, GetLabelText(GetDisplayNameFromVehicleModel(json.decode(vehicles[i].vehicle).model))), value = i})
    end
    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'vehicles',
    {
        title = 'Garage',
        align = 'top-left',
        elements = elements
    },
    function(data, menu)
        local gg = 1
        local i = data.current.value 
        DoScreenFadeOut(750)
        while not IsScreenFadedOut() do Wait(0) end
        DeleteVehicle(vehicle)
        vehicle = createLocalVehicle(vehicles[i])
        TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
        Wait(250)
        DoScreenFadeIn(1500)
        if gg == 1 then
            ESX.UI.Menu.Open(
                'default', GetCurrentResourceName(), 'take_out',
            {
                title = (Strings['take_out']):format(data.current.label),
                align = 'top-left',
                elements = {{label = Strings['yes'], value = 'y', vehicle = vehicles[i]}, {label = Strings['no'], value = 'n'}}
            },
            function(data2, menu2)
                if data2.current.value == 'y' then
                    TriggerServerEvent('esx_garage:takeOut', data2.current.vehicle, garage)
                    ESX.UI.Menu.CloseAll()
                else
                    menu2.close()
                end
            end, 
                function(data2, menu2)
                menu2.close()
            end)
        end
    end,
        function(data, menu)
        menu.close()
    end)

    DoScreenFadeIn(1500)
    while ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'vehicles') or ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'take_out') do
        Wait(0)
        SetVehicleEngineOn(vehicle, false, true)
        SetEntityVisible(PlayerPedId(), false, false)
        DisableControlAction(0, 75, true)
		DisableControlAction(27, 75, true)
    end
    DeleteVehicle(vehicle)
    SetEntityVisible(PlayerPedId(), true, false)
    SetEntityCoords(PlayerPedId(), ConfigLOAFGARAGE.Entrances[garage].coords)
end)

createLocalVehicle = function(vehicle)
    local info = json.decode(vehicle.vehicle)
    local model = info.model
    RequestModel(model)
    while not HasModelLoaded(model) do Wait(0) end
    local car = CreateVehicle(model, ConfigLOAFGARAGE.View.vehicle.coords, ConfigLOAFGARAGE.View.vehicle.heading, false, false)
    ESX.Game.SetVehicleProperties(car, json.decode(vehicle.vehicle))
    --setDamages(car, json.decode(vehicle.damages))

    SetEntityAsMissionEntity(car, true, false)
	SetVehicleHasBeenOwnedByPlayer(car, true)
	SetVehicleNeedsToBeHotwired(car, false)
	SetModelAsNoLongerNeeded(model)
	RequestCollisionAtCoord(ConfigLOAFGARAGE.View.vehicle.coords)
	while not HasCollisionLoadedAroundEntity(car) do
		RequestCollisionAtCoord(ConfigLOAFGARAGE.View.vehicle.coords)
		Wait(0)
	end

    SetVehRadioStation(car, 'OFF')
    TaskWarpPedIntoVehicle(PlayerPedId(), car, -1)
    FreezeEntityPosition(car, true)
    return car
end

setDamages = function(car, damages)
    for i = 0, 13 do
        if damages['damaged_windows'] then
            if damages['damaged_windows'][i] then
                SmashVehicleWindow(car, damages['damaged_windows'][i])
            end
        end
        if damages['burst_tires'] then
            if damages['burst_tires'][i] then
                SetVehicleTyreBurst(car, damages['burst_tires'][i], true, 1000.0)
            end
        end
        if damages['broken_doors'] then
            if damages['broken_doors'][i] then
                SetVehicleDoorBroken(car, damages['broken_doors'][i], true)
            end
        end
    end

    if damages['body_health'] then
        SetVehicleBodyHealth(car, damages['body_health'])
    end
    if damages['engine_health'] then
        SetVehicleEngineHealth(car, damages['engine_health'])
    end
end

HelpText = function(text, sound, duration)
    BeginTextCommandDisplayHelp('STRING')
    AddTextComponentSubstringPlayerName(text) 
    EndTextCommandDisplayHelp(0, false, sound, duration)
end

addBlip = function(coords, sprite, color, text)
    local blip = AddBlipForCoord(coords)
	SetBlipSprite (blip, sprite)
	SetBlipDisplay(blip, 4)
	SetBlipScale  (blip, 1.0)
	SetBlipColour (blip, color)
	SetBlipAsShortRange(blip, true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString(text)
    EndTextCommandSetBlipName(blip)
end