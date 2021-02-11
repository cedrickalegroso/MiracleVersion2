ESX = nil
TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)

RegisterServerEvent('be-mining:getItem')
AddEventHandler('be-mining:getItem', function()
    local xPlayer, randomItem = ESX.GetPlayerFromId(source), ConfigBE.Items[math.random(1, #ConfigBE.Items)]
    if math.random(0, 100) <= ConfigBE.ChanceToGetItem then
        xPlayer.addInventoryItem(randomItem, 1)
    end
end)