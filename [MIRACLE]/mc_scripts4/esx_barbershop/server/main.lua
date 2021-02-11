ESX = nil

TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)

RegisterServerEvent('esx_barbershop:pay')
AddEventHandler('esx_barbershop:pay', function()

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeMoney(Config.PriceBAR)

	TriggerClientEvent('esx:showNotification', source, _U('you_paid') .. '$' .. Config.PriceBAR)

end)

ESX.RegisterServerCallback('esx_barbershop:checkMoney', function(source, cb)

	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.get('money') >= Config.PriceBAR then
		cb(true)
	else
		cb(false)
	end

end)
