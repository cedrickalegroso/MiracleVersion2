
TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)

local xPlayers 		= ESX.GetPlayers()

AddEventHandler('chatMessage', function(source, n, message)
	cm = stringsplit(message, " ")
    local xPlayer 		= ESX.GetPlayerFromId(source)
    
    if cm[1] == "/openMyRewardsRetro" then
       TriggerEvent('retro_scripts:gettodayreward', source)
    elseif cm[1] == "/ondutyradio" then
        local _source = source
	xPlayer = ESX.GetPlayerFromId(source)
	local job = xPlayer.job.name
	local job2 = xPlayer.job2.name

	if job == 'offpolice'  then
		TriggerClientEvent('retro_scripts:disabledutyradioPD', source)
	elseif job == 'offambulance' then
		TriggerClientEvent('retro_scripts:disabledutyradioEMS', source)	
	elseif job == 'offgroove' then
		TriggerClientEvent('retro_scripts:disabledutyradioMECH', source)		
	elseif job == 'police' then
		TriggerClientEvent('retro_scripts:enabledutyradioPD', source)
    elseif job == 'ambulance' then
		TriggerClientEvent('retro_scripts:enabledutyradioEMS', source)
	elseif job == 'groove' then
		TriggerClientEvent('retro_scripts:enabledutyradioMECH', source)
    end
    end

end)


ESX.RegisterServerCallback('retro_scripts:getCuffs', function(source,cb, cuff)
    local cuff = 0
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local count = xPlayer.getInventoryItem('cuffs').count 

    if count > 0 then 
        cuff = 1
    end

	if cuff == 1 then 
		xPlayer.removeInventoryItem('cuffs', 1)
	end

    cb(cuff)

end)


function getIdentity(source)
	local identifier = GetPlayerIdentifiers(source)[1]
	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = identifier})
	if result[1] ~= nil then
		local identity = result[1]

		return {
            identifier = identity['identifier'],
            license = identity['license'],
			name = identity['name'],
			firstname = identity['firstname'],
			lastname = identity['lastname'],
			dateofbirth = identity['dateofbirth'],
			sex = identity['sex'],
			height = identity['height'],
			job = identity['job'],
			group = identity['group']
		}
	else
		return nil
	end
end

      