JAM = {}

TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) JAM.ESX = obj; ESX = obj; end)
AddEventHandler('onMySQLReady', function(...) JAM.SQLReady = true; end)

JAM.Testing = true

Citizen.CreateThread(function(...)
	while not ESX or not JAM.ESX do 
		Citizen.Wait(200)
		TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) JAM.ESX = obj; ESX = obj; end)
	end

	if JAM.Testing then 
		Citizen.Wait(5000)
		if not JAM.SQLReady then JAM.SQLReady = true; end
	end
end)
