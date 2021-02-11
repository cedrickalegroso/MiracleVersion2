ESX = nil

TriggerEvent("esx:getShRETROaredObjRETROect", function(obj) ESX = obj end)

ESX.RegisterServerCallback("esx_inventoryhud:getPlayerInventory", function(source, cb, target)
	local targetXPlayer = ESX.GetPlayerFromId(target)

	if targetXPlayer ~= nil then
		cb({inventory = targetXPlayer.inventory, money = targetXPlayer.getMoney(), accounts = targetXPlayer.accounts, weapons = targetXPlayer.loadout})
	else
		cb(nil)
	end
end)

RegisterServerEvent("esx_inventoryhud:tradePlayerItem")
AddEventHandler("esx_inventoryhud:tradePlayerItem", function(from, target, type, itemName, itemCount)
		local sourceXPlayer = ESX.GetPlayerFromId(from)
		local targetXPlayer = ESX.GetPlayerFromId(target)

		 if type == "item_standard" then
            local sourceItem = sourceXPlayer.getInventoryItem(itemName)
            local targetItem = targetXPlayer.getInventoryItem(itemName)

            if itemCount > 0 and sourceItem.count >= itemCount then
                if targetItem.limit == -1 or targetXPlayer.canCarryItem then
                    sourceXPlayer.removeInventoryItem(itemName, itemCount)
                    targetXPlayer.addInventoryItem(itemName, itemCount)
                else
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You cannot Hold this item'})
                end
            end
		elseif type == "item_money" then
			if itemCount > 0 and sourceXPlayer.getMoney() >= itemCount then
				sourceXPlayer.removeMoney(itemCount)
				targetXPlayer.addMoney(itemCount)
			end
		elseif type == "item_account" then
			if itemCount > 0 and sourceXPlayer.getAccount(itemName).money >= itemCount then
				sourceXPlayer.removeAccountMoney(itemName, itemCount)
				targetXPlayer.addAccountMoney(itemName, itemCount)
			end
		elseif type == "item_weapon" then
			if not targetXPlayer.hasWeapon(itemName) then
				sourceXPlayer.removeWeapon(itemName)
				targetXPlayer.addWeapon(itemName, itemCount)
			end
		end
end)

RegisterCommand("openinventory", function(source, args, rawCommand)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local target = tonumber(args[1])
	local ispowered = xPlayer.getGroup()
	local targetXPlayer = ESX.GetPlayerFromId(target)

	
	if ispowered == "admin" or ispowered == "superadmin"  then 

	
			TriggerClientEvent("esx_inventoryhud:openRETROPlayerInventory", source, target, targetXPlayer.name)
	else
		print(xPlayer.name.." Tried opening other inventory but doesnt have permissions")
	end
	
end)

RegisterCommand("takejewel", function(source, args, rawCommand)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local target = tonumber(args[1])
	local ispowered = xPlayer.getGroup()
	local ispopo = xPlayer.getJob()
	local targetXPlayer = ESX.GetPlayerFromId(target)
	
	if ispowered == "admin" or ispowered == "superadmin" or ispopo.name == "police"  then 

		targetXPlayer.removeInventoryItem('jewels', targetXPlayer.getInventoryItem('jewels').count)
			
	else
		print(xPlayer.name.." Tried opening other inventory but doesnt have permissions")
	end
	
end)



RegisterServerEvent("nef:openinventoryadmin")
AddEventHandler("nef:openinventoryadmin", function( targetId)
	local target = tonumber(args[1])

	print(targetId)
	
	local target = targetId
	local targetXPlayer = ESX.GetPlayerFromId(targetId)
		TriggerClientEvent("esx_inventoryhud:openRETROPlayerInventory", source, target, targetXPlayer.name)
end)


RegisterServerEvent("suku:sendShopItems")
AddEventHandler("suku:sendShopItems", function(source, itemList)
	itemShopList = itemList
end)

ESX.RegisterServerCallback("suku:getShopItems", function(source, cb, shoptype)
	itemShopList = {}
	local itemResult = MySQL.Sync.fetchAll('SELECT * FROM items')
	local itemInformation = {}

	print(shoptype)

	for i=1, #itemResult, 1 do

		if itemInformation[itemResult[i].name] == nil then
			itemInformation[itemResult[i].name] = {}
		end

		itemInformation[itemResult[i].name].name = itemResult[i].name
		itemInformation[itemResult[i].name].label = itemResult[i].label
		itemInformation[itemResult[i].name].limit = itemResult[i].limit
		itemInformation[itemResult[i].name].rare = itemResult[i].rare
		itemInformation[itemResult[i].name].can_remove = itemResult[i].can_remove
		itemInformation[itemResult[i].name].price = itemResult[i].price

		if shoptype == "regular" then
			for _, v in pairs(Config.Shops.RegularShop.Items) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_standard",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = itemInformation[itemResult[i].name].limit,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end
		end
		
		if shoptype == "nPhoneShop" then
			for _, v in pairs(Config.Shops.nPhoneShop.Items) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_standard",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = itemInformation[itemResult[i].name].limit,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end
		end
		if shoptype == "pharmaShop" then
			for _, v in pairs(Config.Shops.pharmaShop.Items) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_standardMed",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = itemInformation[itemResult[i].name].limit,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end
		end
		if shoptype == "robsliquor" then
			for _, v in pairs(Config.Shops.RobsLiquor.Items) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_standard",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = itemInformation[itemResult[i].name].limit,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end
		end
		if shoptype == "youtool" then
			for _, v in pairs(Config.Shops.YouTool.Items) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_standard",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = itemInformation[itemResult[i].name].limit,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end
		end
		if shoptype == "prison" then
			for _, v in pairs(Config.Shops.PrisonShop.Items) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_standard",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = itemInformation[itemResult[i].name].limit,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end
		end
		if shoptype == "weaponshop" then
			local weapons = Config.Shops.WeaponShop.Weapons
			for _, v in pairs(Config.Shops.WeaponShop.Weapons) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_weapon",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = 1,
						ammo = v.ammo,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end

			local ammo = Config.Shops.WeaponShop.Ammo
			for _,v in pairs(Config.Shops.WeaponShop.Ammo) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_ammo",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = 1,
						weaponhash = v.weaponhash,
						ammo = v.ammo,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end

			for _, v in pairs(Config.Shops.WeaponShop.Items) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_standard",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = itemInformation[itemResult[i].name].limit,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end
		end

		if shoptype == "armoryshop" then
			local weaponsArmory = Config.Shops.Armory.ArmoryWeapons
			for _, v in pairs(Config.Shops.Armory.ArmoryWeapons) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_weaponArmory",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = 1,
						ammo = v.ammo,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end

			local ammoArmory = Config.Shops.Armory.ArmoryAmmo
			for _,v in pairs(Config.Shops.Armory.ArmoryAmmo) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_ammoArmory",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = 1,
						weaponhash = v.weaponhash,
						ammo = v.ammo,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end

			for _, v in pairs(Config.Shops.Armory.ArmoryItems) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_Armory",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = itemInformation[itemResult[i].name].limit,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end
		end

	

		if shoptype == "blackmarketshop" then
			local weapons = Config.Shops.BlackMarket.BlackMarketWeapons
			for _, v in pairs(Config.Shops.BlackMarket.BlackMarketWeapons) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_weaponDark",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = 1,
						ammo = v.ammo,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end

			local ammo = Config.Shops.BlackMarket.BlackMarketAmmo
			for _,v in pairs(Config.Shops.BlackMarket.BlackMarketAmmo) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_ammo",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = 1,
						weaponhash = v.weaponhash,
						ammo = v.ammo,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end

			for _, v in pairs(Config.Shops.BlackMarket.BlackMarketItems) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_standardDark",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = itemInformation[itemResult[i].name].limit,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end
		end




		if shoptype == "cartelshop" then
			local weapons = Config.Shops.CartelShop.CartelShopWeapons
			for _, v in pairs(Config.Shops.CartelShop.CartelShopWeapons) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_weaponCartelShop",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = 1,
						ammo = v.ammo,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end

			local ammo = Config.Shops.CartelShop.CartelShopAmmo
			for _,v in pairs(Config.Shops.CartelShop.CartelShopAmmo) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_ammo",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = 1,
						weaponhash = v.weaponhash,
						ammo = v.ammo,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end

			for _, v in pairs(Config.Shops.CartelShop.CartelShopItems) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_standardCartelShop",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = itemInformation[itemResult[i].name].limit,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end
		end

		if shoptype == "gangshop01" then
			local weapons = Config.Shops.GangShop1.GangShop1Weapons
			for _, v in pairs(Config.Shops.GangShop1.GangShop1Weapons) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_weaponGangShop1",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = 1,
						ammo = v.ammo,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end

			local ammo = Config.Shops.GangShop1.GangShop1Ammo
			for _,v in pairs(Config.Shops.GangShop1.GangShop1Ammo) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_ammo",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = 1,
						weaponhash = v.weaponhash,
						ammo = v.ammo,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end

			for _, v in pairs(Config.Shops.GangShop1.GangShop1Items) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_standardGangShop1",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = itemInformation[itemResult[i].name].limit,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end
		end


		if shoptype == "gangshop02" then
			local weapons = Config.Shops.GangShop2.GangShop2Weapons
			for _, v in pairs(Config.Shops.GangShop2.GangShop2Weapons) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_weaponGangShop2",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = 1,
						ammo = v.ammo,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end

			local ammo = Config.Shops.GangShop2.GangShop2Ammo
			for _,v in pairs(Config.Shops.GangShop2.GangShop2Ammo) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_ammo",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = 1,
						weaponhash = v.weaponhash,
						ammo = v.ammo,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end

			for _, v in pairs(Config.Shops.GangShop2.GangShop2Items) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_standardGangShop2",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = itemInformation[itemResult[i].name].limit,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end
		end


		if shoptype == "gangshop03" then
			local weapons = Config.Shops.GangShop3.GangShop3Weapons
			for _, v in pairs(Config.Shops.GangShop3.GangShop3Weapons) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_weaponGangShop3",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = 1,
						ammo = v.ammo,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end

			local ammo = Config.Shops.GangShop3.GangShop3Ammo
			for _,v in pairs(Config.Shops.GangShop3.GangShop3Ammo) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_ammo",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = 1,
						weaponhash = v.weaponhash,
						ammo = v.ammo,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end

			for _, v in pairs(Config.Shops.GangShop3.GangShop3Items) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_standardGangShop3",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = itemInformation[itemResult[i].name].limit,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end
		end

		
		if shoptype == "darknet" then
			local weapons = Config.Shops.Darknet.DarknetWeapons
			for _, v in pairs(Config.Shops.Darknet.DarknetWeapons) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_weaponDark",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = 1,
						ammo = v.ammo,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end

			local ammo = Config.Shops.Darknet.DarknetAmmo
			for _,v in pairs(Config.Shops.Darknet.DarknetAmmo) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_ammo",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = 1,
						weaponhash = v.weaponhash,
						ammo = v.ammo,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end

			for _, v in pairs(Config.Shops.Darknet.DarknetItems) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_standardDark",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = itemInformation[itemResult[i].name].limit,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end
		end


		

	end
	cb(itemShopList)
end)

ESX.RegisterServerCallback("suku:getCustomShopItems", function(source, cb, shoptype, customInventory)
	itemShopList = {}
	local itemResult = MySQL.Sync.fetchAll('SELECT * FROM items')
	local itemInformation = {}

	for i=1, #itemResult, 1 do

		if itemInformation[itemResult[i].name] == nil then
			itemInformation[itemResult[i].name] = {}
		end

		itemInformation[itemResult[i].name].name = itemResult[i].name
		itemInformation[itemResult[i].name].label = itemResult[i].label
		itemInformation[itemResult[i].name].limit = itemResult[i].limit
		itemInformation[itemResult[i].name].rare = itemResult[i].rare
		itemInformation[itemResult[i].name].can_remove = itemResult[i].can_remove
		itemInformation[itemResult[i].name].price = itemResult[i].price

		print(shoptype)

		if shoptype == "normal" then
			for _, v in pairs(customInventory.Items) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_standard",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = itemInformation[itemResult[i].name].limit,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end
		end
		
		if shoptype == "weapon" then
			local weapons = customInventory.Weapons
			for _, v in pairs(customInventory.Weapons) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_weapon",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = 1,
						ammo = v.ammo,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end

			local ammo = customInventory.Ammo
			for _,v in pairs(customInventory.Ammo) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_ammo",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = 1,
						weaponhash = v.weaponhash,
						ammo = v.ammo,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end

			for _, v in pairs(customInventory.Items) do
				if v.name == itemResult[i].name then
					table.insert(itemShopList, {
						type = "item_standard",
						name = itemInformation[itemResult[i].name].name,
						label = itemInformation[itemResult[i].name].label,
						limit = itemInformation[itemResult[i].name].limit,
						rare = itemInformation[itemResult[i].name].rare,
						can_remove = itemInformation[itemResult[i].name].can_remove,
						price = itemInformation[itemResult[i].name].price,
						count = 99999999
					})
				end
			end
		end


	
	end
	cb(itemShopList)
end)

RegisterNetEvent("suku:SellItemToPlayer")
AddEventHandler("suku:SellItemToPlayer",function(source, type, item, count)
    local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	--print(item)

	if type == "item_standard" then

		if count > 15 then 
			TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You can carry 15!' })
		else 


			local targetItem = xPlayer.getInventoryItem(item)
        
            local list = itemShopList
            for i = 1, #list, 1 do
				if list[i].name == item then
					local totalPrice = count * list[i].price
					if xPlayer.getMoney() >= totalPrice then

						local itemcounter = xPlayer.getInventoryItem(item)
						print(item.count)
						
				    	if list[i].name == "armor" or list[i].name == "armor2" then


							if itemcounter.count > 1 then 
								TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You can only carry 1 armor at a time.' })
							else 
								xPlayer.removeMoney(totalPrice)
								xPlayer.addInventoryItem(item, count)
								TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You purchased '..count.." "..list[i].label })
							end
						

					 else 

						if itemcounter.count >= 15 then 
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You already have enough' })
						else 

							local name = GetPlayerName(source)
							local message = name..' bought a '..item
							local color = 56108
							
							local webhook = 'https://discordapp.com/api/webhooks/765798084642865162/_33sFTfxBdK1eamQdA-NzLZ_KyFtfYzNXVu4tE--HmAbDqMoAr87Uo9uRzwwb1ZLtBWx'
							
							sendToDiscord (name,message,color, webhook)  


							local society = 'government'
							local amount  = totalPrice * 0.12
							
							TriggerEvent('esx_society:depositTax',source, society, amount)


							xPlayer.removeMoney(totalPrice)
							xPlayer.addInventoryItem(item, count)
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You purchased '..count.." "..list[i].label })
						end

					 end



					

						
					else
						TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You do not have enough money!' })
					end
				end
			end
			

        end
  
	end


	
    if type == "item_standardMed" then
        local targetItem = xPlayer.getInventoryItem(item)
        
            local list = itemShopList
            for i = 1, #list, 1 do
				if list[i].name == item then
					local totalPrice = count * list[i].price
					if xPlayer.getMoney() >= totalPrice then

						local itemcounter = xPlayer.getInventoryItem(item)
						print(item.count)

						if itemcounter.count >= 5 then 
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You already have enough' })
						else 

							local society = 'society_ambulance'
							local amount  = totalPrice

							TriggerEvent('esx_addonaccount:getSharedAccount', society, function(account)
								xPlayer.removeMoney(amount)
								xPlayer.addInventoryItem(item, count)
								
								account.addMoney(amount)
							end)


							local society = 'government'
							local amount  = totalPrice * 0.12
							
							TriggerEvent('esx_society:depositTax',source, society, amount)
						

							local name = GetPlayerName(source)
							local message = name..' bought in pahrmacy '..item
							local color = 56108
							
							local webhook = 'https://discordapp.com/api/webhooks/759854751915048970/U7Eg7uQ6pdDQVPGJuFbxfMtB0_NkdmaVQeo2atHjGIgyuUUVJ9KuV8FH14z36mewXb_U'
							
							sendToDiscord (name,message,color, webhook)  

							
                         



						
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You purchased '..count.." "..list[i].label })
						end


						
					else
						TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You do not have enough money!' })
					end
				end
            end
  
	end

   --CARTEL

		if type == "item_weaponCartelShop" then
			local targetItem = xPlayer.getInventoryItem(item)
				local list = itemShopList
				for i = 1, #list, 1 do
					if list[i].name == item then
						local targetWeapon = xPlayer.hasWeapon(tostring(list[i].name)) 
						if not targetWeapon then
							local totalPrice = 1 * list[i].price
							if xPlayer.getMoney() >= totalPrice then
								local group = xPlayer.getJob().name	
							if group ~= 'gang15' then
								TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You must be an Gang Member!' })
							else 
								xPlayer.removeMoney(totalPrice)
								xPlayer.addWeapon(list[i].name, list[i].ammo)
								TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You purchased a '..list[i].label })
							end					
							else
								TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You do not have enough money!' })
							end
						else
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You already own this weapon!' })
						end
					end
				end
		
		end
		
	

	
		if type == "item_standardCartelShop" then
			local targetItem = xPlayer.getInventoryItem(item)
			
				local list = itemShopList
				for i = 1, #list, 1 do
					if list[i].name == item then
						local totalPrice = count * list[i].price
						if xPlayer.getMoney() >= totalPrice then
	
							local itemcounter = xPlayer.getInventoryItem(item)
	
							local group = xPlayer.getJob().name
	
							print(group)
							print(item.count)
	
						
							if group ~= 'gang15' then 
								TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You must be an Gang Member!' })
							else 
								
	
	
							if itemcounter.count >= 10 then 
								TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You already have enough' })
							else 
	
								local society = 'government'
								local amount  = totalPrice * 0.12
								
								TriggerEvent('esx_society:depositTax',source, society, amount)
	
								
								xPlayer.removeMoney(totalPrice)
								xPlayer.addInventoryItem(item, count)
								TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You purchased '..count.." "..list[i].label })
							end
							
					
					end
	
							
						else
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You do not have enough money!' })
						end
					end
				end
	  
		end
	
	-- GANG 1

	if type == "item_weaponGangShop1" then
		local targetItem = xPlayer.getInventoryItem(item)
			local list = itemShopList
			for i = 1, #list, 1 do
				if list[i].name == item then
					local targetWeapon = xPlayer.hasWeapon(tostring(list[i].name)) 
					if not targetWeapon then
						local totalPrice = 1 * list[i].price
						if xPlayer.getMoney() >= totalPrice then
							local group = xPlayer.getJob().name	
						if group ~= 'gang16' then
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You must be an Gang Member!' })
						else 
							xPlayer.removeMoney(totalPrice)
							xPlayer.addWeapon(list[i].name, list[i].ammo)
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You purchased a '..list[i].label })
						end					
						else
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You do not have enough money!' })
						end
					else
						TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You already own this weapon!' })
					end
				end
			end
	
	end
	



	if type == "item_standardGangShop1" then
		local targetItem = xPlayer.getInventoryItem(item)
		
			local list = itemShopList
			for i = 1, #list, 1 do
				if list[i].name == item then
					local totalPrice = count * list[i].price
					if xPlayer.getMoney() >= totalPrice then

						local itemcounter = xPlayer.getInventoryItem(item)

						local group = xPlayer.getJob().name

						print(group)
						print(item.count)

					
						if group ~= 'gang16' then 
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You must be an Gang Member!' })
						else 
							


						if itemcounter.count >= 10 then 
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You already have enough' })
						else 

							local society = 'government'
							local amount  = totalPrice * 0.12
							
							TriggerEvent('esx_society:depositTax',source, society, amount)

							
							xPlayer.removeMoney(totalPrice)
							xPlayer.addInventoryItem(item, count)
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You purchased '..count.." "..list[i].label })
						end
						
				
				end

						
					else
						TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You do not have enough money!' })
					end
				end
			end
  
	end


	-- GANG 2

	if type == "item_weaponGangShop2" then
		local targetItem = xPlayer.getInventoryItem(item)
			local list = itemShopList
			for i = 1, #list, 1 do
				if list[i].name == item then
					local targetWeapon = xPlayer.hasWeapon(tostring(list[i].name)) 
					if not targetWeapon then
						local totalPrice = 1 * list[i].price
						if xPlayer.getMoney() >= totalPrice then
							local group = xPlayer.getJob().name	
						if group ~= 'gang13' then
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You must be an Gang Member!' })
						else 
							xPlayer.removeMoney(totalPrice)
							xPlayer.addWeapon(list[i].name, list[i].ammo)
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You purchased a '..list[i].label })
						end					
						else
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You do not have enough money!' })
						end
					else
						TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You already own this weapon!' })
					end
				end
			end
	
	end
	



	if type == "item_standardGangShop2" then
		local targetItem = xPlayer.getInventoryItem(item)
		
			local list = itemShopList
			for i = 1, #list, 1 do
				if list[i].name == item then
					local totalPrice = count * list[i].price
					if xPlayer.getMoney() >= totalPrice then

						local itemcounter = xPlayer.getInventoryItem(item)

						local group = xPlayer.getJob().name

						print(group)
						print(item.count)

					
						if group ~= 'gang13' then 
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You must be an Gang Member!' })
						else 
							


						if itemcounter.count >= 10 then 
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You already have enough' })
						else 

							local society = 'government'
							local amount  = totalPrice * 0.12
							
							TriggerEvent('esx_society:depositTax',source, society, amount)

							
							xPlayer.removeMoney(totalPrice)
							xPlayer.addInventoryItem(item, count)
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You purchased '..count.." "..list[i].label })
						end
						
				
				end

						
					else
						TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You do not have enough money!' })
					end
				end
			end
  
	end

		-- GANG 3

		if type == "item_weaponGangShop3" then
			local targetItem = xPlayer.getInventoryItem(item)
				local list = itemShopList
				for i = 1, #list, 1 do
					if list[i].name == item then
						local targetWeapon = xPlayer.hasWeapon(tostring(list[i].name)) 
						if not targetWeapon then
							local totalPrice = 1 * list[i].price
							if xPlayer.getMoney() >= totalPrice then
								local group = xPlayer.getJob().name	
							if group ~= 'gang14' then
								TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You must be an Gang Member!' })
							else 
								xPlayer.removeMoney(totalPrice)
								xPlayer.addWeapon(list[i].name, list[i].ammo)
								TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You purchased a '..list[i].label })
							end					
							else
								TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You do not have enough money!' })
							end
						else
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You already own this weapon!' })
						end
					end
				end
		
		end
		
	
	
	
		if type == "item_standardGangShop3" then
			local targetItem = xPlayer.getInventoryItem(item)
			
				local list = itemShopList
				for i = 1, #list, 1 do
					if list[i].name == item then
						local totalPrice = count * list[i].price
						if xPlayer.getMoney() >= totalPrice then
	
							local itemcounter = xPlayer.getInventoryItem(item)
	
							local group = xPlayer.getJob().name
	
							print(group)
							print(item.count)
	
						
							if group ~= 'gang14' then 
								TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You must be an Gang Member!' })
							else 
								
	
	
							if itemcounter.count >= 10 then 
								TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You already have enough' })
							else 
	
								local society = 'government'
								local amount  = totalPrice * 0.12
								
								TriggerEvent('esx_society:depositTax',source, society, amount)
	
								
								xPlayer.removeMoney(totalPrice)
								xPlayer.addInventoryItem(item, count)
								TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You purchased '..count.." "..list[i].label })
							end
							
					
					end
	
							
						else
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You do not have enough money!' })
						end
					end
				end
	  
		end


	if type == "item_Armory" then
        local targetItem = xPlayer.getInventoryItem(item)
        
            local list = itemShopList
            for i = 1, #list, 1 do
				if list[i].name == item then
					local totalPrice = count * list[i].price
					if xPlayer.getMoney() >= totalPrice then

						local itemcounter = xPlayer.getInventoryItem(item)

						local group = xPlayer.getJob().name

						print(group)
						print(item.count)

					
						if group ~= 'police' then 
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You must be an officer!' })

							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'This is prohibited! Notifying the admins now Good Luck ;)',  })


							local name = GetPlayerName(source)
							local message = name..' tried buying in police armory he/she not a police officer! '
							local color = 56108
							
							local webhook = 'https://discordapp.com/api/webhooks/767904604351627274/1eQ_GA96IxSe_TQrbJg1e8WJbj3ImHe-fK3GeUUvQbAafUtAT1p1BLfvAAL-fjRByysC'
							
							sendToDiscord (name,message,color, webhook)  

                        else 
                            

                            if list[i].name == "armor" or list[i].name == "armor2" then


                                if itemcounter.count > 1 then 
                                    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You can only carry 1 armor at a time.' })
								else 
									
									local name = GetPlayerName(source)
									local message = name..' bought in an item in armory '..item
									local color = 56108
									
									local webhook = 'https://discordapp.com/api/webhooks/748180222473404557/pj0LuAvk7ZSuTuozMJO5EQa9sX9ftXj_EvwiWS_pkZnZE3_vW8Atyn_OZorwqQhV4CxW'
									
									sendToDiscord (name,message,color, webhook)  

									
									local society = 'government'
									local amount  = totalPrice * 0.12
									
									TriggerEvent('esx_society:depositTax',source, society, amount)

                                    xPlayer.removeMoney(totalPrice)
                                    xPlayer.addInventoryItem(item, count)
                                    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You purchased '..count.." "..list[i].label })
                                end
                            else

						if itemcounter.count >= 10 then 
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You already have enough' })
						else 

							local society = 'government'
							local amount  = totalPrice * 0.12
							
							TriggerEvent('esx_society:depositTax',source, society, amount)

							
							xPlayer.removeMoney(totalPrice)
							xPlayer.addInventoryItem(item, count)
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You purchased '..count.." "..list[i].label })
						end
						
                    end
                end

						
					else
						TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You do not have enough money!' })
					end
				end
            end
  
	end





	if type == "item_standardDark" then
        local targetItem = xPlayer.getInventoryItem(item)
      
            local list = itemShopList
            for i = 1, #list, 1 do
				if list[i].name == item then
					local totalPrice = count * list[i].price
					if xPlayer.getAccount('black_money').money >= totalPrice then


						local itemcounter = xPlayer.getInventoryItem(item)
						print(item.count)

						if itemcounter.count >= 5 then 
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You already have enough' })
						else 
							xPlayer.removeAccountMoney('black_money', totalPrice)
						xPlayer.addInventoryItem(item, count)
						TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You purchased '..count.." "..list[i].label })
						end



						
					else
						TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You do not have enough blackmoney!' })
					end
				end
            end
      
	end
	
	if type == "item_weapon" then
        local targetItem = xPlayer.getInventoryItem(item)
       
            local list = itemShopList
            for i = 1, #list, 1 do
				if list[i].name == item then
					local targetWeapon = xPlayer.hasWeapon(tostring(list[i].name)) 
					if not targetWeapon then
						local totalPrice = 1 * list[i].price
						if xPlayer.getMoney() >= totalPrice then

							local name = GetPlayerName(source)
							local message = name..' bought a weapon '..list[i].name
							local color = 56108
							local webhook = 'https://discordapp.com/api/webhooks/765797627505016832/Q12KGiv6v5IY37_CHB272fyl8rFZq5c9E8EsPMQOuEyn-HYK9Ykl_N4qsFyHOAQaqNHL'
							
							sendToDiscord (name,message,color, webhook)  


							local society = 'government'
							local amount  = totalPrice * 0.12
							
							TriggerEvent('esx_society:depositTax',source, society, amount)


							xPlayer.removeMoney(totalPrice)
							xPlayer.addWeapon(list[i].name, list[i].ammo)
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You purchased a '..list[i].label })
						else
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You do not have enough money!' })
						end
					else
						TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You already own this weapon!' })
					end
				end
            end
       
	end


	if type == "item_weaponArmory" then
        local targetItem = xPlayer.getInventoryItem(item)
       
            local list = itemShopList
            for i = 1, #list, 1 do
				if list[i].name == item then
					local targetWeapon = xPlayer.hasWeapon(tostring(list[i].name)) 
					if not targetWeapon then
						local totalPrice = 1 * list[i].price
						if xPlayer.getMoney() >= totalPrice then



							local group = xPlayer.getJob().name

						print(group)
						print(item.count)

					
						if group ~= 'police' then
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You must be an officer!' })

							
							local name = GetPlayerName(source)
							local message = name..' tried to buy a weapon but he is not ang officer!'
							local color = 56108
							local webhook = 'https://discordapp.com/api/webhooks/759853003091476501/F7-HTEM4yhLx0-ZMkbs2sdFXvb1ROh5Kl_OQ62pcqiwZUyoEN0ii5WMgzcGdbM0kpU0R'
							
							sendToDiscord (name,message,color, webhook)  

						else 


							local name = GetPlayerName(source)
							local message = name..' bought a weapon '..list[i].name
							local color = 56108
							local webhook = 'https://discordapp.com/api/webhooks/759852722450464798/4ROFBhrXzcnUhgi3PD719cgCYpzGGfcFD5AAhXBtro-tk3wYUfPh7ytXYDUbHXSyHSoF'
							
							sendToDiscord (name,message,color, webhook)  

							xPlayer.removeMoney(totalPrice)
							xPlayer.addWeapon(list[i].name, list[i].ammo)
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You purchased a '..list[i].label })
						end


						
						else
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You do not have enough money!' })
						end
					else
						TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You already own this weapon!' })
					end
				end
            end
       
	end


	if type == "item_weaponDark" then
		local targetItem = xPlayer.getInventoryItem(item)
		local xPlayer1 = ESX.GetPlayerFromId(source)
		local test = xPlayer1.getAccount('black_money')

		print(test)
		
       
            local list = itemShopList
            for i = 1, #list, 1 do
				if list[i].name == item then
					local targetWeapon = xPlayer.hasWeapon(tostring(list[i].name)) 
					if not targetWeapon then
						local totalPrice = 1 * list[i].price
						if xPlayer.getAccount('black_money').money >= totalPrice then
							xPlayer.removeAccountMoney('black_money', totalPrice)
							xPlayer.addWeapon(list[i].name, list[i].ammo)
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You purchased a '..list[i].label })
						else
							TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You do not have enough blackmoney!' })
						end
					else
						TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You already own this weapon!' })
					end
				end
            end
       
	end
	
	if type == "item_ammo" then
		local targetItem = xPlayer.getInventoryItem(item)
		local list = itemShopList
		for i = 1, #list, 1 do
			if list[i].name == item then
				local targetWeapon = xPlayer.hasWeapon(list[i].weaponhash)
				if targetWeapon then
					local totalPrice = count * list[i].price
					local ammo = count * list[i].ammo
					if xPlayer.getMoney() >= totalPrice then
						xPlayer.removeMoney(totalPrice)
						TriggerClientEvent("suku:AddAmmoToWeapon", source, list[i].weaponhash, ammo)
						TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You purchased '..count.." "..list[i].label })
					else
						TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You do not have enough money!' })
					end
				else
					TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You do not own the weapon for this ammo type!' })
				end
            end
        end
    end
end)

AddEventHandler('esx:playerLoaded', function (source)
    GetLicenses(source)
end)

function GetLicenses(source)
    TriggerEvent('esx_license:getLicenses', source, function (licenses)
        TriggerClientEvent('suku:GetLicenses', source, licenses)
    end)
end

RegisterServerEvent('suku:buyLicense')
AddEventHandler('suku:buyLicense', function ()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.getMoney() >= Config.LicensePrice then

		local name = GetPlayerName(source)
		local message = name..' bought a weapon license'
		local color = 56108
		local webhook = 'https://discordapp.com/api/webhooks/765792167196098580/tRaeX8Fa8MpuS3xMjPKDHGvfBFWIdu3G1LrRu7Gvr0MWkyEyw_vQuFyIf3yomk5M8qJM'
		
		sendToDiscord (name,message,color, webhook)  


		xPlayer.removeMoney(Config.LicensePrice)


		local society = 'government'
		local amount  = Config.LicensePrice * 0.12
		
		TriggerEvent('esx_society:depositTax',source, society, amount)


		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You registered a Fire Arms license.' })
		TriggerEvent('esx_license:addLicense', _source, 'weapon', function ()
			GetLicenses(_source)
		end)
	else
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You do not have enough money!' })
	end
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
