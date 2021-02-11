ESX = nil

-- Get the ESX library
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

-- Registering net events
RegisterNetEvent('esx_pun_carwash:clean')
AddEventHandler('esx_pun_carwash:clean', function()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    local dirtLevel = GetVehicleDirtLevel(vehicle)
    local displayPrice = math.floor(dirtLevel * ConfigC.Price)
    local timer = ConfigC.Timer * 1000
    FreezeEntityPosition(vehicle, true)
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName(_U('cleaning_vehicle'))
    EndTextCommandThefeedPostTicker(true, true)
    Citizen.Wait(timer)
    SetVehicleDirtLevel(vehicle, 0.0)
    FreezeEntityPosition(vehicle, false)
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName(_U('cleaned_vehicle') .. displayPrice)
    EndTextCommandThefeedPostTicker(true, true)
end)

RegisterNetEvent('esx_pun_carwash:cancel')
AddEventHandler('esx_pun_carwash:cancel', function()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    local dirtLevel = GetVehicleDirtLevel(vehicle)
    local displayPrice = math.floor(dirtLevel * ConfigC.Price)
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName(_U('not_enough_money') .. displayPrice)
    EndTextCommandThefeedPostTicker(true, true)
end)

-- Main thread
Citizen.CreateThread(function()
    while true do
        for k, v in pairs(ConfigC.Locations) do
            while GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.location.x, v.location.y, v.location.z, true) <= v.extents and GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId(), false), -1) == PlayerPedId() and GetEntitySpeed(PlayerPedId()) <= 0.5 do
                local pauseThread = 8
                local dirtLevel = GetVehicleDirtLevel(GetVehiclePedIsIn(PlayerPedId(), false))
                pricePreFormat = math.floor(dirtLevel * ConfigC.Price)
                price = pricePreFormat - 0.01
                if price >= 1.0 then
                    SetTextComponentFormat("STRING")
                    AddTextComponentString(_U('press_button') .. pricePreFormat)
                    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
                    if IsControlJustReleased(0, 350) then
                        TriggerServerEvent('esx_pun_carwash:checkMoney', price)
                        pauseThread = ConfigC.Timer * 1000
                    end
                else
                    SetTextComponentFormat("STRING")
                    AddTextComponentString(_U('no_wash_needed'))
                    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
                end
                Citizen.Wait(pauseThread)
            end
        end
        Citizen.Wait(1000)
    end
end)

-- Create blips
Citizen.CreateThread(function()
    if ConfigC.ShowBlips == true then
        for k, v in pairs(ConfigC.Locations) do
            local blip = AddBlipForCoord(v.location.x, v.location.y, v.location.z)
            SetBlipAsShortRange(blip, true)
            SetBlipColour(blip, ConfigC.BlipColor)
            SetBlipDisplay(blip, ConfigC.BlipDisplay)
            SetBlipScale(blip, ConfigC.BlipScale)
            SetBlipSprite(blip, ConfigC.BlipSprite)
            BeginTextCommandSetBlipName('STRING')
            AddTextComponentString(_U('blipname'))
            EndTextCommandSetBlipName(blip)
        end
    end
end)

-- Create markers
Citizen.CreateThread(function()
    if ConfigC.ShowMarkers == true then
        while true do
            local player = PlayerPedId()
            for k, v in pairs(ConfigC.Locations) do
                while GetDistanceBetweenCoords(v.location.x, v.location.y, v.location.z, GetEntityCoords(player), true) <= ConfigC.DrawDistance and GetPedInVehicleSeat(GetVehiclePedIsIn(player, false), -1) == player do
                    -- Floating markers
                    if ConfigC.MarkerType == 0 or (ConfigC.MarkerType >= 2 and ConfigC.MarkerType <= 7) or (ConfigC.MarkerType >= 10 and ConfigC.MarkerType <= 22) or ConfigC.MarkerType == 24 or (ConfigC.MarkerType >= 28 and ConfigC.MarkerType <= 31) then
                        DrawMarker(ConfigC.MarkerType, v.location.x, v.location.y, v.location.z + 1.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, ConfigC.MarkerColor.r, ConfigC.MarkerColor.g, ConfigC.MarkerColor.b, ConfigC.MarkerColor.a, false, true, 2, nil, nil, false)
                    -- Slightly under the ground markers
                    elseif ConfigC.MarkerType == 1 then
                        DrawMarker(ConfigC.MarkerType, v.location.x, v.location.y, v.location.z - 0.1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, v.extents, v.extents, v.extents / 10, ConfigC.MarkerColor.r, ConfigC.MarkerColor.g, ConfigC.MarkerColor.b, ConfigC.MarkerColor.a, false, true, 2, nil, nil, false)
                    -- Slightly above the ground markers, fixed
                    elseif ConfigC.MarkerType == 8 or ConfigC.MarkerType == 9 or ConfigC.MarkerType == 23 or ConfigC.MarkerType == 25 then
                        DrawMarker(ConfigC.MarkerType, v.location.x, v.location.y, v.location.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, v.extents, v.extents, v.extents, ConfigC.MarkerColor.r, ConfigC.MarkerColor.g, ConfigC.MarkerColor.b, ConfigC.MarkerColor.a, false, false, 2, nil, nil, false)
                    -- Slightly above the ground markers, rotating
                    elseif ConfigC.MarkerType == 26 or ConfigC.MarkerType == 27 then
                        DrawMarker(ConfigC.MarkerType, v.location.x, v.location.y, v.location.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, v.extents, v.extents, v.extents, ConfigC.MarkerColor.r, ConfigC.MarkerColor.g, ConfigC.MarkerColor.b, ConfigC.MarkerColor.a, false, true, 2, nil, nil, false)
                    -- In case user specified an out-of-range marker value
                    else
                        DrawMarker(1, v.location.x, v.location.y, v.location.z - 0.1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, v.extents, v.extents, v.extents / 10, ConfigC.MarkerColor.r, ConfigC.MarkerColor.g, ConfigC.MarkerColor.b, ConfigC.MarkerColor.a, false, true, 2, nil, nil, false)
                    end
                    Citizen.Wait(7)
                end
            end
            Citizen.Wait(2500)
        end
    end
end)