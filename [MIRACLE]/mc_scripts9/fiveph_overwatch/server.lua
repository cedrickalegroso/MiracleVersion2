--[[
Project: Global Ban List for FiveM PH Community
Contributor/s: Curt (Aurora Collective)
]]--

local cachedBans = {}

function fetchBans()
	PerformHttpRequest("https://partner.aurorav.net/fetchbanlist.php", function(statusCode, theData, headers) 
		if (statusCode == 200) then 
			cachedBans = json.decode(theData)
			print("[FiveM PH Community Alert] Fetched Ban List!")
		else 
			print("[FiveM PH Community Alert] Failed to fetch ban list!")
		end 
	end, 'GET')
end

CreateThread(function()
	while true do 
		fetchBans()
		Wait(60 * 1000)
	end 
end)

local blacklistedValues = {["reason"]=true, ["bannedBy"]=true}
AddEventHandler("playerConnecting", function(name, setKickReason, deferrals)
	local thePlayer = source
	local thePlayerIdents = GetPlayerIdentifiers(thePlayer)
	local foundBan = false
	deferrals.defer()

	Wait(0)

	for _, theClientIdent in pairs(thePlayerIdents) do
		for _, theTable in pairs(cachedBans) do
			for theSet, theValue in pairs(theTable) do
				if (not blacklistedValues[theSet] and theValue == theClientIdent and foundBan == false) then 
					if (ConfigOVRW.discordWebhook ~= nil and ConfigOVRW.discordWebhook ~= "") then 
						PerformHttpRequest(ConfigOVRW.discordWebhook, function(statusCode, theData, headers) end, 'POST', json.encode({username = "FiveM PH Community", content = "A community-wide ban player "..name.." tried to join your server! Player Identifiers: "..json.encode(thePlayerIdents), avatar_url = "https://i.imgur.com/qc1eK1g.jpg"}), {['Content-Type'] = 'application/json'})
					end 
					print("[FiveM PH Community Alert] A community-wide ban player "..name.." tried to join your server! Player Identifiers: "..json.encode(thePlayerIdents))
					deferrals.done("[FiveM PH Community] Your FiveM client is community-wide banned for "..theTable["reason"]..".\nYour ban is pernament! To appeal, go to our discord guild at https://discord.retrocity.xyz")
					foundBan = true
					break
				end 
			end
		end
	end
	deferrals.done()
end)