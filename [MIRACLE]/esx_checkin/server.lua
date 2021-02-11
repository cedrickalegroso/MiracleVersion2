-- ESX Stuff (DON'T TOUCH!!!)
ESX = nil 
 
TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end) 

-- Main events
RegisterServerEvent('esx_checkin:keyPressed')
AddEventHandler('esx_checkin:keyPressed', function()
	TriggerClientEvent('esx_checkin:checkIn', source)
end)

RegisterServerEvent('esx_checkin:takeMoney')
AddEventHandler('esx_checkin:takeMoney', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You have been healed and charged 5000 Pesos'})
	xPlayer.removeMoney(5000)
end)




