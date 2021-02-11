ConfigDiscord = {}
ConfigDiscord.ClientID = 763715352680202270 -- Put your discord bot client id here
ConfigDiscord.PlayerCount = 64
ConfigDiscord.PlayerText = "Players" -- Player text. Example Players 10/32
ConfigDiscord.ResourceTimer = 5 -- Time in witch resource updates in seconds
ConfigDiscord.UseESXIdentity = true -- Uses ESX Identity name not steam name


ESX = nil

TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)


function getIdentity(source)
	local sourceXPlayer = ESX.GetPlayerFromId(source)
	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = sourceXPlayer.identifier})
	if result[1] ~= nil then
		local identity = result[1]

		return {
			identifier = identity['identifier'],
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


RegisterServerEvent('discord:server:setName')
AddEventHandler('discord:server:setName', function()
	local _source = source
    local name = getIdentity(source)
	local _playerName = name.firstname .. " " .. name.lastname
    TriggerClientEvent('discord:client:setPresence',_source,_playerName)
end)