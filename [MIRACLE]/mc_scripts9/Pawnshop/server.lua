local ESX = nil

TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)

-- Server Event for Buying:
RegisterServerEvent("esx_PawnShop:BuyItem")
AddEventHandler("esx_PawnShop:BuyItem", function(amountToBuy,totalBuyPrice,itemName)
	local xPlayer = ESX.GetPlayerFromId(source)
	local itemLabel = ESX.GetItemLabel(itemName)
	if xPlayer.getMoney() >= totalBuyPrice then
		xPlayer.removeMoney(totalBuyPrice)
		xPlayer.addInventoryItem(itemName, amountToBuy)
		TriggerClientEvent("esx:showNotification",source,"You paid ~g~$"..totalBuyPrice.."~s~ for "..amountToBuy.."x ~y~"..itemLabel.."~s~")
	else
		TriggerClientEvent("esx:showNotification",source,"Not enough money")
	end
end)

-- Server Event for Selling:
RegisterServerEvent("esx_PawnShop:SellItem")
AddEventHandler("esx_PawnShop:SellItem", function(amountToSell,totalSellPrice,itemName)
	local xPlayer = ESX.GetPlayerFromId(source)
	local itemLabel = ESX.GetItemLabel(itemName)
	if xPlayer.getInventoryItem(itemName).count >= amountToSell then
		xPlayer.addAccountMoney("bank", totalSellPrice)
		xPlayer.removeInventoryItem(itemName, amountToSell)
--		TriggerClientEvent("esx:showNotification",source,"You sold "..amountToSell.."x ~y~"..itemLabel.."~s~ for ~g~$"..totalSellPrice.."~s~")
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Sold '..amountToSell.." "..itemLabel.." for $ "..totalSellPrice.." ", length = 2500, style = { ['background-color'] = '#0089C4', ['color'] = '#ffffff' } })
	else
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You dont have enough', length = 2500, style = { ['background-color'] = '#C40000', ['color'] = '#ffffff' } })
	end
end)
