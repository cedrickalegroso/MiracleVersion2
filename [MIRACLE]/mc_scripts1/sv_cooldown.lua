-- Config
timermax = 16 -- In minutes. Must be one bigger than the max timer you want (Eg if you want 20 it must be 21)

-- Do not touch
cooldown = 0
ispriority = false
ishold = false

RegisterCommand("priority", function(source)
    TriggerEvent("cooldownt", source)
end, false)

RegisterCommand("inprogress", function()
	TriggerEvent('isPriority')
end, false)

RegisterCommand("onhold", function()
	TriggerEvent('isOnHold')
end, false)

RegisterNetEvent('isPriority')
AddEventHandler('isPriority', function()
	ispriority = true
	Citizen.Wait(1)
	TriggerClientEvent('UpdatePriority', -1, ispriority)
	TriggerClientEvent('chat:addMessage', -1, {
		template = '<div class="chat-message system"><b> 👮 RCPD : </b> ^1A priority call is in progress. Please do not interfere, otherwise you will be ^1kicked. ^7All calls are on ^3hold ^7until this one concludes.  </div>',
		args = { fal, msg }
	})


	--TriggerClientEvent('chatMessage', -1, "WARNING", {255, 0, 0}, "^1A priority call is in progress. Please do not interfere, otherwise you will be ^1kicked. ^7All calls are on ^3hold ^7until this one concludes.")
end)

RegisterNetEvent('isOnHold')
AddEventHandler('isOnHold', function()
	ishold = true
	Citizen.Wait(1)
	TriggerClientEvent('UpdateHold', -1, ishold)
end)

RegisterNetEvent("cooldownt")
AddEventHandler("cooldownt", function(source)
   
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	local group = xPlayer.getJob().name

	

	if group == 'police' then 

		if ispriority == true then
			ispriority = false
			TriggerClientEvent('UpdatePriority', -1, ispriority)
		end
		Citizen.Wait(1)
		if ishold == true then
			ishold = false
			TriggerClientEvent('UpdateHold', -1, ishold)
		end
		Citizen.Wait(1)
		if cooldown == 0 then
			cooldown = 0
			cooldown = cooldown + timermax
			TriggerClientEvent('chat:addMessage', -1, {
				template = '<div class="chat-message system"><b> 👮 RCPD : </b> ^1^1A priority call was just conducted. ^3All civilians must wait 15 minutes before conducting another one. ^7Failure to abide by this rule will lead to you being ^1kicked.  </div>',
				args = { fal, msg }
			})
	
			--TriggerClientEvent('chatMessage', -1, "WARNING", {255, 0, 0}, "^1A priority call was just conducted. ^3All civilians must wait 20 minutes before conducting another one. ^7Failure to abide by this rule will lead to you being ^1kicked.")
			while cooldown > 0 do
				cooldown = cooldown - 1
				TriggerClientEvent('UpdateCooldown', -1, cooldown)
				Citizen.Wait(60000)
			end
		elseif cooldown ~= 0 then
			CancelEvent()
		end


	end


end)

RegisterNetEvent("cancelcooldown")
AddEventHandler("cancelcooldown", function()
	Citizen.Wait(1)
	while cooldown > 0 do
		cooldown = cooldown - 1
		TriggerClientEvent('UpdateCooldown', -1, cooldown)
		Citizen.Wait(100)
	end
	
end)