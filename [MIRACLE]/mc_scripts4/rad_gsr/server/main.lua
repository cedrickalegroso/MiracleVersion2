ESX = nil
local gsrData = {}

TriggerEvent('esx:getShRETROaredObjRETROect', function(obj)ESX = obj end)

RegisterCommand("gsr", function(source, args, user)
    local Source = source
    local xPlayer = ESX.GetPlayerFromId(Source)
    local number = tonumber(args[1])
    if args[1] ~= nil and xPlayer.job.name == 'police' and type(number) == "number" then
        CancelEvent()
        local identifier = GetPlayerIdentifiers(number)[1]
        if identifier ~= nil then
            gsrcheck(source, identifier)
        end
    end
end, false)

AddEventHandler('esx:playerDropped', function(source)
    local Source = source
    local identifier = GetPlayerIdentifiers(Source)[1]
    if gsrData[identifier] ~= nil then
        gsrData[identifier] = nil
    end
end)

RegisterNetEvent("esx_gsr:Check")
AddEventHandler("esx_gsr:Check", function(player)
    local Source = source
    local xPlayer = ESX.GetPlayerFromId(Source)
    local identifier = GetPlayerIdentifiers(player)[1]
    if identifier ~= nil and xPlayer.job.name == 'police' then
        gsrcheck(source, identifier)
    end
end)

RegisterNetEvent("esx_gsr:Remove")
AddEventHandler("esx_gsr:Remove", function()
    local Source = source
    local identifier = GetPlayerIdentifiers(Source)[1]
    if gsrData[identifier] ~= nil then
        gsrData[identifier] = nil
    end
end)

RegisterServerEvent('esx_gsr:SetGSR')
AddEventHandler('esx_gsr:SetGSR', function()
    local Source = source
    local identifier = GetPlayerIdentifiers(Source)[1]
    gsrData[identifier] = os.time(os.date("!*t")) + Config.gsrTime
end)

function gsrcheck(source, identifier)
    local Source = source
    local identifier = identifier
    if gsrData[identifier] ~= nil then
        --TriggerClientEvent('esx_gsr:Notify', Source, _U('gsr_positive'), "error")
		--ESX.ShowNotification('')
		TriggerClientEvent('chatMessage', Source, "GSR Test: ", {255, 0, 0}, "Returned Positive!")
    else
        --TriggerClientEvent('esx_gsr:Notify', Source, _U('gsr_negative'), "success")
		--ESX.ShowNotification('GSR Returned Negative')
		TriggerClientEvent('chatMessage', Source, "GSR Test: ", {255, 0, 0}, "Returned Negative!")
    end
end

ESX.RegisterServerCallback('esx_gsr:Status', function(source, cb)
    local Source = source
    local identifier = GetPlayerIdentifiers(Source)[1]
    if gsrData[identifier] ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

function removeGSR()
    for k, v in pairs(gsrData) do
        if v <= os.time(os.date("!*t")) then
            gsrData[k] = nil
        end
    end
end

function gsrTimer()
    removeGSR()
    SetTimeout(Config.gsrAutoRemove, gsrTimer)
end

gsrTimer()
