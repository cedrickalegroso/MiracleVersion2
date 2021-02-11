-- 2018 Henric 'Kekke' Johansson

ConfigTackleTackle                            	= {}
ConfigTackleTackle.TackleDistance				= 3.0



ESX = nil

TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)

RegisterServerEvent('esx_kekke_tackle:tryTackle')
AddEventHandler('esx_kekke_tackle:tryTackle', function(target)
	local targetPlayer = ESX.GetPlayerFromId(target)

	TriggerClientEvent('esx_kekke_tackle:getTackled', targetPlayer.source, source)
	TriggerClientEvent('esx_kekke_tackle:playTackle', source)
end)