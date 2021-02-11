TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)

function getIdentity(source)
	local identifier = GetPlayerIdentifiers(source)[1]
	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = identifier})
	if result[1] ~= nil then
		local identity = result[1]

		return {
			identifier = identity['identifier'],
			firstname = identity['firstname'],
			lastname = identity['lastname'],
			dateofbirth = identity['dateofbirth'],
			sex = identity['sex'],
			height = identity['height']
		}
	else
		return nil
	end
end


--[[ AMBULANCE COMMANDS ]]--


RegisterCommand('advert', function(source, args, rawCommand)
    local src = source
    local msg = rawCommand:sub(5)
    local name = getIdentity(src)

    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.identifier == 'steam:1100001115e4c94' or xPlayer.identifier == 'steam:11000011693aece' then 


   --     TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'To lessen the use of "OOC" in chat we are deducting 10,000. Please use twitter for RP. '})
        --TriggerEvent('notification','You do not have a phone.', 2)
    
        if player ~= false then
            local user = GetPlayerName(src)
                TriggerClientEvent('chat:addMessage', -1, {
                template = '<div class="chat-message advert"><b> RETRO CITY: </b> Discord Link: discord.retrocity.xyz | How to admin report? use /admin </div>',
                args = { user, msg }
            })
        end


        
    end

end, false)


RegisterCommand('mcems', function(source, args, rawCommand)
    local _source = source
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(6)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
	xPlayer = ESX.GetPlayerFromId(source)
    jobN = xPlayer.job.name
	
	if jobN == 'ambulance' then
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div class="chat-message " style="background-color:  rgba(204, 0, 153, 0.1);" ><i class="fas fa-shield-alt"></i> 🏥 <strong> mcems {0} </strong>:  {1}</div>',
        args = { fal, msg }
    })
   end
   
end, false)


RegisterCommand('mcemsotw', function(source, args, rawCommand)
    local _source = source
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(6)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
	xPlayer = ESX.GetPlayerFromId(source)
    jobN = xPlayer.job.name
	
	if jobN == 'ambulance' then
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div class="chat-message " style="background-color:  rgba(204, 0, 153, 0.1);" ><i class="fas fa-shield-alt"></i> 🏥 <strong> mcems {0} </strong>:  10-1 Taking distress. OTW to postal #{1} </div>',
        args = { fal, msg }
    })
   end
end, false)


RegisterCommand('mcemsotw2', function(source, args, rawCommand)
    local _source = source
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(10)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
	xPlayer = ESX.GetPlayerFromId(source)
    jobN = xPlayer.job.name
	
	if jobN == 'ambulance' then
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div class="chat-message " style="background-color:  rgba(204, 0, 153, 0.1);" ><i class="fas fa-shield-alt"></i> 🏥 <strong> mcems {0} </strong>:  EMS proceeding to the area. </div>',
        args = { fal, msg }
    })
   end
end, false)


RegisterCommand('mcemsotw3', function(source, args, rawCommand)
    local _source = source
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(10)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
	xPlayer = ESX.GetPlayerFromId(source)
    jobN = xPlayer.job.name
	
	if jobN == 'ambulance' then
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div class="chat-message " style="background-color:  rgba(204, 0, 153, 0.1);" ><i class="fas fa-shield-alt"></i> 🏥 <strong> mcems {0} </strong>: EMS EN ROUTE TO GET THE HOSTAGE/S </div>',
        args = { fal, msg }
    })
   end
end, false)


RegisterCommand('mcemsrip', function(source, args, rawCommand)
    local _source = source
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(10)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
	xPlayer = ESX.GetPlayerFromId(source)
    jobN = xPlayer.job.name

    local date = os.date("%H:%M:%S %p")
	
	if jobN == 'ambulance' then
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div class="chat-message " style="background-color:  rgba(204, 0, 153, 0.1);" ><i class="fas fa-shield-alt"></i> 🏥 <strong> mcems {0} </strong>: RIP {1}. Time of Death '..date..' Condolences to family and friends </div>',
        args = { fal, msg }
    })
   end
end, false)

RegisterCommand('mcemsstandby', function(source, args, rawCommand)
    local _source = source
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(12)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
	xPlayer = ESX.GetPlayerFromId(source)
    jobN = xPlayer.job.name

    local date = os.date("%H:%M:%S %p")
	
	if jobN == 'ambulance' then
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div class="chat-message " style="background-color:  rgba(204, 0, 153, 0.1);" ><i class="fas fa-shield-alt"></i> 🏥 <strong> mcems {0} </strong>:  ALL EMS ON STAND BY </div>',
        args = { fal, msg }
    })
   end
end, false)


RegisterCommand('mcemsdelay', function(source, args, rawCommand)
    local _source = source
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(12)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
	xPlayer = ESX.GetPlayerFromId(source)
    jobN = xPlayer.job.name

    local date = os.date("%H:%M:%S %p")
	
	if jobN == 'ambulance' then
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div class="chat-message " style="background-color:  rgba(204, 0, 153, 0.1);" ><i class="fas fa-shield-alt"></i> 🏥 <strong> mcems {0} </strong>:  Priority in progress. There may be a delay on other distress calls. Your patience is much appreciated. </div>',
        args = { fal, msg }
    })
   end
end, false)






--[[ END OF AMBULANCE COMMANDS ]]--



--[[ POLICE COMMANDS ]]--


RegisterCommand('mcpd', function(source, args, rawCommand)
    local _source = source
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(5)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
	xPlayer = ESX.GetPlayerFromId(source)
    jobN = xPlayer.job.name
	
	if jobN == 'police' then
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div class="chat-message " style="background-color: rgba(0, 0, 255, 0.1);" ><i class="fas fa-shield-alt"></i> 👮 <strong> mcpd {0} </strong>:  {1}</div>',
        args = { fal, msg }
    })
   end
end, false)


RegisterCommand('warncarchase', function(source, args, rawCommand)
    local _source = source
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(12)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
	xPlayer = ESX.GetPlayerFromId(source)
    jobN = xPlayer.job.name
	
	if jobN == 'police' then
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div class="chat-message " style="background-color: rgba(0, 0, 255, 0.1);" ><i class="fas fa-shield-alt"></i> 👮 <strong> mcpd {0} </strong>:  Retro citizens please be advised there is an ongoing carchase. If you are inside a 10 mile radius please dont try to interfere. </div>',
        args = { fal, msg }
    })
   end
end, false)


RegisterCommand('warnshootout', function(source, args, rawCommand)
    local _source = source
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(12)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
	xPlayer = ESX.GetPlayerFromId(source)
    jobN = xPlayer.job.name
	
	if jobN == 'police' then
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div class="chat-message " style="background-color: rgba(0, 0, 255, 0.1);" ><i class="fas fa-shield-alt"></i> 👮 <strong> mcpd {0} </strong>:  Retro citizens please be advised there is an ongoing shootout everyone inside 1 mile radius will be shot dead! </div>',
        args = { fal, msg }
    })
   end
end, false)



--[[ END OF POLICE COMMANDS ]]--

--[[ POLICE GANGS ]]--

--[[
RegisterCommand('vermillion', function(source, args, rawCommand)
    local _source = source
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(11)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
	xPlayer = ESX.GetPlayerFromId(source)
    jobN = xPlayer.job2.name

    print(jobN)

    if jobN == 'vermillion' then
        TriggerClientEvent('chat:addMessage', -1, {
            template = '<div class="chat-message " style="background-color:  rgba(204, 50, 153, 0.1);" ><i class="fas fa-shield-alt"></i> 🎩 <strong> Vermillion {0} </strong>:  {1}</div>',
            args = { fal, msg }
        })
       end


end, false)



RegisterCommand('thelost', function(source, args, rawCommand)
    local _source = source
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(8)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
	xPlayer = ESX.GetPlayerFromId(source)
    jobN = xPlayer.job2.name

    print(jobN)

    if jobN == 'thelost' then
        TriggerClientEvent('chat:addMessage', -1, {
            template = '<div class="chat-message " style="background-color:  rgba(204, 50, 153, 0.1);" ><i class="fas fa-shield-alt"></i> 🚴‍♂️ <strong> The Lost MC  {0} </strong>:  {1}</div>',
            args = { fal, msg }
        })
       end


end, false)

]]--



RegisterCommand('mcmech', function(source, args, rawCommand)
    local _source = source
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(7)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
	xPlayer = ESX.GetPlayerFromId(source)
    jobN = xPlayer.job.name
	
	if jobN == 'groove' then
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div class="chat-message " style="background-color: rgba(0, 153, 0, 0.1);" ><i class="fas fa-shield-alt"></i> 🔧 <strong> mcmech {0} </strong>:  {1}</div>',
        args = { fal, msg }
    })
   end
end, false)


RegisterCommand('mcmechotw', function(source, args, rawCommand)
    local _source = source
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(5)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
	xPlayer = ESX.GetPlayerFromId(source)
    jobN = xPlayer.job.name
	
	if jobN == 'groove' then
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div class="chat-message " style="background-color: rgba(0, 153, 0, 0.1);" ><i class="fas fa-shield-alt"></i> 🔧 <strong> mcmech {0} </strong>: RETRO CITY MECH IS ON THE WAY!</div>',
        args = { fal, msg }
    })
   end
end, false)





--[[ END OF POLICE COMMANDS ]]--



