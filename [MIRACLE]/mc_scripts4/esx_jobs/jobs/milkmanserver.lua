ESX = nil

TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)



RegisterServerEvent('smerfikcraft:zlomiarzzbier2') 
AddEventHandler('smerfikcraft:zlomiarzzbier2', function()
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local jabka = xPlayer.getInventoryItem('mleko').count
    if jabka < 100 then
    if xPlayer.job.name == 'krowa' then

        TriggerClientEvent('wiadro:postaw', _source)
        TriggerClientEvent('smerfik:zamrozcrft222', _source)


        TriggerClientEvent('zacznijtekst22', _source)

        TriggerClientEvent('smerfik:craftanimacja222', _source)
        TriggerClientEvent('smerfik:tekstjab22', _source)
        Citizen.Wait(1000)


       -- TriggerClientEvent('smerfik:craftanimacja22', _source)
        Citizen.Wait(1000)

       -- TriggerClientEvent('smerfik:craftanimacja22', _source)
        Citizen.Wait(1000)
--
      --  TriggerClientEvent('smerfik:craftanimacja22', _source)
        Citizen.Wait(1000)
      --  TriggerClientEvent('smerfik:craftanimacja22', _source)

        Citizen.Wait(1000)
        Citizen.Wait(1000)


       -- TriggerClientEvent('smerfik:craftanimacja22', _source)
        Citizen.Wait(1000)

       -- TriggerClientEvent('smerfik:craftanimacja22', _source)
        Citizen.Wait(1000)
--
      --  TriggerClientEvent('smerfik:craftanimacja22', _source)
        Citizen.Wait(1000)
      --  TriggerClientEvent('smerfik:craftanimacja22', _source)

        Citizen.Wait(1000)
       local ilosc = math.random(25,25)
        xPlayer.addInventoryItem('mleko', ilosc)
        TriggerClientEvent('smerfik:odmrozcrft222', _source)

        TriggerClientEvent('esx:showNotification', _source, 'Zebrałeś ~y~'.. ilosc .. ' mleka')


else
    TriggerClientEvent('smerfik:stopcraftanimacja22', _source)
    TriggerClientEvent('esx:showNotification', _source, '~y~!')
end 
else
    TriggerClientEvent('smerfik:zdejmijznaczek22', _source)
    TriggerClientEvent('esx:showNotification', _source, '~y~You dont have room for more milk!')   
end
end)


RegisterServerEvent('smerfik:pobierzjablka22') 
AddEventHandler('smerfik:pobierzjablka22', function()
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
        xPlayer.removeMoney(3000)

end)
RegisterServerEvent('smerfik:pobierzjablka222') 
AddEventHandler('smerfik:pobierzjablka222', function()
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
xPlayer.addMoney(3000)
        TriggerClientEvent('esx:deleteVehicle', source)

end)
RegisterServerEvent('smerfikcraft:skRETROup22') 
AddEventHandler('smerfikcraft:skRETROup22', function()
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local jabka = xPlayer.getInventoryItem('mleko').count
    if xPlayer.job.name == 'krowa' then
        print(jabka)
    if jabka > 100 then 
        TriggerClientEvent('odlacz:propa3', _source)
        local cena = 25
        xPlayer.removeInventoryItem('mleko', ESX.Math.Round(jabka / 4))
        TriggerClientEvent('sprzedawanie:jablekanim22', _source)
        Citizen.Wait(3000)
        xPlayer.removeInventoryItem('mleko', ESX.Math.Round(jabka / 4))
        TriggerClientEvent('sprzedawanie:jablekanim22', _source)
        Citizen.Wait(3000)
        xPlayer.removeInventoryItem('mleko', ESX.Math.Round(jabka / 4))
        TriggerClientEvent('sprzedawanie:jablekanim22', _source)
        Citizen.Wait(3000)
        local jabka2 = xPlayer.getInventoryItem('mleko').count
        xPlayer.removeInventoryItem('mleko', jabka2)
        TriggerClientEvent('sprzedawanie:jablekanim22', _source)
        Citizen.Wait(3000)
        xPlayer.addMoney(jabka * cena)
        TriggerClientEvent('odlacz:propa2', _source)
        TriggerClientEvent('esx:showHelpNotification', _source, 'You have sold ~y~' .. ESX.Math.Round(jabka) ..' ~w~ Milks  for : ~g~' .. jabka * cena .. '$')
    else
        TriggerClientEvent('esx:showHelpNotification', _source, '~y~You dont have milk')
    end
else
    TriggerClientEvent('esx:showHelpNotification', source, '~y~Nie jestes mleczarzem!')
end 
end)
