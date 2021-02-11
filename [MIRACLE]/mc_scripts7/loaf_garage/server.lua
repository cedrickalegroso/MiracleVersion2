ESX = nil
TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)

RegisterServerEvent('esx_garage:viewVehicles')
AddEventHandler('esx_garage:viewVehicles', function(garage)
    local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
	local vehicles = {}

	MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner=@identifier AND Type = @Type and `stored` = TRUE  AND job = @job' ,{['@identifier'] = xPlayer.identifier, ['@Type'] = 'car', ['@job'] = 'civ'}, function(result) 
        for k, v in pairs(result) do
            table.insert(vehicles, v)
        end
        if #vehicles >= 1 then
            if json.decode(vehicles[1].vehicle).model then
                TriggerClientEvent('esx_garage:view', src, vehicles, garage)
            else
                TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Garage - no vehicle found' })
            end
        else
            TriggerClientEvent('retro_scripts:nocarsfound',source)
        end
	end)
end)

RegisterServerEvent('esx_garage:impound')
AddEventHandler('esx_garage:impound', function(vehicleSpawn)
    local xPlayer = ESX.GetPlayerFromId(source)
    MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner=@identifier AND state=false',{['@identifier'] = xPlayer.identifier}, function(result) 
        local impounded = {}
        for k, v in pairs(result) do
            table.insert(impounded, v)
        end
        TriggerClientEvent('esx_garage:openImpound', xPlayer.source, vehicleSpawn, impounded)
    end)
end)

RegisterServerEvent('esx_garage:storeVehicle')
AddEventHandler('esx_garage:storeVehicle', function(vehicleInfo)
    print('TRIED STORING')
    local xPlayer = ESX.GetPlayerFromId(source)
    local owner = MySQL.Sync.fetchScalar("SELECT owner FROM owned_vehicles WHERE plate=@plate", {['@plate'] = vehicleInfo.plate})
    if owner then
        if owner == xPlayer.identifier then
            MySQL.Sync.execute("UPDATE owned_vehicles SET vehicle=@vehicle,  state=true WHERE plate=@plate",{['@vehicle'] = json.encode(vehicleInfo), ['@plate'] = vehicleInfo.plate})
            TriggerClientEvent('esx_garage:stored', xPlayer.source)
        else
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Garage - you do not own this vehicle!' })
        end
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Garage - you do not own this vehicle!' })
    end
end)

RegisterServerEvent('esx_garage:takeOut')
AddEventHandler('esx_garage:takeOut', function(vehicleInfo, garage)
   -- print(garage.coords)
   -- print(vehicleInfo)
    local xPlayer = ESX.GetPlayerFromId(source)
    MySQL.Sync.execute("UPDATE owned_vehicles SET `stored`= FALSE WHERE plate=@plate",{['@plate'] = vehicleInfo.plate})

    TriggerClientEvent('esx_garage:spawnVehicle', xPlayer.source, vehicleInfo, garage, 15)
end)

RegisterServerEvent('esx_garage:getImpounded')
AddEventHandler('esx_garage:getImpounded', function(coords, heading, car)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getMoney() >= ConfigLOAFGARAGE.ImpoundPrice then
        xPlayer.removeMoney(ConfigLOAFGARAGE.ImpoundPrice)
        TriggerClientEvent('esx_garage:spawnVehicle', xPlayer.source, car, coords, heading)
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You dont have enough money!' })
    end
end)

