ESX = nil

TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)

RegisterServerEvent('esx_plasticsurgery:pay')
AddEventHandler('esx_plasticsurgery:pay', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeMoney(ConfigPlastic.Price)
	TriggerClientEvent('esx:showNotification', source, _U('you_paid', ESX.Math.GroupDigits(ConfigPlastic.Price)))
end)

ESX.RegisterServerCallback('esx_plasticsurgery:checkMoney', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)

	cb(xPlayer.get('money') >= ConfigPlastic.Price)
end)


RegisterCommand("enginetoggle", function(source)
	TriggerClientEvent('retro_scripts:engine', source)
end)