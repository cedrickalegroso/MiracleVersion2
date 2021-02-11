--DONT CHANGE IN HERE, JUST GO TO ConfigLOGGER.LUA--
ESX = nil

TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)

function sendToDiscord (name,message,color)
  local DiscordWebHook = ConfigLOGGER.webhook
  local DISCORD_IMAGE = ConfigLOGGER.image


local embeds = {
    {
        ["title"]=message,
        ["type"]="rich",
        ["color"] =color,
        ["footer"]=  {
            ["text"]= "Discord Bot by Cedrick Alegroso",
			["icon_url"] = DISCORD_IMAGE,
       },
    }
}

  if message == nil or message == '' then return FALSE end
  PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end

-- Send the first notification
sendToDiscord('server','server started',ConfigLOGGER.green)

-- Event when a player is writing
AddEventHandler('chatMessage', function(author, color, message)
  if(settings.LogChatServer)then
      local player = ESX.GetPlayerFromId(author)
     sendToDiscord('chat', player.name .." : "..message,ConfigLOGGER.grey)
  end
end)


-- Event when a player is connecting
RegisterServerEvent("esx:playerconnected")
AddEventHandler('esx:playerconnected', function()
  if(settings.LogLoginServer)then
    sendToDiscord( 'new connection', GetPlayerName(source) .." ".. 'connecting...',ConfigLOGGER.grey)
  end
end)

-- Event when a player is disconnecting
AddEventHandler('playerDropped', function(reason)
  if(settings.LogLoginServer)then
    sendToDiscord('Disconnected', GetPlayerName(source) .." ".. 'Has Disconnected' .. "("..reason..")",ConfigLOGGER.grey)
  end
end)



-- Add event when a player is kicked
-- TriggerEvent("esx:kickhammer",GetPlayerName(source),GetPlayerName(id)) -> es_admin2
RegisterServerEvent("esx:kickhammer")
AddEventHandler("esx:kickhammer", function(name,staff)
   if(settings.LogBanhammer)then
    sendToDiscordBan('banhammer',staff.." "..'kicked by'.." "..name,ConfigLOGGER.pink)
   end

end)

-- Add event when a player is banned
-- TriggerEvent("esx:banhammer",GetPlayerName(source),GetPlayerName(id)) -> es_admin2
RegisterServerEvent("esx:banhammer")
AddEventHandler("esx:banhammer", function(name,staff)
   if(settings.LogBanhammer)then
    sendToDiscordBan('banhammer',staff.." "..'banned by'.." "..name,ConfigLOGGER.purple)
   end

end)



-- Add event when a player give an item
-- TriggerEvent("esx:giveitemalert",sourceXPlayer.name,targetXPlayer.name,ESX.Items[itemName].label,itemCount) -> ESX_extended
RegisterServerEvent("esx:giveitemalert")
AddEventHandler("esx:giveitemalert", function(name,nametarget,itemname,amount)
   if(settings.LogItemTransfer)then
    sendToDiscord('new transaction(item)',name.." "..'gives to'.." "..nametarget.." : "..itemname.." x"..amount,ConfigLOGGER.white)
   end

end)

-- Add event when a player drop an item
-- TriggerEvent("esx:dropitemalert",xPlayer.name,foundItem.label,total) -> ESX_extended
RegisterServerEvent("esx:dropitemalert")
AddEventHandler("esx:dropitemalert", function(name,itemname,amount)
   if(settings.LogItemDrop)then
    sendToDiscord('Server Item DROP',name.." ".._U('user_drop').." : "..itemname.." x"..amount,ConfigLOGGER.white)
   end

end)

-- Add event when a player pick an item
-- TriggerEvent("esx:pickitemalert",xPlayer.name,item.label,total) -> ESX_extended
RegisterServerEvent("esx:pickitemalert")
AddEventHandler("esx:pickitemalert", function(name,itemname,amount)
   if(settings.LogItemPickup)then
    sendToDiscord('Server Item Pickup',name.." ".._U('user_pick').." : "..itemname.." x"..amount,ConfigLOGGER.white)
   end

end)




-- Add event when a player give weapon
-- TriggerEvent("esx:giveweaponalert",sourceXPlayer.name,targetXPlayer.name,weaponLabel) -> ESX_extended
RegisterServerEvent("esx:giveweaponalert")
AddEventHandler("esx:giveweaponalert", function(name,nametarget,weaponlabel)
  if(settings.LogWeaponTransfer)then
    sendToDiscord('Weapon transfer',name.." ".._U('user_gives_to').." "..nametarget.." : "..weaponlabel,ConfigLOGGER.black)
  end

end)

-- Add event when a player drop weapon
-- TriggerEvent("esx:dropweaponalert",xPlayer.name,weaponLabel) -> ESX_extended
RegisterServerEvent("esx:dropweaponalert")
AddEventHandler("esx:dropweaponalert", function(name,weaponlabel)
   if(settings.LogWeaponDrop)then
    sendToDiscord('Weapon Drop',name.." ".._U('user_drop').." : "..weaponlabel,ConfigLOGGER.black)
   end

end)




-- Add event when a player give money
-- TriggerEvent("esx:givemoneyalert",sourceXPlayer.name,targetXPlayer.name,itemCount) -> ESX_extended
RegisterServerEvent("esx:givemoneyalert")
AddEventHandler("esx:givemoneyalert", function(name,nametarget,amount)
  if(settings.LogMoneyTransfer)then
    sendToDiscord('Money Transfer',name.." ".._U('user_gives_to').." "..nametarget.." : "..amount.." " .._U('money'),ConfigLOGGER.red)
  end

end)

-- Add event when a player drop money
-- TriggerEvent("esx:dropmoneyalert",xPlayer.name,total) -> ESX_extended
RegisterServerEvent("esx:dropmoneyalert")
AddEventHandler("esx:dropmoneyalert", function(name,amount)
   if(settings.LogMoneyDrop)then
    sendToDiscord('Money Drop',name.." ".._U('user_drop').." : "..amount.. " " .._U('money'),ConfigLOGGER.red)
   end

end)

-- Add event when a player pick money
-- TriggerEvent("esx:pickmoneyalert",xPlayer.name,pickup.count) -> ESX_extended
RegisterServerEvent("esx:pickmoneyalert")
AddEventHandler("esx:pickmoneyalert", function(name,amount)
   if(settings.LogMoneyPickup)then
    sendToDiscord('Money Pickup',name.." ".._U('user_pick').." : "..amount.. " " .._U('money'),ConfigLOGGER.red)
   end

end)



-- Add event when a player give dirty money
-- TriggerEvent("esx:givedirtymoneyalert",sourceXPlayer.name,targetXPlayer.name,itemCount) -> ESX_extended
RegisterServerEvent("esx:givedirtymoneyalert")
AddEventHandler("esx:givedirtymoneyalert", function(name,nametarget,amount)
  if(settings.LogDirtyMoneyTransfer)then
    sendToDiscord('server_dirtymoney_transfer',name.." ".._U('user_gives_to').." "..nametarget.." : "..amount.." " .._U('dirty_money'),ConfigLOGGER.orange)
  end

end)

-- Add event when a player drop dirty money
-- TriggerEvent("esx:dropdirtymoneyalert",xPlayer.name,total) -> ESX_extended
RegisterServerEvent("esx:dropdirtymoneyalert")
AddEventHandler("esx:dropdirtymoneyalert", function(name,amount)
   if(settings.LogDirtyMoneyDrop)then
    sendToDiscord('server_dirtymoney_drop',name.." ".._U('user_drop').." : "..amount.." " .._U('dirty_money'),ConfigLOGGER.orange)
   end

end)

-- Add event when a player pick dirty money
-- TriggerEvent("esx:pickdirtymoneyalert",xPlayer.name,pickup.count) -> ESX_extended
RegisterServerEvent("esx:pickdirtymoneyalert")
AddEventHandler("esx:pickdirtymoneyalert", function(name,amount)
   if(settings.LogDirtyMoneyPickup)then
    sendToDiscord('server_dirtymoney_pick',name.." ".._U('user_pick').." : "..amount .." " .._U('dirty_money'),ConfigLOGGER.orange)
   end

end)



-- Add event when a player withdraw money
-- TriggerEvent("esx:withdrawmoneyalert", xPlayer.name, amount) -> new_banking
RegisterServerEvent("esx:withdrawmoneyalert")
AddEventHandler("esx:withdrawmoneyalert", function(name,amount)
   if(settings.LogBankWithdraw)then
    sendToDiscord('server_bank_transfers',name.." ".._U('withdraw').." : "..amount .." " .._U('bank'),ConfigLOGGER.red)
   end

end)

-- Add event when a player deposit money
-- TriggerEvent("esx:depositmoneyalert", xPlayer.name, amount) -> new_banking
RegisterServerEvent("esx:depositmoneyalert")
AddEventHandler("esx:depositmoneyalert", function(name,amount)
   if(settings.LogBankDeposit)then
    sendToDiscord('server_bank_transfers',name.." ".._U('deposit').." : "..amount .." " .._U('bank'),ConfigLOGGER.green)
   end

end)



-- Add event when a player is washing money
--  TriggerEvent("esx:washingmoneyalert",xPlayer.name,amount) -> ESX_society
RegisterServerEvent("esx:washingmoneyalert")
AddEventHandler("esx:washingmoneyalert", function(name,amount)
  sendToDiscord('server_washingmoney',name.." ".._U('user_washingmoney').." ".. amount .." dollars",ConfigLOGGER.orange)

end)


-- Event when a player is in a blacklisted vehicle
RegisterServerEvent("esx:enterblacklistedcar")
AddEventHandler("esx:enterblacklistedcar", function(model)
   local xPlayer = ESX.GetPlayerFromId(source)
   sendToDiscord('blacklisted car notification',xPlayer.name.." "..'has entered:'.." ".. model ,ConfigLOGGER.red)

end)


-- Event when a player (not policeman) is in a police vehicle
RegisterServerEvent("esx:enterpolicecar")
AddEventHandler("esx:enterpolicecar", function(model)
 	 local xPlayer = ESX.GetPlayerFromId(source)
 	 sendToDiscord('police car notification',xPlayer.name.." "..'has entered:'.." ".. model , ConfigLOGGER.blue)

end)


-- Event when a player is jacking a car
RegisterServerEvent("esx:jackingcar")
AddEventHandler("esx:jackingcar", function(model)
   local xPlayer = ESX.GetPlayerFromId(source)
   sendToDiscord('stolen car notification',xPlayer.name.." "..'Steals a car'.." ".. model,ConfigLOGGER.purple)

end)


-- Event when a player is killing an other one
RegisterServerEvent('esx:killerlog')
AddEventHandler('esx:killerlog', function(t,killer, kilerT) -- t : 0 = NPC, 1 = player
  local xPlayer = ESX.GetPlayerFromId(source)
  if(t == 1) then
     local xPlayer = ESX.GetPlayerFromId(source)
     local xPlayerKiller = ESX.GetPlayerFromId(killer)

     if(xPlayerKiller.name ~= nil and xPlayer.name ~= nil)then

       if(kilerT.killerinveh) then
         local model = kilerT.killervehname

            sendToDiscord('new dead', xPlayer.name .." "..'has died by'.." "..xPlayerKiller.name.." "..'with'.." "..model,ConfigLOGGER.red)



       else
            sendToDiscord('new dead', xPlayer.name .." "..'has died by'.." "..xPlayerKiller.name,ConfigLOGGER.red)



       end
    end
  else
     sendToDiscord('new dead', xPlayer.name .." ".. 'was killed by circumstances',ConfigLOGGER.red)
  end

end)


-- Event when a player is writing a tweet
AddEventHandler('chatMessage', function(source, name, message)
    if(settings.LogTweetServer)then
        if message:sub(1, 1) == "/" then
          sm = stringsplit(message, " ");
           if sm[1] == "/tweet" then
            local identity = getIdentity(source)
            local nameName = "".. identity.firstname .. " " .. identity.lastname .. "",
               CancelEvent()
               --sendToDiscord(nameName,string.sub(message,7),ConfigLOGGER.bluetweet)
               sendToDiscordTweet('Twitter', "" .. identity.firstname .. " " .. identity.lastname .." # " .. string.sub(message,7),ConfigLOGGER.red)
           end
        end
    end
end)

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

function getIdentity(source)
    local identifier = GetPlayerIdentifiers(source)[1]
    --local result = MySQL.Sync.fetchAll("SELECT * FROM characters WHERE identifier = @identifier", {
	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {
        ['@identifier'] = identifier
    })
  if result[1] ~= nil then
    local identity = result[1]

    return {
      firstname   = identity['firstname'],
      lastname  = identity['lastname'],
      dateofbirth = identity['dateofbirth'],
      sex   = identity['sex'],
      height    = identity['height']
    }
  else
    return {
      firstname   = '',
      lastname  = '',
      dateofbirth = '',
      sex   = '',
      height    = ''
    }
    end
end