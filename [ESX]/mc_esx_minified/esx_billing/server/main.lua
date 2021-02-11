ESX = nil TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)

RegisterServerEvent('esx_biRETROlling:sendBill')
AddEventHandler('esx_biRETROlling:sendBill', function(playerId, sharedAccountName, label, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	local xTarget = ESX.GetPlayerFromId(playerId)
	local xTargetName = GetPlayerName(playerId)
	amount = ESX.Math.Round(amount)

	
	local name = GetPlayerName(source)
	local message = name..' billed  '..xTargetName..' amount of '..amount
	local color = 56108
	local webhook = 'https://discordapp.com/api/webhooks/768301582059175936/DzovCQ_19ZR4LoBOBIrqro9Hf_TxYcSg7zkOIaF1AiQkr38rRFQVlV0Ua5Ei_G6QSK7S'
  
			
	sendToDiscord(name,message,color, webhook)
	

	

	if amount > 0 and xTarget then
		TriggerEvent('esx_addonaccount:getSharedAccount', sharedAccountName, function(account)
			if account then
				MySQL.Async.execute('INSERT INTO billing (identifier, sender, target_type, target, label, amount) VALUES (@identifier, @sender, @target_type, @target, @label, @amount)', {
					['@identifier'] = xTarget.identifier,
					['@sender'] = xPlayer.identifier,
					['@target_type'] = 'society',
					['@target'] = sharedAccountName,
					['@label'] = label,
					['@amount'] = amount
				}, function(rowsChanged)
					TriggerClientEvent('esx:showNotification', xTarget, 'Invoice Recieved')
			--		xTarget.showNotification(_U('received_invoice'))
				end)
			else
				MySQL.Async.execute('INSERT INTO billing (identifier, sender, target_type, target, label, amount) VALUES (@identifier, @sender, @target_type, @target, @label, @amount)', {
					['@identifier'] = xTarget.identifier,
					['@sender'] = xPlayer.identifier,
					['@target_type'] = 'player',
					['@target'] = xPlayer.identifier,
					['@label'] = label,
					['@amount'] = amount
				}, function(rowsChanged)
					--TriggerClientEvent('esx:showNotification', xPlayer, 'Invoice Paid '..ESX.Math.GroupDigits(amount))
					TriggerClientEvent('esx:showNotification', xTarget, 'Invoice Recieved')

			--		xTarget.showNotification(_U('received_invoice'))
				end)
			end
		end)
	end
end)

ESX.RegisterServerCallback('esx_billing:getBills', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT amount, id, label FROM billing WHERE identifier = @identifier', {
		['@identifier'] = xPlayer.identifier
	}, function(result)
		cb(result)
	end)
end)

ESX.RegisterServerCallback('esx_billing:getTargetBills', function(source, cb, target)
	local xPlayer = ESX.GetPlayerFromId(target)

	if xPlayer then
		MySQL.Async.fetchAll('SELECT amount, id, label FROM billing WHERE identifier = @identifier', {
			['@identifier'] = xPlayer.identifier
		}, function(result)
			cb(result)
		end)
	else
		cb({})
	end
end)

ESX.RegisterServerCallback('esx_billing:payBill', function(source, cb, billId)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT sender, target_type, target, amount FROM billing WHERE id = @id', {
		['@id'] = billId
	}, function(result)
		if result[1] then
			local amount = result[1].amount
			local xTarget = ESX.GetPlayerFromIdentifier(result[1].sender)

			if result[1].target_type == 'player' then
				if xTarget then
					if xPlayer.getMoney() >= amount then
						MySQL.Async.execute('DELETE FROM billing WHERE id = @id', {
							['@id'] = billId
						}, function(rowsChanged)
							if rowsChanged == 1 then
								xPlayer.removeMoney(amount)
								xTarget.addMoney(amount)

								TriggerClientEvent('esx:showNotification', xPlayer, 'Invoice Paid '..ESX.Math.GroupDigits(amount))
								TriggerClientEvent('esx:showNotification', xTarget, 'Payment Recieved '..ESX.Math.GroupDigits(amount))

							--	xPlayer.showNotification(_U('paid_invoice', ESX.Math.GroupDigits(amount)))
							--	xTarget.showNotification(_U('received_payment', ESX.Math.GroupDigits(amount)))
							end

							cb()
						end)
					elseif xPlayer.getAccount('bank').money >= amount then
						MySQL.Async.execute('DELETE FROM billing WHERE id = @id', {
							['@id'] = billId
						}, function(rowsChanged)
							if rowsChanged == 1 then
								xPlayer.removeAccountMoney('bank', amount)
								xTarget.addAccountMoney('bank', amount)

								local name = GetPlayerName(source)
								local message = name..' paid a bill '..amount
								local color = 56108
								local webhook = 'https://discordapp.com/api/webhooks/768301582059175936/DzovCQ_19ZR4LoBOBIrqro9Hf_TxYcSg7zkOIaF1AiQkr38rRFQVlV0Ua5Ei_G6QSK7S'
							  
										
								sendToDiscord(name,message,color, webhook)

								TriggerClientEvent('esx:showNotification', xPlayer, 'Invoice Paid '..ESX.Math.GroupDigits(amount))
								TriggerClientEvent('esx:showNotification', xTarget, 'Payment Recieved '..ESX.Math.GroupDigits(amount))
							--	xPlayer.showNotification(_U('paid_invoice', ESX.Math.GroupDigits(amount)))
							--	xTarget.showNotification(_U('received_payment', ESX.Math.GroupDigits(amount)))
							end

							cb()
						end)
					else
						TriggerClientEvent('esx:showNotification', xTarget, 'Target No money')
						TriggerClientEvent('esx:showNotification', xPlayer, 'No Money')
					--	xTarget.showNotification(_U('target_no_money'))
						--xPlayer.showNotification(_U('no_money'))
						cb()
					end
				else
					TriggerClientEvent('esx:showNotification', xPlayer, 'Player Not Online')
				--	xPlayer.showNotification(_U('player_not_online'))
					cb()
				end
			else
				TriggerEvent('esx_addonaccount:getSharedAccount', result[1].target, function(account)
					if xPlayer.getMoney() >= amount then
						MySQL.Async.execute('DELETE FROM billing WHERE id = @id', {
							['@id'] = billId
						}, function(rowsChanged)
							if rowsChanged == 1 then
								xPlayer.removeMoney(amount)
								account.addMoney(amount)
								TriggerClientEvent('esx:showNotification', xPlayer, ESX.Math.GroupDigits(amount))
					--			xPlayer.showNotification(_U('paid_invoice', ESX.Math.GroupDigits(amount)))
								if xTarget then
									TriggerClientEvent('esx:showNotification', xTarget, ESX.Math.GroupDigits(amount))
					--				xTarget.showNotification(_U('received_payment', ESX.Math.GroupDigits(amount)))
								end
							end

							cb()
						end)
					elseif xPlayer.getAccount('bank').money >= amount then
						MySQL.Async.execute('DELETE FROM billing WHERE id = @id', {
							['@id'] = billId
						}, function(rowsChanged)
							if rowsChanged == 1 then
								xPlayer.removeAccountMoney('bank', amount)
								account.addMoney(amount)
								TriggerClientEvent('esx:showNotification', xPlayer, ESX.Math.GroupDigits(amount))
						--		xPlayer.showNotification(_U('paid_invoice', ESX.Math.GroupDigits(amount)))

								if xTarget then
									TriggerClientEvent('esx:showNotification', xTarget, ESX.Math.GroupDigits(amount))
						--			xTarget.showNotification(_U('received_payment', ESX.Math.GroupDigits(amount)))
								end
							end

							cb()
						end)
					else
						if xTarget then
							TriggerClientEvent('esx:showNotification', xTarget, 'No Money')
						end

						TriggerClientEvent('esx:showNotification', xPlayer, 'No Money')

						
						cb()
					end
				end)
			end
		end
	end)
end)


function sendToDiscord (name,message,color, webhook)  
	local DiscordWebHook = webhook
	local DISCORD_IMAGE	= "https://i.imgur.com/DZUmmWL.png"
  
  local embeds = {
	  {
		  ["title"]=message,
		  ["type"]="rich",
		  ["color"] =color,
		  ["footer"]=  {
			  ["text"]= "Discord Bot by Cedrick  Alegroso",
			  ["icon_url"] = DISCORD_IMAGE,
		 },
	  }
  }
  
	if message == nil or message == '' then return FALSE end
	PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
  end
