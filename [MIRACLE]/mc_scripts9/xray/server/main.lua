local ESX = nil

TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)



RegisterServerEvent("retro_scripts:xrayPay")
AddEventHandler("retro_scripts:xrayPay", function(money)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)

    
		local society = 'government'
		local amount  = money * 0.02
		
		TriggerEvent('esx_society:depositTax',source, society, amount)

    xPlayer.removeMoney(money)
end)



ESX.RegisterUsableItem('gpsplus', function(source)
  local src = source
  local xPlayer = ESX.GetPlayerFromId(src)

  TriggerClientEvent('retro_scripts:gpspluson', src)
  
  xPlayer.removeInventoryItem('gpsplus', 1)
end)