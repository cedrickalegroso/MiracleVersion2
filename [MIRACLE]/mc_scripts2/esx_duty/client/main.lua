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


--- action functions
local CurrentAction           = nil
local CurrentActionMsg        = ''
local CurrentActionData       = {}
local HasAlreadyEnteredMarker = false
local LastZone                = nil


--- esx
local GUI = {}
ESX                           = nil
GUI.Time                      = 0
local PlayerData              = {}

Citizen.CreateThread(function ()
  while ESX == nil do
    TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)
    Citizen.Wait(0)
  PlayerData = ESX.GetPlayerData()
  end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

----markers
AddEventHandler('esx_duty:hasEnteredMarker', function (zone, zonejob)

 

  if zone ~= nil then
    CurrentAction     = 'onoff'
    CurrentActionMsg = _U('duty')
    CurrentZoneJob = zonejob
  end
end)

AddEventHandler('esx_duty:hasExitedMarker', function (zone)
  CurrentAction = nil
end)


--keycontrols
Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(1)

        local playerPed = GetPlayerPed(-1)

        local jobirl = zonejob
        
        local jobs = {
            'offambulance',
            'offpolice',
            'police',
            'ambulance',
            'groove',
            'offgroove'
        }

        if CurrentAction ~= nil then
            for k,v in pairs(jobs) do

                if PlayerData.job.name == v then
                    SetTextComponentFormat('STRING')
                    AddTextComponentString(CurrentActionMsg)
                    DisplayHelpTextFromStringLabel(0, 0, 1, -1)

                    local bimby = 'ggg'
                  

                    if IsControlJustPressed(0, Keys['E']) then
                        TriggerServerEvent('duty:onoff')
                        Citizen.Wait(1500)
                        print('Radio Debug Checking')
                        ExecuteCommand('ondutyradio')
                    end
                end
            end

        end

    end       
end)




-- Display markers
Citizen.CreateThread(function ()
  while true do
    Wait(0)

    local coords = GetEntityCoords(GetPlayerPed(-1))

    for k,v in pairs(Config.ZonesDUTY) do
      if(v.Type ~= -1 and GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < Config.DrawDistanceDUTY) then
        DrawMarker(v.Type, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 100, false, true, 2, false, false, false, false)
      end
    end
  end
end)

-- Enter / Exit marker events
Citizen.CreateThread(function ()
  while true do
    Wait(0)

    local coords      = GetEntityCoords(GetPlayerPed(-1))
    local isInMarker  = false
    local currentZone = nil

 

 

    for k,v in pairs(Config.ZonesDUTY) do
  
   --[[
        local job1 = 'off'..PlayerData.job.name
    print('job 1'..job1)
    print('job 2'..'off'..v.job)
 if PlayerData.job.name == v.job or 'off'..PlayerData.job.name == 'off'..v.job  then
 end
   ]]--

        if(GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < v.Size.x) then
          isInMarker  = true
          currentZone = k
          zonejob = v.job
        end
 
      
     
    
    end

   

    if (isInMarker and not HasAlreadyEnteredMarker) or (isInMarker and LastZone ~= currentZone) then
      HasAlreadyEnteredMarker = true
      LastZone                = currentZone
      TriggerEvent('esx_duty:hasEnteredMarker', currentZone, zonejob)
    end

    if not isInMarker and HasAlreadyEnteredMarker then
      HasAlreadyEnteredMarker = false
      TriggerEvent('esx_duty:hasExitedMarker', LastZone)
    end
  end
end)


RegisterNetEvent('retro_scripts:radiofreqoff')
AddEventHandler('retro_scripts:radiofreqoff', function(job)
  exports["rp-radio"]:RemovePlayerAccessToFrequencies(1, 2, 3)
end)

RegisterNetEvent('retro_scripts:radiofreqgrooveon')
AddEventHandler('retro_scripts:radiofreqgrooveon', function(job)
  print('give player access to groove radio')
  exports["rp-radio"]:GivePlayerAccessToFrequency(3)
end)

RegisterNetEvent('retro_scripts:radiofreqemson')
AddEventHandler('retro_scripts:radiofreqemson', function(job)
  print('give player access to ems radio')
  exports["rp-radio"]:GivePlayerAccessToFrequency(1)
end)

RegisterNetEvent('retro_scripts:radiofreqpolon')
AddEventHandler('retro_scripts:radiofreqpolon', function(job)
  print('give player access to police radio')
  exports["rp-radio"]:GivePlayerAccessToFrequency(2)
end)



