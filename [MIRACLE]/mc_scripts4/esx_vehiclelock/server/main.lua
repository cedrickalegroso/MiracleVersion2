ESX = nil

ConfigLock = {}

ConfigLock.Locale = 'en'

TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)

ESX.RegisterServerCallback('esx_vehiclelock:requestPlayerCars', function(source, cb, plate)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT 1 FROM owned_vehicles WHERE owner = @owner AND plate = @plate', {
		['@owner'] = xPlayer.identifier,
		['@plate'] = plate
	}, function(result)
		cb(result[1] ~= nil)
	end)
end)


RegisterServerEvent('retro_scripts:playlocksound')
AddEventHandler('retro_scripts:playlocksound', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerEvent('InteractSound_SV:PlayOnAll','demo',0.5)
end)



