ESX = nil
TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)

RegisterServerEvent('be-mining:getItem')
AddEventHandler('be-mining:getItem', function()
    local xPlayer, randomItem = ESX.GetPlayerFromId(source), Config.Items[math.random(1, #Config.Items)]
    if math.random(0, 100) <= Config.ChanceToGetItem then
        xPlayer.addInventoryItem(randomItem, 1)
    end
end)