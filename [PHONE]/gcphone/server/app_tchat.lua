

function TchatGetMessageChannel(a,b)
    MySQL.Async.fetchAll("SELECT * FROM phone_app_chat WHERE channel = @channel ORDER BY time DESC LIMIT 100",{['@channel']=a},b)
end

function TchatAddMessage(a,b)
    MySQL.Async.insert("INSERT INTO phone_app_chat (channel, message) VALUES(@channel, @message)",{['@channel']=a,['@message']=b},function(c)
        MySQL.Async.fetchAll("SELECT * from phone_app_chat WHERE id = @id",{['@id']=c},function(d)TriggerClientEvent('gcPhone:tchat_receive',-1,d[1])
        end)
    end)
end

RegisterServerEvent('gcPhone:tchat_channelRETRO')
AddEventHandler('gcPhone:tchat_channelRETRO',function(a)
    local b=tonumber(source)TchatGetMessageChannel(a,function(c)
        TriggerClientEvent('gcPhone:tchat_channelRETRO',b,a,c)
    end)
end)

RegisterServerEvent('gcPhone:tchat_addMessage')
AddEventHandler('gcPhone:tchat_addMessage',function(a,b)
    TchatAddMessage(a,b)
end)


