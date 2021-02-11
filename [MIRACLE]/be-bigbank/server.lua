ESX = nil
TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)
local mincash = 7000 -- minimum amount of cash a pile holds
local maxcash = 7700 -- maximum amount of cash a pile can hold
local black = true -- enable this if you want blackmoney as a reward
local mincops = 1 -- minimum required cops to start mission
local enablesound = true -- enables bank alarm sound
local lastrobbed = 0 -- don't change this
local cooldown = 360 -- amount of time to do the heist again in seconds (30min)
local info = {stage = 0, style = nil, locked = false}
local totalcash = 0
local PoliceDoors = {
    {loc = vector3(257.10, 220.30, 106.28), txtloc = vector3(257.10, 220.30, 106.28), model = "hei_v_ilev_bk_gate_pris", model2 = "hei_v_ilev_bk_gate_molten", obj = nil, obj2 = nil, locked = true},
    {loc = vector3(236.91, 227.50, 106.29), txtloc = vector3(236.91, 227.50, 106.29), model = "v_ilev_bk_door", model2 = "v_ilev_bk_door", obj = nil, obj2 = nil, locked = true},
    {loc = vector3(262.35, 223.00, 107.05), txtloc = vector3(262.35, 223.00, 107.05), model = "hei_v_ilev_bk_gate2_pris", model2 = "hei_v_ilev_bk_gate2_pris", obj = nil, obj2 = nil, locked = true},
    {loc = vector3(252.72, 220.95, 101.68), txtloc = vector3(252.72, 220.95, 101.68), model = "hei_v_ilev_bk_safegate_pris", model2 = "hei_v_ilev_bk_safegate_molten", obj = nil, obj2 = nil, locked = true},
    {loc = vector3(261.01, 215.01, 101.68), txtloc = vector3(261.01, 215.01, 101.68), model = "hei_v_ilev_bk_safegate_pris", model2 = "hei_v_ilev_bk_safegate_molten", obj = nil, obj2 = nil, locked = true},
    {loc = vector3(253.92, 224.56, 101.88), txtloc = vector3(253.92, 224.56, 101.88), model = "v_ilev_bk_vaultdoor", model2 = "v_ilev_bk_vaultdoor", obj = nil, obj2 = nil, locked = true}
}
ESX.RegisterServerCallback("be-bigbank:GetData", function(source, cb)
    cb(info)
end)
ESX.RegisterServerCallback("be-bigbank:GetDoors", function(source, cb)
    cb(PoliceDoors)
end)
ESX.RegisterServerCallback("be-bigbank:startevent", function(source, cb, method)
    local xPlayers = ESX.GetPlayers()
    local copcount = 0
    local yPlayer = ESX.GetPlayerFromId(source)

    if not info.locked then
        if (os.time() - cooldown) > lastrobbed then
            for i = 1, #xPlayers, 1 do
                local xPlayer = ESX.GetPlayerFromId(xPlayers[i])

                if xPlayer then
                    if xPlayer.job.name == "police" then
                        copcount = copcount + 1
                    end
                end
            end
            if copcount >= mincops then
                if method == 1 then
                    local item = yPlayer.getInventoryItem("thermal_charge")["count"]

                    if item >= 1 then
                        yPlayer.removeInventoryItem("thermal_charge", 1)
                        cb(true)
                        info.stage = 1
                        info.style = 1
                        info.locked = true
                    else
                        cb("You don't have any thermal charges.")
                    end
                elseif method == 2 then
                    local item = yPlayer.getInventoryItem("lockpick")["count"]

                    if item >= 1 then
                        yPlayer.removeInventoryItem("lockpick", 1)
                        info.stage = 1
                        info.style = 2
                        info.locked = true
                        cb(true)
                    else
                        cb("You don't have any lockpicks.")
                    end
                end
            else
                cb("There must be at least "..mincops.." police in the city.")
            end
        else
            cb(math.floor((cooldown - (os.time() - lastrobbed)) / 60)..":"..math.fmod((cooldown - (os.time() - lastrobbed)), 60).." left until the next robbery.")
        end
    else
        cb("Bank is currently being robbed.")
    end
end)
ESX.RegisterServerCallback("be-bigbank:checkItem", function(source, cb, itemname)
    local xPlayer = ESX.GetPlayerFromId(source)
    local item = xPlayer.getInventoryItem(itemname)["count"]

    if item >= 1 then
        cb(true)
    else
        cb(false)
    end
end)
ESX.RegisterServerCallback("be-bigbank:gettotalcash", function(source, cb)
    cb(totalcash)
end)
RegisterServerEvent("be-bigbank:removeitem")
AddEventHandler("be-bigbank:removeitem", function(itemname)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem(itemname, 1)
end)
RegisterServerEvent("be-bigbank:updatecheck")
AddEventHandler("be-bigbank:updatecheck", function(var, status)
    TriggerClientEvent("be-bigbank:updatecheck_c", -1, var, status)
end)
--[[RegisterServerEvent("be-bigbank:toggleDoor")
AddEventHandler("be-bigbank:toggleDoor", function(door, coords, status)
    TriggerClientEvent("be-bigbank:toggleDoor_c", -1, door, coords, status)
end)]]
RegisterServerEvent("be-bigbank:policeDoor")
AddEventHandler("be-bigbank:policeDoor", function(doornum, status)
    PoliceDoors[doornum].locked = status
    TriggerClientEvent("be-bigbank:policeDoor_c", -1, doornum, status)
end)
RegisterServerEvent("be-bigbank:moltgate")
AddEventHandler("be-bigbank:moltgate", function(x, y, z, oldmodel, newmodel, method)
    TriggerClientEvent("be-bigbank:moltgate_c", -1, x, y, z, oldmodel, newmodel, method)
end)
RegisterServerEvent("be-bigbank:fixdoor")
AddEventHandler("be-bigbank:fixdoor", function(hash, coords, heading)
    TriggerClientEvent("be-bigbank:fixdoor_c", -1, hash, coords, heading)
end)
RegisterServerEvent("be-bigbank:openvault")
AddEventHandler("be-bigbank:openvault", function(method)
    TriggerClientEvent("be-bigbank:openvault_c", -1, method)
end)
--[[RegisterServerEvent("be-bigbank:startloot")
AddEventHandler("be-bigbank:startloot", function()
    TriggerClientEvent("be-bigbank:startloot_c", -1)
end)--]]
RegisterServerEvent("be-bigbank:rewardCash")
AddEventHandler("be-bigbank:rewardCash", function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local reward = math.random(mincash, maxcash)

    if black then
        xPlayer.addAccountMoney("black_money", reward)
        totalcash = totalcash + reward
    else
        xPlayer.addMoney(reward)
        totalcash = totalcash + reward
    end
end)
--[[RegisterServerEvent("be-bigbank:rewardGold")
AddEventHandler("be-bigbank:rewardGold", function()
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.addInventoryItem("bread", 1)
end)
RegisterServerEvent("be-bigbank:rewardDia")
AddEventHandler("be-bigbank:rewardDia", function()
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.addInventoryItem("water", 1)
end)--]]
RegisterServerEvent("be-bigbank:giveidcard")
AddEventHandler("be-bigbank:giveidcard", function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    xPlayer.addInventoryItem("id_card", 1)
end)
RegisterServerEvent("be-bigbank:ostimer")
AddEventHandler("be-bigbank:ostimer", function()
    lastrobbed = os.time()
    info.stage, info.style, info.locked = 0, nil, false
    Citizen.Wait(500000)
    for i = 1, #PoliceDoors, 1 do
        PoliceDoors[i].locked = true
        TriggerClientEvent("be-bigbank:policeDoor_c", -1, i, true)
    end
    totalcash = 0
    TriggerClientEvent("be-bigbank:reset", -1)
end)
RegisterServerEvent("be-bigbank:gas")
AddEventHandler("be-bigbank:gas", function()
    TriggerClientEvent("be-bigbank:gas_c", -1)
end)
RegisterServerEvent("be-bigbank:ptfx")
AddEventHandler("be-bigbank:ptfx", function(method)
    TriggerClientEvent("be-bigbank:ptfx_c", -1, method)
end)
RegisterServerEvent("be-bigbank:alarm_s")
AddEventHandler("be-bigbank:alarm_s", function(toggle)
    if enablesound then
        TriggerClientEvent("be-bigbank:alarm", -1, toggle)
    end
	
    TriggerClientEvent("be-bigbank:policenotify")
end)
