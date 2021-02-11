local ESX = nil
local robbableItems = {
 [1] = {chance = 3, id = 0, name = 'Cash', quantity = math.random(5000, 20000)}, -- really common
 [2] = {chance = 10, id = 'lockpick', name = 'Lockpick', quantity = 1}, -- rare
 [3] = {chance = 3, id = 'brownie', name = 'Magic Brownie', quantity = math.random(1, 3)}, -- really common
 [4] = {chance = 5, id = 'nswitch', name = 'Nintendo Switch', quantity = 1}, -- rare
 [5] = {chance = 4, id = 'iphone', name = 'iPhone X', quantity = 1}, -- rare
 [6] = {chance = 5, id = 'casio', name = 'Casio Watch', quantity = 1}, -- rare
 [7] = {chance = 6, id = 'xbox', name = 'Xbox One', quantity = 1}, -- rare
 [8] = {chance = 8, id = 'bluray', name = 'Bluray', quantity = 1}, -- rare
 [9] = {chance = 8, id = 'book', name = 'Book', quantity = 1}, -- rare
 [10] = {chance = 3, id = 'coke1g', name = 'Coke 1G', quantity = 1}, -- rare
 [11] = {chance = 4, id = 'watch', name = 'iPod', quantity = 1}, -- rare
 [12] = {chance = 5, id = 'drill', name = 'Drill', quantity = 1}, -- rare
 [13] = {chance = 5, id = 'gamingperipherals', name = 'Headphones', quantity = 1}, -- rare
 [14] = {chance = 4, id = 'gpixel', name = 'Huawei P20', quantity = 1}, -- rare
 [15] = {chance = 4, id = 'moneda', name = 'Gold coin', quantity = 1}, -- rare
 [16] = {chance = 5, id = 'playstation', name = 'Playstation', quantity = 1}, -- rare
 [17] = {chance = 2, id = 'samsungs10', name = 'Samsung S10', quantity = 1}, -- rare
 [18] = {chance = 1, id = 'speaker', name = 'Speaker', quantity = 1}, -- rare
 [19] = {chance = 3, id = 'tablet', name = 'iPad', quantity = 1}, -- rare
 [20] = {chance = 7, id = 'laptop', name = 'Laptop', quantity = 1}, -- rare
 [21] = {chance = 2, id = 'gameboy', name = 'Game Boy', quantity = 1}, -- rare
 [22] = {chance = 7, id = 'weed4g', name = 'Weed (4G)', quantity = 1}, -- rare
 [23] = {chance = 9, id = 'meth1g', name = 'Meth (1G)', quantity = 1}, -- rare

}

--[[chance = 1 is very common, the higher the value the less the chance]]--

TriggerEvent('esx:getShRETROaredObjRETROect', function(obj)
 ESX = obj
end)

ESX.RegisterUsableItem('advancedlockpick', function(source) --Hammer high time to unlock but 100% call cops
 local source = tonumber(source)
 local xPlayer = ESX.GetPlayerFromId(source)
 TriggerClientEvent('houseRobberies:attempt', source, xPlayer.getInventoryItem('advancedlockpick').count)
end)

RegisterServerEvent('houseRobberies:removeLockpick')
AddEventHandler('houseRobberies:removeLockpick', function()
 local source = tonumber(source)
 local xPlayer = ESX.GetPlayerFromId(source)
 xPlayer.removeInventoryItem('advancedlockpick', 1)
 --TriggerClientEvent('chatMessage', source, '^1Your lockpick has bent out of shape')
-- TriggerClientEvent('notification', source, 'The lockpick bent out of shape.', 2)
end)

RegisterServerEvent('houseRobberies:giveMoney')
AddEventHandler('houseRobberies:giveMoney', function()
 local source = tonumber(source)
 local xPlayer = ESX.GetPlayerFromId(source)
 local cash = math.random(100, 800)
 xPlayer.addMoney(cash)
 --TriggerClientEvent('chatMessage', source, '^4You have found $'..cash)
-- TriggerClientEvent('notification', source, 'You found $'..cash)
TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You found $'..cash, length = 2500, style = { ['background-color'] = '#0074BF', ['color'] = '#ffffff' } })

end)


RegisterServerEvent('houseRobberies:searchItem')
AddEventHandler('houseRobberies:searchItem', function()
 local source = tonumber(source)
 local item = {}
 local xPlayer = ESX.GetPlayerFromId(source)
 local gotID = {}


 for i=1, math.random(1, 2) do
  item = robbableItems[math.random(1, #robbableItems)]
  if math.random(1, 10) >= item.chance then
   if tonumber(item.id) == 0 and not gotID[item.id] then
    gotID[item.id] = true
    xPlayer.addMoney(item.quantity)
    --TriggerClientEvent('chatMessage', source, 'You found $'..item.quantity)
    TriggerClientEvent('notification', source, 'Encontraste $'..item.quantity)
   elseif item.isWeapon and not gotID[item.id] then
    gotID[item.id] = true
    xPlayer.addWeapon(item.id, 50)
    --TriggerClientEvent('chatMessage', source, 'You found a '..item.name)
--    TriggerClientEvent('notification', source, 'Item Added!', 2)
TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You found a weapon', length = 2500, style = { ['background-color'] = '#0074BF', ['color'] = '#ffffff' } })
   elseif not gotID[item.id] then
    gotID[item.id] = true
    xPlayer.addInventoryItem(item.id, item.quantity)
    --TriggerClientEvent('chatMessage', source, 'You have found '..item.quantity..'x '..item.name)
--    TriggerClientEvent('notification', source, 'Item Added!', 2)
   end
  end
 end
end)
