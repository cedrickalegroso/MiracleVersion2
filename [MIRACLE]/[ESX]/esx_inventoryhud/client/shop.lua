local shopData
ESX = nil
local Licenses = {}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        player = GetPlayerPed(-1)
        coords = GetEntityCoords(player)
        if IsInGangShop3Zone(coords) or IsInGangShop2Zone(coords) or  IsInGangShop1Zone(coords) or IsInCartelShopZone(coords) or IsInRegularShopZone(coords) or IsInRobsLiquorZone(coords) or IsInpharmaShopZone(coords) or IsInnPhoneshopZone(coords) or IsInYouToolZone(coords) or IsInPrisonShopZone(coords) or IsInWeaponShopZone(coords) or IsInArmoryShopZone(coords) or IsInBlackMarkeShopZone(coords)   or IsInDarknetShopZone(coords)     then
            if IsInRegularShopZone(coords) then
                if IsControlJustReleased(0, 38) then
                    OpenShopInv("regular")
                    TriggerScreenblurFadeIn(0)
                    Citizen.Wait(2000)
                end
            end

            

            if IsInCartelShopZone(coords) then
                if IsControlJustReleased(0, 38) then
                    OpenShopInv("cartelshop")
                    TriggerScreenblurFadeIn(0)
                    Citizen.Wait(2000)
                end
            end

            if IsInGangShop1Zone(coords) then
                if IsControlJustReleased(0, 38) then
                    OpenShopInv("gangshop01")
                    TriggerScreenblurFadeIn(0)
                    Citizen.Wait(2000)
                end
            end

            if IsInGangShop2Zone(coords) then
                if IsControlJustReleased(0, 38) then
                    OpenShopInv("gangshop02")
                    TriggerScreenblurFadeIn(0)
                    Citizen.Wait(2000)
                end
            end
            
            if IsInGangShop3Zone(coords) then
                if IsControlJustReleased(0, 38) then
                    OpenShopInv("gangshop03")
                    TriggerScreenblurFadeIn(0)
                    Citizen.Wait(2000)
                end
            end
            


            if IsInnPhoneshopZone(coords) then
                if IsControlJustReleased(0, 38) then
                    OpenShopInv("nPhoneShop")
                    TriggerScreenblurFadeIn(0)
                    Citizen.Wait(2000)
                end
            end

            if IsInpharmaShopZone(coords) then
                if IsControlJustReleased(0, 38) then
                    OpenShopInv("pharmaShop")
                    TriggerScreenblurFadeIn(0)
                    Citizen.Wait(2000)
                end
            end
  
            if IsInRobsLiquorZone(coords) then
                if IsControlJustReleased(0, 38) then
                    OpenShopInv("robsliquor")
                    TriggerScreenblurFadeIn(0)
                    Citizen.Wait(2000)
                end
            end
            if IsInYouToolZone(coords) then
                if IsControlJustReleased(0, 38) then
                    OpenShopInv("youtool")
                    TriggerScreenblurFadeIn(0)
                    Citizen.Wait(2000)
                end
            end
            if IsInPrisonShopZone(coords) then
                if IsControlJustReleased(0, 38) then
                    OpenShopInv("prison")
                    TriggerScreenblurFadeIn(0)
                    Citizen.Wait(2000)
                end
            end
            if IsInWeaponShopZone(coords) then
                if IsControlJustReleased(0, 38) then
                    if Licenses['weapon'] ~= nil then
                        OpenShopInv("weaponshop")
                        TriggerScreenblurFadeIn(0)
                        Citizen.Wait(2000)
                    else
                        exports['mythic_notify']:SendAlert('error', 'You need a Fire Arms license before you can buy weapons')
                    end
                end
            end
            if IsInArmoryShopZone(coords) then
                if IsControlJustReleased(0, 38) then
                    
                        OpenShopInv("armoryshop")
                        TriggerScreenblurFadeIn(0)
                        Citizen.Wait(2000)
                 
                end
            end

            if IsInBlackMarkeShopZone(coords) then
                if IsControlJustReleased(0, 38) then
                    
                        OpenShopInv("blackmarketshop")
                        TriggerScreenblurFadeIn(0)
                        Citizen.Wait(2000)
                 
                end
            end

            if IsInDarknetShopZone(coords) then
                if IsControlJustReleased(0, 38) then
                    
                        OpenShopInv("darknet")
                        TriggerScreenblurFadeIn(0)
                        Citizen.Wait(2000)
                 
                end
            end


  

    
            
        end
    end
end)

function OpenShopInv(shoptype)
    text = "shop"
    data = {text = text}
    inventory = {}

    ESX.TriggerServerCallback("suku:getShopItems", function(shopInv)
        for i = 1, #shopInv, 1 do
            table.insert(inventory, shopInv[i])
        end
    end, shoptype)

    Citizen.Wait(500)
    TriggerEvent("esx_inventoryhud:openShopInventory", data, inventory)
end

RegisterNetEvent("suku:OpenCustomShopInventory")
AddEventHandler("suku:OpenCustomShopInventory", function(type, shopinventory)
    text = "shop"
    data = {text = text}
    inventory = {}

    ESX.TriggerServerCallback("suku:getCustomShopItems", function(shopInv)
        for i = 1, #shopInv, 1 do
            table.insert(inventory, shopInv[i])
        end
    end, type, shopinventory)
    Citizen.Wait(500)

    TriggerEvent("esx_inventoryhud:openShopInventory", data, inventory)
end)

RegisterNetEvent("esx_inventoryhud:openShopInventory")
AddEventHandler("esx_inventoryhud:openShopInventory", function(data, inventory)
	setShopInventoryData(data, inventory, weapons)
	openShopInventory()
end)

function setShopInventoryData(data, inventory)
    shopData = data

    SendNUIMessage({action = "setInfoText", text = data.text})

    items = {}

    SendNUIMessage({action = "setShopInventoryItems", itemList = inventory})
end

function openShopInventory()
    loadPlayerInventory()
    isInInventory = true

    SendNUIMessage({action = "display", type = "shop"})

    SetNuiFocus(true, true)
end

RegisterNUICallback("TakeFromShop", function(data, cb)
	if IsPedSittingInAnyVehicle(playerPed) then
		return
	end

	if type(data.number) == "number" and math.floor(data.number) == data.number then
		TriggerServerEvent("suku:SellItemToPlayer", GetPlayerServerId(PlayerId()), data.item.type, data.item.name, tonumber(data.number))
	end

        Wait(150)
        loadPlayerInventory()

        cb("ok")
    end)

RegisterNetEvent("suku:AddAmmoToWeapon")
AddEventHandler("suku:AddAmmoToWeapon", function(hash, amount)
    AddAmmoToPed(GetPlayerPed(-1), hash, amount)
end)

function IsInRegularShopZone(coords)
    RegularShop = Config.Shops.RegularShop.Locations
    for i = 1, #RegularShop, 1 do
        if GetDistanceBetweenCoords(coords, RegularShop[i].x, RegularShop[i].y, RegularShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInCartelShopZone(coords)
    CartelShop = Config.Shops.CartelShop.Locations
    for i = 1, #CartelShop, 1 do
        if GetDistanceBetweenCoords(coords, CartelShop[i].x, CartelShop[i].y, CartelShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end



function IsInGangShop1Zone(coords)
    GangShop1 = Config.Shops.GangShop1.Locations
    for i = 1, #GangShop1, 1 do
        if GetDistanceBetweenCoords(coords, GangShop1[i].x, GangShop1[i].y, GangShop1[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end


function IsInGangShop2Zone(coords)
    GangShop2 = Config.Shops.GangShop2.Locations
    for i = 1, #GangShop2, 1 do
        if GetDistanceBetweenCoords(coords, GangShop2[i].x, GangShop2[i].y, GangShop2[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInGangShop3Zone(coords)
    GangShop3 = Config.Shops.GangShop3.Locations
    for i = 1, #GangShop3, 1 do
        if GetDistanceBetweenCoords(coords, GangShop3[i].x, GangShop3[i].y, GangShop3[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end


function IsInpharmaShopZone(coords)
    pharmaShop = Config.Shops.pharmaShop.Locations
    for i = 1, #pharmaShop, 1 do
        if GetDistanceBetweenCoords(coords, pharmaShop[i].x, pharmaShop[i].y, pharmaShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInRobsLiquorZone(coords)
    RobsLiquor = Config.Shops.RobsLiquor.Locations
    for i = 1, #RobsLiquor, 1 do
        if GetDistanceBetweenCoords(coords, RobsLiquor[i].x, RobsLiquor[i].y, RobsLiquor[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInYouToolZone(coords)
    YouTool = Config.Shops.YouTool.Locations
    for i = 1, #YouTool, 1 do
        if GetDistanceBetweenCoords(coords, YouTool[i].x, YouTool[i].y, YouTool[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end


function IsInnPhoneshopZone(coords)
    nPhoneShop = Config.Shops.nPhoneShop.Locations
    for i = 1, #nPhoneShop, 1 do
        if GetDistanceBetweenCoords(coords, nPhoneShop[i].x, nPhoneShop[i].y, nPhoneShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end



function IsInPrisonShopZone(coords)
    PrisonShop = Config.Shops.PrisonShop.Locations
    for i = 1, #PrisonShop, 1 do
        if GetDistanceBetweenCoords(coords, PrisonShop[i].x, PrisonShop[i].y, PrisonShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end


function IsInWeaponShopZone(coords)
    WeaponShop = Config.Shops.WeaponShop.Locations
    for i = 1, #WeaponShop, 1 do
        if GetDistanceBetweenCoords(coords, WeaponShop[i].x, WeaponShop[i].y, WeaponShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end


function IsInArmoryShopZone(coords)
    ArmoryShop = Config.Shops.Armory.Locations
    for i = 1, #ArmoryShop, 1 do
        if GetDistanceBetweenCoords(coords, ArmoryShop[i].x, ArmoryShop[i].y, ArmoryShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end




function IsInBlackMarkeShopZone(coords)
    BlackMarketShop = Config.Shops.BlackMarket.Locations
    for i = 1, #BlackMarketShop, 1 do
        if GetDistanceBetweenCoords(coords, BlackMarketShop[i].x, BlackMarketShop[i].y, BlackMarketShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end



function IsInDarknetShopZone(coords)
    DarknetShop = Config.Shops.Darknet.Locations
    for i = 1, #DarknetShop, 1 do
        if GetDistanceBetweenCoords(coords, DarknetShop[i].x, DarknetShop[i].y, DarknetShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        player = GetPlayerPed(-1)
        coords = GetEntityCoords(player)

        if GetDistanceBetweenCoords(coords, Config.WeaponLiscence.x, Config.WeaponLiscence.y, Config.WeaponLiscence.z, true) < 3.0 then
            ESX.Game.Utils.DrawText3D(vector3(Config.WeaponLiscence.x, Config.WeaponLiscence.y, Config.WeaponLiscence.z), "Press ~r~[E]~s~ to open shop", 0.6)

            if IsControlJustReleased(0, 38) then
                if Licenses['weapon'] == nil then
                    OpenBuyLicenseMenu()
                else
                    exports['mythic_notify']:SendAlert('error', 'You already have a Fire arms license!')
                end
                Citizen.Wait(2000)
            end
        end
    end
end)

RegisterNetEvent('suku:GetLicenses')
AddEventHandler('suku:GetLicenses', function (licenses)
    for i = 1, #licenses, 1 do
        Licenses[licenses[i].type] = true
    end
end)

function OpenBuyLicenseMenu()
    ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'shop_license',{
        title = 'Register a License?',
        elements = {
          {label = 'yes' ..' ($' .. Config.LicensePrice ..')', value = 'yes'},
          {label = 'no', value = 'no' },
     }}, function (data, menu)
        if data.current.value == 'yes' then
            TriggerServerEvent('suku:buyLicense')
        end
        menu.close()
    end, function (data, menu)
        menu.close()
    end)
end

Citizen.CreateThread(function()
    player = GetPlayerPed(-1)
    coords = GetEntityCoords(player)
    for k, v in pairs(Config.Shops.RegularShop.Locations) do
        CreateBlip(vector3(Config.Shops.RegularShop.Locations[k].x, Config.Shops.RegularShop.Locations[k].y, Config.Shops.RegularShop.Locations[k].z ), "Convenience Store", 3.0, Config.Color, Config.ShopBlipID)
    end

    for k, v in pairs(Config.Shops.RobsLiquor.Locations) do
        CreateBlip(vector3(Config.Shops.RobsLiquor.Locations[k].x, Config.Shops.RobsLiquor.Locations[k].y, Config.Shops.RobsLiquor.Locations[k].z ), "RobsLiquor", 3.0, Config.Color, Config.LiquorBlipID)
    end




   -- for k, v in pairs(Config.Shops.YouTool.Locations) do
   --     CreateBlip(vector3(Config.Shops.YouTool.Locations[k].x, Config.Shops.YouTool.Locations[k].y, Config.Shops.YouTool.Locations[k].z ), "YouTool", 3.0, Config.Color, Config.YouToolBlipID)
   -- end
    

    for k, v in pairs(Config.Shops.pharmaShop.Locations) do
        CreateBlip(vector3(Config.Shops.pharmaShop.Locations[k].x, Config.Shops.pharmaShop.Locations[k].y, Config.Shops.pharmaShop.Locations[k].z), "Doc Seventh Pharmacy", 3.0, Config.Color, Config.PharmaShopBlipID)
    end

    for k, v in pairs(Config.Shops.nPhoneShop.Locations) do
        CreateBlip(vector3(Config.Shops.nPhoneShop.Locations[k].x, Config.Shops.nPhoneShop.Locations[k].y, Config.Shops.nPhoneShop.Locations[k].z), "nPhone Store", 3.0, Config.Color, Config.PhoneShopBlipID)
    end


    for k, v in pairs(Config.Shops.WeaponShop.Locations) do
        CreateBlip(vector3(Config.Shops.WeaponShop.Locations[k].x, Config.Shops.WeaponShop.Locations[k].y, Config.Shops.WeaponShop.Locations[k].z), "Ammunation", 3.0, Config.WeaponColor, Config.WeaponShopBlipID)
    end

    for k, v in pairs(Config.Shops.Armory.Locations) do
        CreateBlip(vector3(Config.Shops.Armory.Locations[k].x, Config.Shops.Armory.Locations[k].y, Config.Shops.Armory.Locations[k].z), "Armory", 3.0, Config.WeaponColor, Config.ArmoryShopBlipID)
    end

  --  for k, v in pairs(Config.Shops.BlackMarket.Locations) do
   --     CreateBlip(vector3(Config.Shops.BlackMarket.Locations[k].x, Config.Shops.BlackMarket.Locations[k].y, Config.Shops.BlackMarket.Locations[k].z), "BlackMarket", 3.0, Config.WeaponColor, Config.BlackMarketShopBlipID)
  --  end

    for k, v in pairs(Config.Shops.Darknet.Locations) do
        CreateBlip(vector3(Config.Shops.Darknet.Locations[k].x, Config.Shops.Darknet.Locations[k].y, Config.Shops.Darknet.Locations[k].z), "Darknet", 3.0, Config.WeaponColor, Config.DarknetShopBlipID)
    end

   -- CreateBlip(vector3(-755.79, 5596.07, 41.67), "Cablecart", 3.0, 4, 36)
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        player = GetPlayerPed(-1)
        coords = GetEntityCoords(player)

        for k, v in pairs(Config.Shops.RegularShop.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.RegularShop.Locations[k].x, Config.Shops.RegularShop.Locations[k].y, Config.Shops.RegularShop.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.RegularShop.Locations[k].x, Config.Shops.RegularShop.Locations[k].y, Config.Shops.RegularShop.Locations[k].z + 1.0), "Press ~r~[E]~s~ to open shop", 0.6)
            end
        end

        for k, v in pairs(Config.Shops.CartelShop.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.CartelShop.Locations[k].x, Config.Shops.CartelShop.Locations[k].y, Config.Shops.CartelShop.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.CartelShop.Locations[k].x, Config.Shops.CartelShop.Locations[k].y, Config.Shops.CartelShop.Locations[k].z + 1.0), "Press ~r~[E]~s~ to open Cartel shop", 0.6)
            end
        end

        for k, v in pairs(Config.Shops.GangShop1.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.GangShop1.Locations[k].x, Config.Shops.GangShop1.Locations[k].y, Config.Shops.GangShop1.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.GangShop1.Locations[k].x, Config.Shops.GangShop1.Locations[k].y, Config.Shops.GangShop1.Locations[k].z + 1.0), "Press ~r~[E]~s~ to open GangShop1", 0.6)
            end
        end

        for k, v in pairs(Config.Shops.GangShop2.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.GangShop2.Locations[k].x, Config.Shops.GangShop2.Locations[k].y, Config.Shops.GangShop2.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.GangShop2.Locations[k].x, Config.Shops.GangShop2.Locations[k].y, Config.Shops.GangShop2.Locations[k].z + 1.0), "Press ~r~[E]~s~ to open GangShop2", 0.6)
            end
        end
    
        
        for k, v in pairs(Config.Shops.GangShop3.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.GangShop3.Locations[k].x, Config.Shops.GangShop3.Locations[k].y, Config.Shops.GangShop3.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.GangShop3.Locations[k].x, Config.Shops.GangShop3.Locations[k].y, Config.Shops.GangShop3.Locations[k].z + 1.0), "Press ~r~[E]~s~ to open GangShop3", 0.6)
            end
        end


        for k, v in pairs(Config.Shops.RobsLiquor.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.RobsLiquor.Locations[k].x, Config.Shops.RobsLiquor.Locations[k].y, Config.Shops.RobsLiquor.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.RobsLiquor.Locations[k].x, Config.Shops.RobsLiquor.Locations[k].y, Config.Shops.RobsLiquor.Locations[k].z + 1.0), "Press ~r~[E]~s~ to open shop", 0.6)
            end
        end



        for k, v in pairs(Config.Shops.YouTool.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.YouTool.Locations[k].x, Config.Shops.YouTool.Locations[k].y, Config.Shops.YouTool.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.YouTool.Locations[k].x, Config.Shops.YouTool.Locations[k].y, Config.Shops.YouTool.Locations[k].z + 1.0), "Press ~r~[E]~s~ to open shop", 0.6)
            end
        end

        for k, v in pairs(Config.Shops.nPhoneShop.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.nPhoneShop.Locations[k].x, Config.Shops.nPhoneShop.Locations[k].y, Config.Shops.nPhoneShop.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.nPhoneShop.Locations[k].x, Config.Shops.nPhoneShop.Locations[k].y, Config.Shops.nPhoneShop.Locations[k].z + 1.0), "Press ~r~[E]~s~ to open shop", 0.6)
            end
        end


        for k, v in pairs(Config.Shops.pharmaShop.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.pharmaShop.Locations[k].x, Config.Shops.pharmaShop.Locations[k].y, Config.Shops.pharmaShop.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.pharmaShop.Locations[k].x, Config.Shops.pharmaShop.Locations[k].y, Config.Shops.pharmaShop.Locations[k].z + 1.0), "Press ~r~[E]~s~ to open shop", 0.6)
            end
        end

        for k, v in pairs(Config.Shops.PrisonShop.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.PrisonShop.Locations[k].x, Config.Shops.PrisonShop.Locations[k].y, Config.Shops.PrisonShop.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.PrisonShop.Locations[k].x, Config.Shops.PrisonShop.Locations[k].y, Config.Shops.PrisonShop.Locations[k].z), "Press ~r~[E]~s~ to open shop", 0.6)
            end
        end

        for k, v in pairs(Config.Shops.WeaponShop.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.WeaponShop.Locations[k].x, Config.Shops.WeaponShop.Locations[k].y, Config.Shops.WeaponShop.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.WeaponShop.Locations[k].x, Config.Shops.WeaponShop.Locations[k].y, Config.Shops.WeaponShop.Locations[k].z + 1.0), "Press ~r~[E]~s~ to open shop", 0.6)
            end
        end

        for k, v in pairs(Config.Shops.Armory.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.Armory.Locations[k].x, Config.Shops.Armory.Locations[k].y, Config.Shops.Armory.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.Armory.Locations[k].x, Config.Shops.Armory.Locations[k].y, Config.Shops.Armory.Locations[k].z + 1.0), "Press ~r~[E]~s~ to open Armory", 0.6)
            end
        end

        for k, v in pairs(Config.Shops.BlackMarket.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.BlackMarket.Locations[k].x, Config.Shops.BlackMarket.Locations[k].y, Config.Shops.BlackMarket.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.BlackMarket.Locations[k].x, Config.Shops.BlackMarket.Locations[k].y, Config.Shops.BlackMarket.Locations[k].z + 1.0), "Press ~r~[E]~s~ to open BlackMarket", 0.6)
            end
        end

        for k, v in pairs(Config.Shops.Darknet.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.Darknet.Locations[k].x, Config.Shops.Darknet.Locations[k].y, Config.Shops.Darknet.Locations[k].z, true) < 3.0 then
                ESX.Game.Utils.DrawText3D(vector3(Config.Shops.Darknet.Locations[k].x, Config.Shops.Darknet.Locations[k].y, Config.Shops.Darknet.Locations[k].z + 1.0), "Press ~r~[E]~s~ to access darknet", 0.6)
            end
        end
    end
end)

function CreateBlip(coords, text, radius, color, sprite)
	local blip = AddBlipForCoord(coords)
	SetBlipSprite(blip, sprite)
	SetBlipColour(blip, color)
	SetBlipScale(blip, 0.8)
	SetBlipAsShortRange(blip, true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString(text)
	EndTextCommandSetBlipName(blip)
end
