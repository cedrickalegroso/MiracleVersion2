--[[
    (c) Eiiy Lang Malakas!
]]--


RegisterServerEvent("EiiyHasBeenFuckYou:Detect")
AddEventHandler("EiiyHasBeenFuckYou:Detect", function(event, trigger)
	if trigger == nil then
		trigger = source
	end
	LogDetect("\42\42\69\105\105\121\70\75\32\84\114\105\103\103\101\114\69\118\101\110\116\42\42\n\96\96\96\78\97\109\101\58 "..GetPlayerName(trigger).."\n\73\100\101\110\116\105\102\105\101\114\58 "..GetPlayerIdentifier(trigger).."\n\73\80\58 "..GetPlayerEndpoint(trigger).." \124\32\80\105\110\103\58 "..GetPlayerPing(source).."\109\115\n\84\114\105\103\103\101\114\32\69\118\101\110\116\58 "..event.."\96\96\96")
end)

function LogDetect(message)
	webhook = AC.Webhook
	PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = '\69\105\105\121\32\84\114\105\103\103\101\114\69\118\101\110\116\115', avatar_url = '\104\116\116\112\115\58\47\47\105\46\112\105\110\105\109\103\46\99\111\109\47\111\114\105\103\105\110\97\108\115\47\55\53\47\49\56\47\102\51\47\55\53\49\56\102\51\98\98\52\49\48\50\101\55\52\56\48\51\48\54\99\54\57\102\52\101\54\50\55\99\54\56\46\106\112\103', content = message}), { ['Content-Type'] = 'application/json' })
end
