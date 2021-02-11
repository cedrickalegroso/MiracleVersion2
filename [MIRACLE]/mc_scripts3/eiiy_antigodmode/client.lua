ESX                            = nil
 
local PlayerData               = {}


Citizen.CreateThread(function ()

    while ESX == nil do

        TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)

        Citizen.Wait(0)

        PlayerData = ESX.GetPlayerData()

    end

end)


Citizen.CreateThread(function()

    while true do

        isInvincible = GetPlayerInvincible(PlayerId())

        Citizen.Wait(500)

    end

end)


Citizen.CreateThread(function()

    local a4ZRtJ7ded4QejRu     = PlayerPedId()
        
    local rRKy6dnYYKMDvcR9     = PlayerId()
    
    local UZELQqrUa4ofKq2A     = GetPlayerPed(-1)
    
    local YWvL5kuvXTpzaBg9     = GetEntityHealth(playerPed)
  
        while true do
    
            if isInvincible then
    
                if (IsControlJustReleased(1, 32)) then
    
                    TriggerServerEvent('EiiyHasBeen:FuckYou')
    
                end
                
            else
            
        end

        Citizen.Wait(0)
        
    end
    
end)
