ESX = nil

TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)

RegisterServerEvent('farmer:deletevehicle') 
AddEventHandler('farmer:deletevehicle', function()
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx:deleteVehicle', source)
end)

RegisterServerEvent('farmer:collect') 
AddEventHandler('farmer:collect', function()
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local wheat = xPlayer.getInventoryItem('wheat').count
    if wheat < 50 then
        if xPlayer.job then
            Citizen.Wait(5000)
            local countwheat = math.random(1,3)
            xPlayer.addInventoryItem('wheat', countwheat)
            Citizen.Wait(5000)
            xPlayer.addInventoryItem('wheat', countwheat)
            Citizen.Wait(5000)
            xPlayer.addInventoryItem('wheat', countwheat)
            TriggerClientEvent('esx:showNotification', _source, 'Zebrałeś ~r~'.. ESX.Math.Round(countwheat) .. ' zboża')
        end
    end
end)

RegisterServerEvent('farmer:collectt') 
AddEventHandler('farmer:collectt', function()
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local mleko = xPlayer.getInventoryItem('mleko').count
    if mleko < 50 then
        if xPlayer.job then
            TriggerClientEvent('farmer:anim', _source)
            Citizen.Wait(5000)
            local countmleko = math.random(1,3)
            xPlayer.addInventoryItem('mleko', countmleko)
            TriggerClientEvent('farmer:unfreeze', _source)
            TriggerClientEvent('esx:showNotification', _source, 'Wylales ~r~'.. ESX.Math.Round(countmleko) .. ' mleka z maszyny')
        end
    end
end)

RegisterServerEvent('farmer:mprocess')
AddEventHandler('farmer:mprocess', function()
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local mleko = xPlayer.getInventoryItem('mleko').count
    if mleko > 5 then
        if xPlayer.job then
            TriggerClientEvent('farmer:anim', _source)
            xPlayer.removeInventoryItem('mleko', 1)
            Citizen.Wait(5000)
            xPlayer.addInventoryItem('milkbottle', 1)
            TriggerClientEvent('farmer:unfreeze', _source)
            Citizen.Wait(5000)
            TriggerClientEvent('esx:showNotification', _source, 'Przelales ~r~mleko ~w~do butelki')
        end
    end
end)

RegisterServerEvent('farmer:wprocess')
AddEventHandler('farmer:wprocess', function()
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local wheat = xPlayer.getInventoryItem('wheat').count
    if wheat > 10 then
        if xPlayer.job then
            TriggerClientEvent('farmer:anim', _source)
            xPlayer.removeInventoryItem('wheat', 10)
            Citizen.Wait(5000)
            xPlayer.addInventoryItem('goodbread', 1)
            TriggerClientEvent('farmer:unfreeze', _source)
            Citizen.Wait(5000 )
        end
    end
end)

RegisterServerEvent('farmer:sellmilRETROkbottle')
AddEventHandler('farmer:sellmilRETROkbottle', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local milkbottle = xPlayer.getInventoryItem('milkbottle').count
    if xPlayer.job then
        if milkbottle >= 1 then
            local money = math.random(95,146)
            TriggerClientEvent('farmer:anim', _source)
            Citizen.Wait(3000)
            xPlayer.removeInventoryItem('milkbottle', 1)
            Citizen.Wait(100)
            xPlayer.addMoney(money)
        end
    end
end)

RegisterServerEvent('farmer:sellRETRObread')
AddEventHandler('farmer:sellRETRObread', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local goodbread = xPlayer.getInventoryItem('goodbread').count
    if xPlayer.job then
        if goodbread >= 1 then
            local money = math.random(78,135)
            TriggerClientEvent('farmer:anim', _source)
            Citizen.Wait(3000)
            xPlayer.removeInventoryItem('goodbread', 1)
            Citizen.Wait(100)
            xPlayer.addMoney(money)
        end
    end
end)

RegisterServerEvent('farmer:selljuicebottle')
AddEventHandler('farmer:selljuicebottle', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local sok = xPlayer.getInventoryItem('sok').count
    if xPlayer.job then
        if sok >= 1 then
            local money = math.random(95,146)
            TriggerClientEvent('farmer:anim', _source)
            Citizen.Wait(3000)
            xPlayer.removeInventoryItem('sok', 1)
            Citizen.Wait(100)
            xPlayer.addMoney(money)
            exports['mythic_notify']:SendAlert('inform', 'Prodali ste sok')
        end
    end
end)