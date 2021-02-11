ESX = nil

TriggerEvent('esx:getShRETROaredObjRETROect', function(obj)
    ESX = obj
end) 

RegisterServerEvent("r3_prospecting:sellItem")
AddEventHandler("r3_prospecting:sellItem", function(itemName, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	local price = Config.PawnshopItems[itemName]
	local xItem = xPlayer.getInventoryItem(itemName)

	if not price then
		--print(('r3_prospecting: %s attempted to sell an invalid item!'):format(xPlayer.identifier))
		return
	end

	if xItem.count < amount then
	
		TriggerClientEvent('esx:showNotification', xPlayer.source, 'You Sold')
		return
	end

	price = ESX.Math.Round(price * amount)

	if Config.GiveBlack then
		xPlayer.addAccountMoney('dirtycash', price)
	else
		xPlayer.addAccountMoney('cash', price)
	end

	xPlayer.removeInventoryItem(xItem.name, amount)
	TriggerClientEvent("esx:showNotification", xPlayer.source, "You sold " .. amount .. " " .. xItem.label .. " for $" .. ESX.Math.GroupDigits(price))
end)