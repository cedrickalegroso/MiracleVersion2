ESX = nil

Locales['en'] = {
    ['blipname'] = 'car Wash',
    ['press_button'] = 'press ~INPUT_VEH_HORN~ to clean your vehicle for ~g~$',
    ['cleaning_vehicle'] = 'your vehicle is being cleaned.',
    ['cleaned_vehicle'] = 'your vehicle has been cleaned for ~g~$',
    ['not_enough_money'] = 'you don\'t have enough money, you need ~r~$',
    ['no_wash_needed'] = 'your vehicle doesn\'t need a wash.'
}

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
    local displayPrice = math.floor(dirtLevel * ConfigCarwash.Price)
    local timer = ConfigCarwash.Timer * 1000
    FreezeEntityPosition(vehicle, true)
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName('your vehicle is being cleaned.')
    EndTextCommandThefeedPostTicker(true, true)
    Citizen.Wait(timer)
    SetVehicleDirtLevel(vehicle, 0.0)
    FreezeEntityPosition(vehicle, false)
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName('your vehicle has been cleaned for ~g~$' .. displayPrice)
    EndTextCommandThefeedPostTicker(true, true)
end)

RegisterNetEvent('esx_pun_carwash:cancel')
AddEventHandler('esx_pun_carwash:cancel', function()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    local dirtLevel = GetVehicleDirtLevel(vehicle)
    local displayPrice = math.floor(dirtLevel * ConfigCarwash.Price)
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName('you don\'t have enough money, you need ~r~$' .. displayPrice)
    EndTextCommandThefeedPostTicker(true, true)
end)

-- Main thread
Citizen.CreateThread(function()
    while true do
        for k, v in pairs(ConfigCarwash.Locations) do
            while GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.location.x, v.location.y, v.location.z, true) <= v.extents and GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId(), false), -1) == PlayerPedId() and GetEntitySpeed(PlayerPedId()) <= 0.5 do
                local pauseThread = 8
                local dirtLevel = GetVehicleDirtLevel(GetVehiclePedIsIn(PlayerPedId(), false))
                pricePreFormat = math.floor(dirtLevel * ConfigCarwash.Price)
                price = pricePreFormat - 0.01
                if price >= 1.0 then
                    SetTextComponentFormat("STRING")
                    AddTextComponentString('press ~INPUT_VEH_HORN~ to clean your vehicle for ~g~$' .. pricePreFormat)
                    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
                    if IsControlJustReleased(0, 350) then
                        TriggerServerEvent('esx_pun_carwash:checkMoney', price)
                        pauseThread = ConfigCarwash.Timer * 1000
                    end
                else
                    SetTextComponentFormat("STRING")
                    AddTextComponentString('your vehicle doesn\'t need a wash.')
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
    if ConfigCarwash.ShowBlips == true then
        for k, v in pairs(ConfigCarwash.Locations) do
            local blip = AddBlipForCoord(v.location.x, v.location.y, v.location.z)
            SetBlipAsShortRange(blip, true)
            SetBlipColour(blip, ConfigCarwash.BlipColor)
            SetBlipDisplay(blip, ConfigCarwash.BlipDisplay)
            SetBlipScale(blip, ConfigCarwash.BlipScale)
            SetBlipSprite(blip, ConfigCarwash.BlipSprite)
            BeginTextCommandSetBlipName('STRING')
            AddTextComponentString(_U('blipname'))
            EndTextCommandSetBlipName(blip)
        end
    end
end)

-- Create markers
Citizen.CreateThread(function()
    if ConfigCarwash.ShowMarkers == true then
        while true do
            local player = PlayerPedId()
            for k, v in pairs(ConfigCarwash.Locations) do
                while GetDistanceBetweenCoords(v.location.x, v.location.y, v.location.z, GetEntityCoords(player), true) <= ConfigCarwash.DrawDistance and GetPedInVehicleSeat(GetVehiclePedIsIn(player, false), -1) == player do
                    -- Floating markers
                    if ConfigCarwash.MarkerType == 0 or (ConfigCarwash.MarkerType >= 2 and ConfigCarwash.MarkerType <= 7) or (ConfigCarwash.MarkerType >= 10 and ConfigCarwash.MarkerType <= 22) or ConfigCarwash.MarkerType == 24 or (ConfigCarwash.MarkerType >= 28 and ConfigCarwash.MarkerType <= 31) then
                        DrawMarker(ConfigCarwash.MarkerType, v.location.x, v.location.y, v.location.z + 1.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, ConfigCarwash.MarkerColor.r, ConfigCarwash.MarkerColor.g, ConfigCarwash.MarkerColor.b, ConfigCarwash.MarkerColor.a, false, true, 2, nil, nil, false)
                    -- Slightly under the ground markers
                    elseif ConfigCarwash.MarkerType == 1 then
                        DrawMarker(ConfigCarwash.MarkerType, v.location.x, v.location.y, v.location.z - 0.1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, v.extents, v.extents, v.extents / 10, ConfigCarwash.MarkerColor.r, ConfigCarwash.MarkerColor.g, ConfigCarwash.MarkerColor.b, ConfigCarwash.MarkerColor.a, false, true, 2, nil, nil, false)
                    -- Slightly above the ground markers, fixed
                    elseif ConfigCarwash.MarkerType == 8 or ConfigCarwash.MarkerType == 9 or ConfigCarwash.MarkerType == 23 or ConfigCarwash.MarkerType == 25 then
                        DrawMarker(ConfigCarwash.MarkerType, v.location.x, v.location.y, v.location.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, v.extents, v.extents, v.extents, ConfigCarwash.MarkerColor.r, ConfigCarwash.MarkerColor.g, ConfigCarwash.MarkerColor.b, ConfigCarwash.MarkerColor.a, false, false, 2, nil, nil, false)
                    -- Slightly above the ground markers, rotating
                    elseif ConfigCarwash.MarkerType == 26 or ConfigCarwash.MarkerType == 27 then
                        DrawMarker(ConfigCarwash.MarkerType, v.location.x, v.location.y, v.location.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, v.extents, v.extents, v.extents, ConfigCarwash.MarkerColor.r, ConfigCarwash.MarkerColor.g, ConfigCarwash.MarkerColor.b, ConfigCarwash.MarkerColor.a, false, true, 2, nil, nil, false)
                    -- In case user specified an out-of-range marker value
                    else
                        DrawMarker(1, v.location.x, v.location.y, v.location.z - 0.1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, v.extents, v.extents, v.extents / 10, ConfigCarwash.MarkerColor.r, ConfigCarwash.MarkerColor.g, ConfigCarwash.MarkerColor.b, ConfigCarwash.MarkerColor.a, false, true, 2, nil, nil, false)
                    end
                    Citizen.Wait(7)
                end
            end
            Citizen.Wait(2500)
        end
    end
end)