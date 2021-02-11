ESX = nil
TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)

ESX.RegisterUsableItem('vehgps', function(source)

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)


	TriggerClientEvent('esx_cichygps:lokalizator', source)

end)




  RegisterServerEvent('esx_cichygps:zabierz')
  AddEventHandler('esx_cichygps:zabierz', function()
    local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('vehgps', 1)

end)

