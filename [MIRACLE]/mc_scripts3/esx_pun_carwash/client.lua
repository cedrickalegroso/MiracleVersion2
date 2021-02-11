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
    local displayPriceCARWASH = math.floor(dirtLevel * Config.PriceCARWASH)
    local timer = Config.TimerCARWASHr * 1000
    FreezeEntityPosition(vehicle, true)
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName(_U('cleaning_vehicle'))
    EndTextCommandThefeedPostTicker(true, true)
    Citizen.Wait(timer)
    SetVehicleDirtLevel(vehicle, 0.0)
    FreezeEntityPosition(vehicle, false)
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName(_U('cleaned_vehicle') .. displayPriceCARWASH)
    EndTextCommandThefeedPostTicker(true, true)
end)

RegisterNetEvent('esx_pun_carwash:cancel')
AddEventHandler('esx_pun_carwash:cancel', function()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    local dirtLevel = GetVehicleDirtLevel(vehicle)
    local displayPriceCARWASH = math.floor(dirtLevel * Config.PriceCARWASH)
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName(_U('not_enough_money') .. displayPriceCARWASH)
    EndTextCommandThefeedPostTicker(true, true)
end)

-- Main thread
Citizen.CreateThread(function()
    while true do
        for k, v in pairs(Config.LocationsCARWASH) do
            while GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.location.x, v.location.y, v.location.z, true) <= v.extents and GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId(), false), -1) == PlayerPedId() and GetEntitySpeed(PlayerPedId()) <= 0.5 do
                local pauseThread = 8
                local dirtLevel = GetVehicleDirtLevel(GetVehiclePedIsIn(PlayerPedId(), false))
                pricePreFormat = math.floor(dirtLevel * Config.PriceCARWASH)
                price = pricePreFormat - 0.01
                if price >= 1.0 then
                    SetTextComponentFormat("STRING")
                    AddTextComponentString(_U('press_button') .. pricePreFormat)
                    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
                    if IsControlJustReleased(0, 350) then
                        TriggerServerEvent('esx_pun_carwash:checkMoney', price)
                        pauseThread = Config.TimerCARWASHr * 1000
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
    if Config.ShowBlipsCARWASH == true then
        for k, v in pairs(Config.LocationsCARWASH) do
            local blip = AddBlipForCoord(v.location.x, v.location.y, v.location.z)
            SetBlipAsShortRange(blip, true)
            SetBlipColour(blip, Config.BlipColorCARWASH)
            SetBlipDisplayCARWASH(blip, Config.BlipDisplayCARWASH)
            SetBlipScaleCARWASH(blip, Config.BlipScaleCARWASH)
            SetBlipSpriteCARWASH(blip, Config.BlipSpriteCARWASH)
            BeginTextCommandSetBlipName('STRING')
            AddTextComponentString(_U('blipname'))
            EndTextCommandSetBlipName(blip)
        end
    end
end)

-- Create markers
Citizen.CreateThread(function()
    if Config.ShowMarkersCARWASH == true then
        while true do
            local player = PlayerPedId()
            for k, v in pairs(Config.LocationsCARWASH) do
                while GetDistanceBetweenCoords(v.location.x, v.location.y, v.location.z, GetEntityCoords(player), true) <= Config.DrawDistanceCARWASH and GetPedInVehicleSeat(GetVehiclePedIsIn(player, false), -1) == player do
                    -- Floating markers
                    if Config.MarkerTypeCARWASH == 0 or (Config.MarkerTypeCARWASH >= 2 and Config.MarkerTypeCARWASH <= 7) or (Config.MarkerTypeCARWASH >= 10 and Config.MarkerTypeCARWASH <= 22) or Config.MarkerTypeCARWASH == 24 or (Config.MarkerTypeCARWASH >= 28 and Config.MarkerTypeCARWASH <= 31) then
                        DrawMarker(Config.MarkerTypeCARWASH, v.location.x, v.location.y, v.location.z + 1.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, Config.MarkerColorCARWASH.r, Config.MarkerColorCARWASH.g, Config.MarkerColorCARWASH.b, Config.MarkerColorCARWASH.a, false, true, 2, nil, nil, false)
                    -- Slightly under the ground markers
                    elseif Config.MarkerTypeCARWASH == 1 then
                        DrawMarker(Config.MarkerTypeCARWASH, v.location.x, v.location.y, v.location.z - 0.1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, v.extents, v.extents, v.extents / 10, Config.MarkerColorCARWASH.r, Config.MarkerColorCARWASH.g, Config.MarkerColorCARWASH.b, Config.MarkerColorCARWASH.a, false, true, 2, nil, nil, false)
                    -- Slightly above the ground markers, fixed
                    elseif Config.MarkerTypeCARWASH == 8 or Config.MarkerTypeCARWASH == 9 or Config.MarkerTypeCARWASH == 23 or Config.MarkerTypeCARWASH == 25 then
                        DrawMarker(Config.MarkerTypeCARWASH, v.location.x, v.location.y, v.location.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, v.extents, v.extents, v.extents, Config.MarkerColorCARWASH.r, Config.MarkerColorCARWASH.g, Config.MarkerColorCARWASH.b, Config.MarkerColorCARWASH.a, false, false, 2, nil, nil, false)
                    -- Slightly above the ground markers, rotating
                    elseif Config.MarkerTypeCARWASH == 26 or Config.MarkerTypeCARWASH == 27 then
                        DrawMarker(Config.MarkerTypeCARWASH, v.location.x, v.location.y, v.location.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, v.extents, v.extents, v.extents, Config.MarkerColorCARWASH.r, Config.MarkerColorCARWASH.g, Config.MarkerColorCARWASH.b, Config.MarkerColorCARWASH.a, false, true, 2, nil, nil, false)
                    -- In case user specified an out-of-range marker value
                    else
                        DrawMarker(1, v.location.x, v.location.y, v.location.z - 0.1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, v.extents, v.extents, v.extents / 10, Config.MarkerColorCARWASH.r, Config.MarkerColorCARWASH.g, Config.MarkerColorCARWASH.b, Config.MarkerColorCARWASH.a, false, true, 2, nil, nil, false)
                    end
                    Citizen.Wait(7)
                end
            end
            Citizen.Wait(2500)
        end
    end
end)