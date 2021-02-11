ESX = nil

TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)


ESX.RegisterUsableItem('powiekszonymagazynek', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:powiekszonymagazynek', source)

    xPlayer.removeInventoryItem('powiekszonymagazynek', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your Extended Clip'})
end)

ESX.RegisterUsableItem('kompensator', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:kompensator', source)

    xPlayer.removeInventoryItem('kompensator', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your Compensator'})
end)

ESX.RegisterUsableItem('MountedScope', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:MountedScope', source)

    xPlayer.removeInventoryItem('MountedScope', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your Mounted Scope'})

end)

ESX.RegisterUsableItem('yusuf', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:yusuf', source)

    xPlayer.removeInventoryItem('yusuf', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your Gold Skin'})

end)

ESX.RegisterUsableItem('celownikdluga', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:celownikdluga', source)

    xPlayer.removeInventoryItem('celownikdluga', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your celownikdluga'})

end)

ESX.RegisterUsableItem('vipskinmotyl', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:vipskinmotyl', source)

    xPlayer.removeInventoryItem('vipskinmotyl', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your vipskinmotyl'})

end)

ESX.RegisterUsableItem('kastetpink', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:kastetpink', source)

    xPlayer.removeInventoryItem('kastetpink', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your kastetpink'})

end)

ESX.RegisterUsableItem('mediumscope', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:mediumscope', source)

    xPlayer.removeInventoryItem('mediumscope', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your mediumscope'})

end)

ESX.RegisterUsableItem('largescope', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:largescope', source)

    xPlayer.removeInventoryItem('largescope', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your largescope'})

end)

ESX.RegisterUsableItem('holografik', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:holografik', source)

    xPlayer.removeInventoryItem('holografik', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your holografik'})


end)

ESX.RegisterUsableItem('platin50', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:platin50', source)

    xPlayer.removeInventoryItem('platin50', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your platin50'})

end)

ESX.RegisterUsableItem('woodheavyp', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:woodheavyp', source)

    xPlayer.removeInventoryItem('woodheavyp', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your woodheavyp'})

end)

ESX.RegisterUsableItem('wooddlugie', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:wooddlugie', source)

    xPlayer.removeInventoryItem('wooddlugie', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your wooddlugie'})

end)

ESX.RegisterUsableItem('czaszkidlugie', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:czaszkidlugie', source)

    xPlayer.removeInventoryItem('czaszkidlugie', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your czaszkidlugie'})

end)

ESX.RegisterUsableItem('zebradlugie', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:zebradlugie', source)

    xPlayer.removeInventoryItem('zebradlugie', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your zebradlugie'})

end)

ESX.RegisterUsableItem('boomdlugie', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:boomdlugie', source)

    xPlayer.removeInventoryItem('boomdlugie', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your boomdlugie'})

end)

ESX.RegisterUsableItem('tactitalmuzle', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:tactitalmuzle', source)

    xPlayer.removeInventoryItem('tactitalmuzle', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your tactitalmuzle'})

end)

ESX.RegisterUsableItem('kastetpimp', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:kastetpimp', source)

    xPlayer.removeInventoryItem('kastetpimp', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your kastetpimp'})

end)

ESX.RegisterUsableItem('kastetbalas', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:kastetbalas', source)

    xPlayer.removeInventoryItem('kastetbalas', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your kastetbalas'})

end)

ESX.RegisterUsableItem('kastetdollar', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:kastetdollar', source)

    xPlayer.removeInventoryItem('kastetdollar', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your kastetdollar'})

end)

ESX.RegisterUsableItem('kastetdiament', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:kastetdiament', source)

    xPlayer.removeInventoryItem('kastetdiament', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your kastetdiament'})

end)

ESX.RegisterUsableItem('kastethate', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:kastethate', source)

    xPlayer.removeInventoryItem('kastethate', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your kastethate'})

end)

ESX.RegisterUsableItem('kastetplayer', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:kastetplayer', source)

    xPlayer.removeInventoryItem('kastetplayer', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your kastetplayer'})

end)

ESX.RegisterUsableItem('kastetvagos', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:kastetvagos', source)

    xPlayer.removeInventoryItem('kastetvagos', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your kastetvagos'})

end)

ESX.RegisterUsableItem('grip', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:grip', source)

    xPlayer.removeInventoryItem('grip', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your grip'})

end)

ESX.RegisterUsableItem('Suppressor', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:Suppressor', source)

    xPlayer.removeInventoryItem('Suppressor', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your Suppressor'})

end)

ESX.RegisterUsableItem('flashlight', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:flashlight', source)

    xPlayer.removeInventoryItem('flashlight', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You have used your flashlight'})
end)




