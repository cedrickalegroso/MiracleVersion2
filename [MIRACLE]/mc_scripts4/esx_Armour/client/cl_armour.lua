ESX          = nil
local isFrozen;

RegisterNetEvent('freeze:freezePlayer')
AddEventHandler('freeze:freezePlayer', function()
    isFrozen = not isFrozen
end)


Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)



RegisterNetEvent('retro_scripts:giveadminaccess')
AddEventHandler('retro_scripts:giveadminaccess', function(source)
  exports["rp-radio"]:GivePlayerAccessToFrequencies(1, 2, 3, 4)
end)



RegisterNetEvent('esx_armour:armor')
AddEventHandler('esx_armour:armor', function()

 
 SetPedArmour(GetPlayerPed(-1), 0)
    ClearPedBloodDamage(GetPlayerPed(-1))
    ResetPedVisibleDamage(GetPlayerPed(-1))
    ClearPedLastWeaponDamage(GetPlayerPed(-1))
    ResetPedMovementClipset(GetPlayerPed(-1), 0)

 
   
    ExecuteCommand('e medic')
 
    TriggerEvent('freeze:freezePlayer')
    exports['progressBars']:startUI(5000, "Using Vest")
    Citizen.Wait(5000)
   TriggerEvent('freeze:freezePlayer')
    StopAnimTask(PlayerPedId(-1), 'clothingshirt', 'try_shirt_positive_d', 1.0)
 
    ExecuteCommand('e c')

    --TriggerServerEvent('esx_armour:armorremove')
    TriggerEvent('skinchanger:getSkin', function(skin)


      if skin.sex == 0 then
        TriggerEvent('skinchanger:loadClothes', skin, {['bproof_1'] = 7,  ['bproof_2'] = 1})
        SetPedArmour(GetPlayerPed(-1), 100)
      else
        TriggerEvent('skinchanger:loadClothes', skin, {['bproof_1'] = 7,  ['bproof_2'] = 1})
        SetPedArmour(GetPlayerPed(-1), 100)
      end
      
    end)
    ESX.ShowNotification("You put on armor")
end)

RegisterNetEvent('retro_scripts:noarmor')
AddEventHandler('retro_scripts:noarmor', function(source)
  ESX.ShowNotification("You do not have any armor!")
end)

RegisterNetEvent('retro_scripts:noradio')
AddEventHandler('retro_scripts:noradio', function(source)
  ESX.ShowNotification("You do not have any Radio!")
end)

RegisterNetEvent('esx_armour:armor2')
AddEventHandler('esx_armour:armor2', function(source)



   -- print('using')


   -- TaskStartScenarioInPlace(playerPed, 'try_tie_negative_a', 0, false)



    SetPedArmour(GetPlayerPed(-1), 0)
    ClearPedBloodDamage(GetPlayerPed(-1))
    ResetPedVisibleDamage(GetPlayerPed(-1))
    ClearPedLastWeaponDamage(GetPlayerPed(-1))
    ResetPedMovementClipset(GetPlayerPed(-1), 0)

    

    TriggerEvent("mythic_progbar:client:progress", {
      name = "unique_action_name",
      duration = 10000,
      label = "Using Vest",
      useWhileDead = false,
      canCancel = false,
      controlDisables = {
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
      },
      animation = {
          animDict = "amb@medic@standing@kneel@enter",
          anim = "enter",
      },
      prop = {
          model = "p_para_bag_xmas_s",
      }
  }, function(status)
      if not status then
        TriggerEvent('skinchanger:getSkin', function(skin)

          print('get skin')
          SetPedArmour(GetPlayerPed(-1), 100)

          if skin.sex == 0 then
            TriggerEvent('clothing:loadClothes', skin, {['bproof_1'] = 7,  ['bproof_2'] = 1})
            
          else
            TriggerEvent('clothing:loadClothes', skin, {['bproof_1'] = 7,  ['bproof_2'] = 1})
            
          end
          
        end)
        ESX.ShowNotification("You put on armor")
      end
  end)


    --[[
   ExecuteCommand('e medic')
 
    TriggerEvent('freeze:freezePlayer')
    exports['progressBars']:startUI(5000, "Using Vest")
    Citizen.Wait(5000)
   TriggerEvent('freeze:freezePlayer')
    StopAnimTask(PlayerPedId(-1), 'clothingshirt', 'try_shirt_positive_d', 1.0)
 
    ExecuteCommand('e c')



    



    --TriggerServerEvent('esx_armour:armorremove')
    TriggerEvent('skinchanger:getSkin', function(skin)


     
      if skin.sex == 0 then
        TriggerEvent('skinchanger:loadClothes', skin, {['bproof_1'] = 6,  ['bproof_2'] = 0})
        SetPedArmour(GetPlayerPed(-1), 100)
      else
        TriggerEvent('skinchanger:loadClothes', skin, {['bproof_1'] = 6,  ['bproof_2'] = 0})
        SetPedArmour(GetPlayerPed(-1), 100)
      end

    end)
    ESX.ShowNotification("You put on armor")
    ]]--

 
  
end)


Citizen.CreateThread(function()
  while true do
      FreezeEntityPosition(GetPlayerPed(-1), isFrozen)

      Citizen.Wait(0)
  end
end)
