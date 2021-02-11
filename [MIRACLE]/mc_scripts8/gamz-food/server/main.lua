local ESX = nil

TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)



RegisterServerEvent("gamz-food:removeMoney")
AddEventHandler("gamz-food:removeMoney", function(money)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)

    
		local society = 'government'
		local amount  = money * 0.12
		
		TriggerEvent('esx_society:depositTax',source, society, amount)

    xPlayer.removeMoney(money)
end)



