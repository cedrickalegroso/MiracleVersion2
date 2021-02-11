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

ESX                             = nil
local PlayerData                = {}
local GUI                       = {}
GUI.Time                        = 0
local HasAlreadyEnteredMarker   = false
local LastZone                  = nil
local CurrentAction             = nil
local CurrentActionMsg          = ''
local CurrentActionData         = {}
local BlipCloakRoom             = nil
local BlipVehicle               = nil
local BlipVehicleDeleter		= nil
local Blips                     = {}
local incollect                 = false

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

function DrawText3D(x, y, z, text, scale)
	local onScreen, _x, _y = World3dToScreen2d(x, y, z)
	local pX, pY, pZ = table.unpack(GetGameplayCamCoords())

	SetTextScale(scale, scale)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextEntry("STRING")
	SetTextCentre(1)
	SetTextColour(255, 255, 255, 255)
	SetTextOutline()

	AddTextComponentString(text)
	DrawText(_x, _y)

    local factor = (string.len(text)) / 370
    DrawRect(_x, _y + 0.0125, 0.015 + factor, 0.03, 41, 11, 41, 90)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(13)
        local coords = GetEntityCoords(GetPlayerPed(-1))
        local playerPed = GetPlayerPed(-1)
        if(GetDistanceBetweenCoords(coords, 2587.903, 4664.768, 34.076, true) < 15.0) then
            DrawText3D(2587.903, 4664.768, 34.076, 'Pritisni ~b~[E]', 0.4)
            DrawMarker(1, 2587.903, 4664.768, 33.15, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 2.5, 2.5, 0.25, 0, 193, 16, 100, false, true, 2, false, false, false, false)
        end
        if(GetDistanceBetweenCoords(coords, 2587.903, 4664.768, 34.076, true) < 3.0) then
            if ESX.GetPlayerData().job.name then
                if IsControlJustReleased(0, Keys['E']) then
                    if IsPedInAnyVehicle(playerPed, 0) then
                        --ESX.ShowNotification('Jestes juz w pojezdzie!')
                    else
                        VehicleMenu()
                    end
                end
            end
        end
        if(GetDistanceBetweenCoords(coords, 2596.798, 4675.601, 34.076, true) < 15.0) then
            DrawText3D(2596.798, 4675.601, 34.076, 'Press ~b~[E]', 0.4)
            DrawMarker(1, 2596.798, 4675.601, 33.15, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 2.5, 2.5, 0.25, 178, 3, 3, 100, false, true, 2, false, false, false, false)
        end
        if(GetDistanceBetweenCoords(coords, 2596.798, 4675.601, 34.076, true) < 5.0) then
            if ESX.GetPlayerData().job.name then
                if IsControlJustReleased(0, Keys['E']) then
                    local vehicle   = GetVehiclePedIsIn(playerPed, false)
                    local hash      = GetEntityModel(vehicle)
                    local plate     = GetVehicleNumberPlateText(vehicle)
                    local plate     = string.gsub(plate, " ", "")

                    if hash == GetHashKey("Tractor2") then
                        if GetVehicleEngineHealth(vehicle) <= 700 or GetVehicleBodyHealth(vehicle) <= 700 then
                            TriggerServerEvent('farmer:deletevehicle')
                        end
                    else
                        --ESX.ShowNotification('Oddajesz zły pojazd')
                    end
                end
            end
        end
        if(GetDistanceBetweenCoords(coords, 2590.3410, 4658.019, 34.076, true) < 15.0) then
            DrawText3D(2590.3410, 4658.019, 34.076, 'Locker room: Press ~b~[E]', 0.4)
        end
        if(GetDistanceBetweenCoords(coords, 2590.3410, 4658.019, 34.076, true) < 2.0) then
            if ESX.GetPlayerData().job.name then
                if IsControlJustReleased(0, Keys['E']) then
                    if IsPedInAnyVehicle(playerPed, 0) then
                        --ESX.ShowNotification('Jestes w pojezdzie!')
                    else
                        clothes()
                    end
                end
            end
        end
        if(GetDistanceBetweenCoords(coords, -302.391, 6211.665, 31.420, true) < 15.0) then
            DrawText3D(-302.391, 6211.665, 31.420, 'Paddle: Press ~b~[E]', 0.4)
        end
        if(GetDistanceBetweenCoords(coords, -302.391, 6211.665, 31.420, true) < 3.0) then
            Citizen.Wait(15)
            if ESX.GetPlayerData().job.name then
                if IsControlJustReleased(0, Keys['E']) then
                    if IsPedInAnyVehicle(playerPed, 0) then
                    exports['mythic_notify']:SendAlert('inform', 'You dont have enough raw materials to sell!')
                    else
                        BakeryMenu()
                    end
                end
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(15)
		local coords = GetEntityCoords(GetPlayerPed(-1))
        if (GetDistanceBetweenCoords(coords, 2630.7897, 4710.347, 31.20, true) < 35.0) then
            DrawText3D(2630.7897, 4710.347, 34.076, 'Skupljanje: Pritisni ~b~[E]', 0.4)
			local coords      = GetEntityCoords(GetPlayerPed(-1))
			local isInMarker  = false
            local currentZone = nil
            local playerPed   = GetPlayerPed(-1)
            local vehicle     = GetVehiclePedIsIn(playerPed, false)
            if ESX.GetPlayerData().job.name then
                if (GetDistanceBetweenCoords(coords, 2630.7897, 4710.347, 31.20, true) < 20.0) then
                    if IsControlJustReleased(0, Keys['E']) then
                        if GetPedInVehicleSeat(vehicle, -1) == playerPed and IsPedInAnyVehicle(playerPed, false) then
                            if IsVehicleStopped(vehicle) then
                                --ESX.ShowNotification('Musisz jezdzic!')
                            else
                                if incollect == false then
                                collect()
                                end
                            end
                        end
					end
				end
           end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(15)
		local coords = GetEntityCoords(GetPlayerPed(-1))
        if (GetDistanceBetweenCoords(coords, 2432.02, 4776.35, 34.43, true) < 20.0) then
            DrawText3D(2432.02, 4776.35, 34.43, 'Pritisni ~b~[E] da skupis mleko', 0.4)
			local coords      = GetEntityCoords(GetPlayerPed(-1))
			local isInMarker  = false
            local currentZone = nil
            local playerPed   = GetPlayerPed(-1)
            if ESX.GetPlayerData().job.name then
                if (GetDistanceBetweenCoords(coords, 2432.02, 4776.35, 34.43, true) < 5.0) then
                    if IsControlJustReleased(0, Keys['E']) then
                        if incollect == false then
                            collectt()
                        else
                        end
                    end
                end
            end
        end
    end
end)

Citizen.CreateThread(function()
  
    RequestModel(GetHashKey("a_m_m_hillbilly_01"))
    while not HasModelLoaded(GetHashKey("a_m_m_hillbilly_01")) do
      Wait(155)
    end

      local ped = CreatePed(4, GetHashKey("a_m_m_hillbilly_01"), -302.391, 6211.665, 30.42, 31.407, false, true)
      FreezeEntityPosition(ped, true)
      SetEntityInvincible(ped, true)
      SetBlockingOfNonTemporaryEvents(ped, true)
end)

Citizen.CreateThread(function()
    while true do
        Wait(15)
        local coords = GetEntityCoords(GetPlayerPed(-1))
        if (GetDistanceBetweenCoords(coords, 2677.7280, 4573.000, 40.91, true) < 5.0) then
            DrawText3D(2677.7280, 4573.000, 40.91, 'Flaširanje: Pritisni ~b~[E]', 0.4)
            local coords      = GetEntityCoords(GetPlayerPed(-1))
            local isInMarker  = false
            local currentZone = nil
            local playerPed   = GetPlayerPed(-1)
            if ESX.GetPlayerData().job.name then
                if IsControlJustReleased(0, Keys['E']) then
                    if incollect == false then
                        Citizen.Wait(5)
                        milktobottle()
                    else
                    end
                end
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(15)
        local coords = GetEntityCoords(GetPlayerPed(-1))
        if (GetDistanceBetweenCoords(coords, 2568.2583, 4684.608, 34.05, true) < 5.0) then
            DrawText3D(2568.2583, 4684.608, 34.05, 'Pravljenje hleba: Nacisnij ~b~[E]', 0.4)
            local coords      = GetEntityCoords(GetPlayerPed(-1))
            local isInMarker  = false
            local currentZone = nil
            local playerPed   = GetPlayerPed(-1)
            if ESX.GetPlayerData().job.name then
                if IsControlJustReleased(0, Keys['E']) then
                    if incollect == false then
                        Citizen.Wait(5)
                        wheattobread()
                    end
                end
            end
        end
    end
end)

function VehicleMenu()

    local elements = {
        {label = "Traktor", value = "Tractor2"}
    }

    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'spawn_vehicle',
        {
            title    = 'Garaza',
            align = 'center',
            elements = elements
        },
        function(data, menu)
            for i=1, #elements, 1 do
				menu.close()
				local playerPed = GetPlayerPed(-1)
				local coords    = {x = 2593.2436, y = 4665.035, z = 34.00}
				local Heading   = 310.23291
				local platenum  = math.random(1000, 9999)
				local platePrefix = "FARM"
				ESX.Game.SpawnVehicle("Tractor2", coords, Heading, function(vehicle)
					TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
					SetVehicleNumberPlateText(vehicle, platePrefix .. platenum)
					plate = GetVehicleNumberPlateText(vehicle)
					plate = string.gsub(plate, " ", "")
					name = 'Farmer '..platePrefix
				end)
				break
            end
            menu.close()

    end,
function(data, menu)
    menu.close()
    CurrentAction     = 'vehiclespawn_menu'
    CurrentActionMsg  = 'Pritisni ~INPUT_CONTEXT~, da otvoris garazu'
    CurrentActionData = {}
end
)
end

function BakeryMenu()

    if incollect == false then

	    local elements = {}

        table.insert(elements, {label = ('Prodaj mleko'), value = 'sellmilk'})
    
        table.insert(elements, {label = ('Prodaj pecivo'), value = 'sellbread'})
		
		table.insert(elements, {label = ('Prodaj sok'), value = 'selljuicebottle'})

        ESX.UI.Menu.CloseAll()

	    ESX.UI.Menu.Open(
		    'default', GetCurrentResourceName(), 'action_menu',
            {
                title    = 'Otkup Sirovina',
                align = 'center',
                elements = elements
            },
            function(data, menu)

                if data.current.value == 'sellmilk' then
                    menu.close()
                    bakerymilk()
                end
                if data.current.value == 'sellbread' then
                    menu.close()
                    bakerybread()
                end
                menu.close()
				
				if data.current.value == 'selljuicebottle' then
                    menu.close()
                    bakeryapple()
                end
                menu.close()

            end,
            function(data, menu)
            menu.close()
            CurrentAction     = ''
            CurrentActionMsg  = 'Pritisni ~INPUT_CONTEXT~, da prodas sirovine!'
            CurrentActionData = {}
        end
        )  
        end
    end

function clothes()

    TriggerEvent('skinchanger:getSkin', function(skin)
        
	    if skin.tshirt_1 == 15 and skin.torso_1 == 44 then
		    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
		    TriggerEvent('skinchanger:loadSkin', skin)
	        end)
	    else
		    local clothesSkin = {
			    ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                ['torso_1'] = 44, ['torso_2'] = 0,
			    ['arms'] = 41, ['arms_2'] = 0,
			    ['pants_1'] = 6, ['pants_2'] = 1,
                ['shoes_1'] = 35, ['shoes_2'] = 1
			    }
                TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
        end		
	end)
end

local blips = {

    {title="Njiva", colour=21, id=501, x = 2630.7897, y = 4710.347, z = 34.076},
    {title="Farma", colour=1, id=607, x = 2587.903, y = 4664.768, z = 34.076},
    {title="Postaja", colour=0, id=398, x = 2432.83, y = 4775.83, z = 34.42},
    {title="Flaširanje mleka", colour=0, id=499, x = 2677.7280, y = 4573.000, z = 40.91},
    {title="Pekara", colour=0, id=501, x = 2568.2583, y = 4684.608, z = 34.05},
    {title="Otkup sirovina", colour=2, id=605, x = -302.391, y = 6211.665, z = 31.420}

}  

Citizen.CreateThread(function()

   for _, info in pairs(blips) do
	 info.blip = AddBlipForCoord(info.x, info.y, info.z)
	 SetBlipSprite(info.blip, info.id)
	 SetBlipDisplay(info.blip, 4)
	 SetBlipScale(info.blip, 0.85)
	 SetBlipColour(info.blip, info.colour)
	 SetBlipAsShortRange(info.blip, true)
	 BeginTextCommandSetBlipName("STRING")
	 AddTextComponentString(info.title)
	 EndTextCommandSetBlipName(info.blip)
   end

end)

function collect()
    TriggerServerEvent('farmer:collect')
    exports['mythic_notify']:SendAlert('inform', 'Skupljanje u toku...')
    incollect = true
    Citizen.Wait(11000)
    incollect = false
end

function collectt()
    TriggerServerEvent('farmer:collectt')
    exports['mythic_notify']:SendAlert('inform', 'Skupljanje u toku...')
    incollect = true
    Citizen.Wait(6000)
    incollect = false
end

function milktobottle()
    TriggerServerEvent('farmer:mprocess')
    exports['mythic_notify']:SendAlert('inform', 'Prerada u toku...')
    incollect = true
    Citizen.Wait(6000)
    incollect = false
end

function wheattobread()
    TriggerServerEvent('farmer:wprocess')
    exports['mythic_notify']:SendAlert('inform', 'Prerada u toku...')
    incollect = true
    Citizen.Wait(6000)
    incollect = false
end

function bakerybread()
    TriggerServerEvent('farmer:sellRETRObread')
    exports['mythic_notify']:SendAlert('inform', 'Prodaja u toku...')
    incollect = true
    Citizen.Wait(6000)
    incollect = false
end

function bakerymilk()
    TriggerServerEvent('farmer:sellmilRETROkbottle')
    incollect = true
    Citizen.Wait(6000)
    incollect = false
end

function bakeryapple()
    TriggerServerEvent('farmer:selljuicebottle')
    exports['mythic_notify']:SendAlert('inform', 'Prodali sirovina u toku...')
    incollect = true
    Citizen.Wait(6000)
    incollect = false
end

RegisterNetEvent('farmer:freeze')
AddEventHandler('farmer:freeze', function()
	playerPed = PlayerPedId()	
	ClearPedTasks(PlayerPedId())
	FreezeEntityPosition(playerPed, true)
end)

RegisterNetEvent('farmer:unfreeze')
AddEventHandler('farmer:freeze', function()
	playerPed = PlayerPedId()
	FreezeEntityPosition(playerPed, false)
	ClearPedTasks(PlayerPedId())
end)

RegisterNetEvent('farmer:anim')
AddEventHandler('farmer:anim', function()
	local lib, anim = 'amb@prop_human_bum_bin@idle_b', 'idle_d'
    ESX.Streaming.RequestAnimDict(lib, function()
        TaskPlayAnim(PlayerPedId(), lib, anim, 1.0, -3.0, 5000, 0, 0, false, false, false)
    end)
end)