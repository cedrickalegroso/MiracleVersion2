function setBleedingOn(ped)
   SetEntityHealth(ped,GetEntityHealth(ped)-1)
   if not effect then
  StartScreenEffect('Rampage', 0, true)
  effect = true
  end
   ShakeGameplayCam("SMALL_EXPLOSION_SHAKE", 0.3)
   InfoRanny("~r~You are badly injured please heal up!")
   Wait(7000)
end

function setBleedingOff(ped)
   effect = false
   StopScreenEffect('Rampage')
end

local effect = false

Citizen.CreateThread(function()
while true do
Wait(0)
local player = GetPlayerPed(-1)
local Health = GetEntityHealth(player)

 if Health <= 139  then
    setBleedingOn(player)

 elseif Health > 140 then
   setBleedingOff(player)
 end
end
end)
 
function InfoRanny(text)
SetNotificationTextEntry("STRING")
AddTextComponentString(text)
DrawNotification(false, false)
end