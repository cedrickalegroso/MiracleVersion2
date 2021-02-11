-------------------------------------
------- Created by T1GER#9080 -------
------------------------------------- 


ConfigTiger = {}

-- Police Settings:
ConfigTiger.PoliceDatabaseName = "police"	-- set the exact name from your jobs database for police
ConfigTiger.PoliceNotfiyEnabled = true		-- police notification upon truck robbery enabled (true) or disabled (false)
ConfigTiger.PoliceBlipShow = true			-- enable or disable blip on map on police notify
ConfigTiger.PoliceBlipTime = 30				-- miliseconds that blip is active on map (this value is multiplied with 4 in the script)
ConfigTiger.PoliceBlipRadius = 50.0			-- set radius of the police notify blip
ConfigTiger.PoliceBlipAlpha = 250			-- set alpha of the blip
ConfigTiger.PoliceBlipColor = 5				-- set blip color

-- Job Settings:
ConfigTiger.CooldownTime = 120					-- Set cooldown time for doing drug jobs in minutes
ConfigTiger.HackerDevice = "hackerDevice"		-- Name in database for hacker device
ConfigTiger.HackingBlocks = 5					-- Amount of code-blocks, player needs to match per side.
ConfigTiger.HackingTime = 30						-- Amount of time player has to complete the minigame.
ConfigTiger.JobVan = 'rumpo2'					-- spawn name for job van

-- List of Drugs:
ConfigTiger.ListOfDrugs = {
	{ drug = 'coke', label = 'Coke', Enabled = true, BuyPrice = 750, MinReward = 1, MaxReward = 3 },
	{ drug = 'meth', label = 'Meth', Enabled = true, BuyPrice = 650, MinReward = 2, MaxReward = 6 },
	{ drug = 'weed', label = 'Weed', Enabled = true, BuyPrice = 550, MinReward = 4, MaxReward = 10 },
}

-- Job Location & Settings:
ConfigTiger.Jobs = {
    { 
		Spot = vector3(-219.13305664063,6382.3969726563,31.604875564575),
		Heading = 46.104721069336,
		LockpickPos = vector3(-220.72117614746,6381.3217773438,31.556158065796),
		LockpickHeading = 316.11254882812,
		InProgress = false,
		VanSpawned = false,
		GoonsSpawned = false,
		JobPlayer = false,
		Goons = {
			NPC1 = { x = -224.59748840332, y = 6383.2241210938, z = 31.51745223999, h = 347.59951782226, ped = 'G_M_Y_Lost_02', animDict = 'amb@world_human_cop_idles@female@base', animName = 'base', weapon = 'WEAPON_PISTOL', },
			NPC2 = { x = -222.18724060059, y = 6390.8276367188, z = 31.731483459473, h = 132.96998596192, ped = 'G_M_Y_MexGang_01', animDict = 'rcmme_amanda1', animName = 'stand_loop_cop', weapon = 'WEAPON_PISTOL', },
			NPC3 = { x = -207.90756225586, y = 6375.7329101563, z = 31.543397903442, h = 77.105667114258, ped = 'G_M_Y_SalvaBoss_01', animDict = 'amb@world_human_leaning@male@wall@back@legs_crossed@base', animName = 'base', weapon = 'WEAPON_PISTOL' },
			NPC4 = { x = -215.0399017334, y = 6369.32421875, z = 31.49330329895, h = 3.3780143260956, ped = 'G_M_Y_Lost_02', animDict = 'amb@world_human_cop_idles@female@base', animName = 'base', weapon = 'WEAPON_PISTOL', },
			NPC5 = { x = -221.62728881836, y = 6375.7763671875, z = 35.193054199219, h = 36.372509002686, ped = 'G_M_Y_MexGang_01', animDict = 'rcmme_amanda1', animName = 'stand_loop_cop', weapon = 'WEAPON_PISTOL', }
		}
	},
	{ 
		Spot = vector3(-679.55017089844,5797.9360351563,17.330942153931),
		Heading = 243.62330627442,
		LockpickPos = vector3(-678.30072021484,5799.3623046875,17.330938339233),
		LockpickHeading = 158.37776184082,
		InProgress = false,
		VanSpawned = false,
		GoonsSpawned = false,
		JobPlayer = false,
		Goons = {
			NPC1 = { x = -679.2060546875, y = 5801.8061523438, z = 19.747180938721, h = 188.85772705078, ped = 'G_M_Y_Lost_02', animDict = 'amb@world_human_cop_idles@female@base', animName = 'base', weapon = 'WEAPON_PISTOL', },
			NPC2 = { x = -684.60620117188, y = 5796.0415039063, z = 17.330934524536, h = 155.99533081054, ped = 'G_M_Y_MexGang_01', animDict = 'rcmme_amanda1', animName = 'stand_loop_cop', weapon = 'WEAPON_MICROSMG', },
			NPC3 = { x = -669.90759277344, y = 5796.826171875, z = 17.330947875977, h = 133.18479919434, ped = 'G_M_Y_SalvaBoss_01', animDict = 'amb@world_human_leaning@male@wall@back@legs_crossed@base', animName = 'base', weapon = 'WEAPON_PISTOL' },
			NPC4 = { x = -676.41986083984, y = 5790.3002929688, z = 17.330978393555, h = 238.11218261718, ped = 'G_M_Y_Lost_02', animDict = 'amb@world_human_cop_idles@female@base', animName = 'base', weapon = 'WEAPON_PISTOL', }
		}
	},
}

-- Job Delivery Location:
ConfigTiger.DeliverySpot = {
	vector3(1243.6381835938,-3263.3635253906,5.5918521881104),
}

-- Job Delivery Marker Setting:
ConfigTiger.DeliveryDrawDistance  = 50.0
ConfigTiger.DeliveryMarkerType  = 27
ConfigTiger.DeliveryMarkerScale  = { x = 5.0, y = 5.0, z = 1.0 }
ConfigTiger.DeliveryMarkerColor  = { r = 240, g = 52, b = 52, a = 100 }

-- Drug Sale Settings:
ConfigTiger.maxCap = 150								-- max amount of drugs to be sold per server restart, to disable do not set to 0, instead set to 999999
ConfigTiger.DrugSaleCooldown = 5						-- Cooldown between each selling in seconds.
ConfigTiger.SellDrugsBarText = "SELLING DRUGS"		-- Progress Bar Text for selling drugs
ConfigTiger.SellDrugsTime = 3						-- time taken to negotiate with NPC in seconds
ConfigTiger.Enable3DTextToSell = true				-- true = 3D text | false = HelpNotification
ConfigTiger.ReceiveDirtyCash = true					-- true = dirty cash | false = normal cash
ConfigTiger.CokeDrug = "coke1g"						-- item name in database 				
ConfigTiger.MethDrug = "meth1g"						-- item name in database 
ConfigTiger.WeedDrug = "weed4g"						-- item name in database
ConfigTiger.CallPoliceChance = 2						-- 2 means 50%, 3 means 33%, 4 means 25% and etc

-- Set sell prices here. Remember, values are multiplied with 10, so 11 means $110, 7 means $70 and etc. etc.
ConfigTiger.CokeSale = {
	min = 15,
	max = 20
}
ConfigTiger.MethSale = {
	min = 20,
	max = 25
}	
ConfigTiger.WeedSale = {
	min = 19,
	max = 25
}				

-- Conversion Settings:
ConfigTiger.DrugEffects = {
	{ 
		UsableItem 				= "coke1g",						-- item name in database for usable item
		ProgressBarText			= "SMOKING CRACK COCAINE",		-- progress bar text
		UsableTime 				= 5000,							-- Smoking time in MS
		EffectDuration 			= 30,							-- Duration for effect in seconds
		FasterSprint 			= true,							-- Enable or disable faster sprint while on drugs
		SprintValue 			= 1.2,							-- 1.0 is default
		MotionBlur 				= true,							-- Enable or disable motion blur while on drugs
		TimeCycleModifier		= true,							-- Enable or disable time cycle modifer while on drugs
		TimeCycleModifierType	= "spectator5",					-- Set type of time cycle modificer, see full list here: https://pastebin.com/kVPwMemE 
		UnlimitedStamina		= true,							-- Apply unlimited stamina while on drugs 
		BodyArmor				= false,						-- Apply Body Armor when taking drugs
		AddArmorValue			= 10,							-- Set value for body armor thats going to be added
		PlayerHealth			= false,						-- Apply health to player when taking drugs
		AddHealthValue			= 20,							-- Set value for player health thats going to be added
	},
	{ 
		UsableItem 				= "meth1g",						-- item name in database for usable item
		ProgressBarText			= "SMOKING METH",				-- progress bar text
		UsableTime 				= 5000,							-- item name in database for usable item
		EffectDuration 			= 30,							-- Duration for effect in seconds
		FasterSprint 			= false,						-- Enable or disable faster sprint while on drugs
		SprintValue 			= 1.2,							-- 1.0 is default
		MotionBlur 				= true,							-- Enable or disable motion blur while on drugs
		TimeCycleModifier		= true,							-- Enable or disable time cycle modifer while on drugs
		TimeCycleModifierType	= "spectator5",					-- Set type of time cycle modificer, see full list here: https://pastebin.com/kVPwMemE 
		UnlimitedStamina		= false,						-- Apply unlimited stamina while on drugs 
		BodyArmor				= false,						-- Apply Body Armor when taking drugs
		AddArmorValue			= 10,							-- Set value for body armor thats going to be added
		PlayerHealth			= true,							-- Apply health to player when taking drugs
		AddHealthValue			= 20,							-- Set value for player health thats going to be added
	},
	{ 
		UsableItem 				= "joint2g",					-- item name in database for usable item
		ProgressBarText			= "SMOKING JOINT",				-- progress bar text
		UsableTime 				= 5000,							-- item name in database for usable item
		EffectDuration 			= 30,							-- Duration for effect in seconds
		FasterSprint 			= false,						-- Enable or disable faster sprint while on drugs
		SprintValue 			= 1.2,							-- 1.0 is default
		MotionBlur 				= true,							-- Enable or disable motion blur while on drugs
		TimeCycleModifier		= true,							-- Enable or disable time cycle modifer while on drugs
		TimeCycleModifierType	= "spectator5",					-- Set type of time cycle modificer, see full list here: https://pastebin.com/kVPwMemE 
		UnlimitedStamina		= false,						-- Apply unlimited stamina while on drugs 
		BodyArmor				= true,							-- Apply Body Armor when taking drugs
		AddArmorValue			= 10,							-- Set value for body armor thats going to be added
		PlayerHealth			= false,						-- Apply health to player when taking drugs
		AddHealthValue			= 20,							-- Set value for player health thats going to be added
	}
}

-- Conversion Settings:
ConfigTiger.DrugConversion = {
	{ 
		UsableItem 				= "cokebrick",					-- item name in database for usable item
		RewardItem 				= "coke10g",					-- item name in database for required item
		RewardAmount 			= {a = 6, b = 10},				-- Amount of RewardItem player receives. "a" is without scale and "b" is with scale
		MaxRewardItemInv		= {e = 44, f = 40},				-- Amount of RewardItem player can hold in inventory. "e" is without scale and "f" is with scale
		RequiredItem 			= "drugbags",					-- item name in database for required item
		RequiredItemAmount 		= {c = 6, d = 10},				-- Amount of RequiredItem for conversion. "c" is without scale and "d" is with scale
		HighQualityScale		= true,							-- enable/disable scale feature for the drugType
		hqscale					= "hqscale",					-- item name in database for hiqh quality scale item
		ProgressBarText			= "COKE BRICK > COKE 10G",		-- progress bar text
		ConversionTime			= 5000,							-- set conversion time in MS.
	},
	{ 
		UsableItem 				= "methbrick",					-- item name in database for usable item
		RewardItem 				= "meth10g",					-- item name in database for required item
		RewardAmount 			= {a = 6, b = 10},				-- Amount of RewardItem player receives. "a" is without scale and "b" is with scale
		MaxRewardItemInv		= {e = 44, f = 40},				-- Amount of RewardItem player can hold in inventory. "e" is without scale and "f" is with scale
		RequiredItem 			= "drugbags",					-- item name in database for required item
		RequiredItemAmount 		= {c = 6, d = 10},				-- Amount of RequiredItem for conversion. "c" is without scale and "d" is with scale
		HighQualityScale		= true,							-- enable/disable scale feature for the drugType
		hqscale					= "hqscale",					-- item name in database for hiqh quality scale item
		ProgressBarText			= "METH BRICK > METH 10G",		-- progress bar text
		ConversionTime			= 5000,							-- set conversion time in MS.
	},
	{ 
		UsableItem 				= "weedbrick",					-- item name in database for usable item
		RewardItem 				= "weed20g",					-- item name in database for required item
		RewardAmount 			= {a = 8, b = 10},				-- Amount of RewardItem player receives. "a" is without scale and "b" is with scale
		MaxRewardItemInv		= {e = 44, f = 40},				-- Amount of RewardItem player can hold in inventory. "e" is without scale and "f" is with scale
		RequiredItem 			= "drugbags",					-- item name in database for required item
		RequiredItemAmount 		= {c = 8, d = 10},				-- Amount of RequiredItem for conversion. "c" is without scale and "d" is with scale
		HighQualityScale		= true,							-- enable/disable scale feature for the drugType
		hqscale					= "hqscale",					-- item name in database for hiqh quality scale item
		ProgressBarText			= "WEED BRICK > WEED 20G",		-- progress bar text
		ConversionTime			= 5000,							-- set conversion time in MS.
	},
	{ 
		UsableItem 				= "coke10g",					-- item name in database for usable item
		RewardItem 				= "coke1g",						-- item name in database for required item
		RewardAmount 			= {a = 6, b = 10},				-- Amount of RewardItem player receives. "a" is without scale and "b" is with scale
		MaxRewardItemInv		= {e = 44, f = 40},				-- Amount of RewardItem player can hold in inventory. "e" is without scale and "f" is with scale
		RequiredItem 			= "drugbags",					-- item name in database for required item
		RequiredItemAmount 		= {c = 6, d = 10},				-- Amount of RequiredItem for conversion. "c" is without scale and "d" is with scale
		HighQualityScale		= true,							-- enable/disable scale feature for the drugType
		hqscale					= "hqscale",					-- item name in database for hiqh quality scale item
		ProgressBarText			= "COKE 10G > COKE 1G",			-- progress bar text
		ConversionTime			= 5000,							-- set conversion time in MS.
	},
	{ 
		UsableItem 				= "meth10g",					-- item name in database for usable item
		RewardItem 				= "meth1g",						-- item name in database for required item
		RewardAmount 			= {a = 6, b = 10},				-- Amount of RewardItem player receives. "a" is without scale and "b" is with scale
		MaxRewardItemInv		= {e = 44, f = 40},				-- Amount of RewardItem player can hold in inventory. "e" is without scale and "f" is with scale
		RequiredItem 			= "drugbags",					-- item name in database for required item
		RequiredItemAmount 		= {c = 6, d = 10},				-- Amount of RequiredItem for conversion. "c" is without scale and "d" is with scale
		HighQualityScale		= true,							-- enable/disable scale feature for the drugType
		hqscale					= "hqscale",					-- item name in database for hiqh quality scale item
		ProgressBarText			= "METH 10G > METH 1G",			-- progress bar text
		ConversionTime			= 5000,							-- set conversion time in MS.
	},
	{ 
		UsableItem 				= "weed20g",					-- item name in database for usable item
		RewardItem 				= "weed4g",						-- item name in database for required item
		RewardAmount 			= {a = 4, b = 5},				-- Amount of RewardItem player receives. "a" is without scale and "b" is with scale
		MaxRewardItemInv		= {e = 46, f = 45},				-- Amount of RewardItem player can hold in inventory. "e" is without scale and "f" is with scale
		RequiredItem 			= "drugbags",					-- item name in database for required item
		RequiredItemAmount 		= {c = 4, d = 5},				-- Amount of RequiredItem for conversion. "c" is without scale and "d" is with scale
		HighQualityScale		= true,							-- enable/disable scale feature for the drugType
		hqscale					= "hqscale",					-- item name in database for hiqh quality scale item
		ProgressBarText			= "WEED 20G > WEED 4G",			-- progress bar text
		ConversionTime			= 5000,							-- set conversion time in MS.
	},
	{ 
		UsableItem 				= "weed4g",						-- item name in database for usable item
		RewardItem 				= "joint2g",					-- item name in database for required item
		RewardAmount 			= 2,							-- Amount of RewardItem player receives
		MaxRewardItemInv		= {e = 44, f = 40},				-- Amount of RewardItem player can hold in inventory. "e" is without scale and "f" is with scale
		RequiredItem 			= "rolpaper",					-- item name in database for required item
		RequiredItemAmount 		= 2,							-- Amount of RequiredItem for conversion
		HighQualityScale		= false,						-- enable/disable scale feature for the drugType
		hqscale					= "hqscale",					-- item name in database for hiqh quality scale item
		ProgressBarText			= "WEED 4G > JOINT 2G",			-- progress bar text
		ConversionTime			= 5000,							-- set conversion time in MS.
	}
}




ESX 						= nil
local PlayerData            = {}
local SelectedID 			= nil
local Goons 				= {}
local JobVan

-- Blip Settings:
local DeliveryBlip
local blip
local DeliveryBlipCreated = false

-- Job Settings:
local isVehicleLockPicked = false
local JobVanPlate = ''
local DeliveryInProgress = false
local InsideJobVan = false
local vanIsDelivered = false

-- Delivery Stage:
local NearJobVehicle = false
local NearOtherVehicle = false
local drugsTaken = false
local drugBoxInHand = false

-- Drug Sale Settings:
local streetName
local _
local canSellDrugs = false
local DrugSellTimer = GetGameTimer() - 2 * 2500

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end
	PlayerData = ESX.GetPlayerData()
	isPlayerWhitelisted = refreshPlayerWhitelisted()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
	isPlayerWhitelisted = refreshPlayerWhitelisted()
end)

RegisterNetEvent('t1ger_drugs:outlawNotify')
AddEventHandler('t1ger_drugs:outlawNotify', function(alert)
	if isPlayerWhitelisted then
		TriggerEvent('chat:addMessage', { args = { "^5 Dispatch: " .. alert }})
	end
end)

function refreshPlayerWhitelisted()	
	if not ESX.PlayerData then
		return false
	end

	if not ESX.PlayerData.job then
		return false
	end

	if ConfigTiger.PoliceDatabaseName == ESX.PlayerData.job.name then
		return true
	end

	return false
end

-- Usable Item Event:
RegisterNetEvent("t1ger_drugs:UsableItem")
AddEventHandler("t1ger_drugs:UsableItem",function()
	local player = PlayerPedId()
	if IsPedInAnyVehicle(player) then
		exports['progressBars']:startUI(4000, "CONNECTING USB TO DEVICE")
	else
		FreezeEntityPosition(player,true)
		TaskStartScenarioInPlace(player, 'WORLD_HUMAN_STAND_MOBILE', 0, true)
		exports['progressBars']:startUI(4000, "CONNECTING USB TO DEVICE")
	end
	Citizen.Wait(4000)
	ChooseDrugMenu()
	--TriggerEvent("mhacking:show")
	--TriggerEvent("mhacking:start",ConfigTiger.HackingBlocks,ConfigTiger.HackingTime,HackingMinigame)
end)

-- Function for Hacking Success/Fail:
function HackingMinigame(success)
    local player = PlayerPedId()
    TriggerEvent('mhacking:hide')
    if success then
		Citizen.Wait(350)
		ChooseDrugMenu()
		ESX.ShowNotification("You ~g~successfully~s~ hacked into the ~b~network~s~")
    else
		ESX.ShowNotification("You ~r~failed~s~ to hack into the ~b~network~s~")
		FreezeEntityPosition(player,false)
		ClearPedTasks(player)
	end
end

-- Function for Drugs Choose Menu:
function ChooseDrugMenu()
	local player = PlayerPedId()
	local elements = {}
			
	for k,v in pairs(ConfigTiger.ListOfDrugs) do
		if v.Enabled == true then
			table.insert(elements,{label = v.label .. " | "..('<span style="color:green;">%s</span>'):format("$"..v.BuyPrice..""), value = v.drug, Enabled = v.Enabled, BuyPrice = v.BuyPrice, MinReward = v.MinReward, MaxReward = v.MaxReward})
		end
	end
	table.insert(elements,{label = "Cancel", value = "cancel_drug_job"})
		
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), "choose_drug_job_menu",
		{
			title    = "Choose Drug Job",
			align    = "center",
			elements = elements
		},
	function(data, menu)
	
			if data.current.value == "cancel_drug_job" then
				ESX.ShowNotification("You ~r~cancelled~s~ the request")
				menu.close()
				ClearPedTasks(player)
				FreezeEntityPosition(player,false)
			else
				TriggerServerEvent("t1ger_drugs:GetSelectedJob",data.current.value, data.current.BuyPrice, data.current.MinReward, data.current.MaxReward )
				Citizen.Wait(100)
				menu.close()
				ClearPedTasks(player)
				FreezeEntityPosition(player,false)
			end
			
	end, function(data, menu)
		menu.close()
		ESX.ShowNotification("You ~r~cancelled~s~ the request")
		ClearPedTasks(player)
		FreezeEntityPosition(player,false)
	end, function(data, menu)
	end)
end

-- Event to browse through available locations:
RegisterNetEvent("t1ger_drugs:BrowseAvailableJobs")
AddEventHandler("t1ger_drugs:BrowseAvailableJobs",function(spot,drugType,minReward,maxReward)
	local id = math.random(1,#ConfigTiger.Jobs)
	local currentID = 0
	while ConfigTiger.Jobs[id].InProgress and currentID < 100 do
		currentID = currentID+1
		id = math.random(1,#ConfigTiger.Jobs)
	end
	if currentID == 100 then
		ESX.ShowNotification("No ~y~jobs~s~ are currently available, please try again later!")
	else
		SelectedID = id
		TriggerEvent("t1ger_drugs:startMainEvent",id,drugType,minReward,maxReward)
		PlaySoundFrontend(-1, "Mission_Pass_Notify", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 0)
	end
end)

-- Core Mission Part
RegisterNetEvent('t1ger_drugs:startMainEvent')
AddEventHandler('t1ger_drugs:startMainEvent', function(id,drugType,minReward,maxReward)
	local Goons = {}
	local selectedJob = ConfigTiger.Jobs[id]
	local minRewardD = minReward
	local maxRewardD = maxReward
	local typeDrug = drugType
	selectedJob.InProgress = true
	TriggerServerEvent("t1ger_drugs:syncJobsData",ConfigTiger.Jobs)
	Citizen.Wait(500)
	local playerPed = GetPlayerPed(-1)
	local JobCompleted = false
	local blip = CreateMissionBlip(selectedJob.Spot)
	
	while not JobCompleted and not StopTheJob do
		Citizen.Wait(0)
		
		if ConfigTiger.Jobs[id].InProgress == true then
		
			local coords = GetEntityCoords(playerPed)
			
            if (GetDistanceBetweenCoords(coords, selectedJob.Spot.x, selectedJob.Spot.y, selectedJob.Spot.z, true) > 60) and DeliveryInProgress == false then
				DrawMissionText("Reach the ~y~Van~s~ marked on your GPS")
			end
			
			if (GetDistanceBetweenCoords(coords, selectedJob.Spot.x, selectedJob.Spot.y, selectedJob.Spot.z, true) < 150) and not selectedJob.VanSpawned then
				ClearAreaOfVehicles(selectedJob.Spot.x, selectedJob.Spot.y, selectedJob.Spot.z, 15.0, false, false, false, false, false) 
				local jobCoords = {selectedJob.Spot.x, selectedJob.Spot.y, selectedJob.Spot.z}
				selectedJob.VanSpawned = true
				TriggerServerEvent("t1ger_drugs:syncJobsData",ConfigTiger.Jobs)
				Citizen.Wait(500)
                while ESX == nil do
                    Citizen.Wait(1)
                end
				ESX.Game.SpawnVehicle(ConfigTiger.JobVan, jobCoords, selectedJob.Heading, function(vehicle)
					SetEntityCoordsNoOffset(vehicle, selectedJob.Spot.x, selectedJob.Spot.y, selectedJob.Spot.z)
					SetEntityHeading(vehicle,selectedJob.Heading)
					FreezeEntityPosition(vehicle, true)
					SetVehicleOnGroundProperly(vehicle)
					FreezeEntityPosition(vehicle, false)
					JobVan = vehicle
					SetEntityAsMissionEntity(JobVan, true, true)
					SetVehicleDoorsLockedForAllPlayers(JobVan, true)
				end)
			end	
			
			if (GetDistanceBetweenCoords(coords, selectedJob.Spot.x, selectedJob.Spot.y, selectedJob.Spot.z, true) < 150) and not selectedJob.GoonsSpawned then
				ClearAreaOfPeds(selectedJob.Spot.x, selectedJob.Spot.y, selectedJob.Spot.z, 50, 1)
				selectedJob.GoonsSpawned = true
				TriggerServerEvent("t1ger_drugs:syncJobsData",ConfigTiger.Jobs)
				Citizen.Wait(500)
				SetPedRelationshipGroupHash(GetPlayerPed(-1), GetHashKey("PLAYER"))
				AddRelationshipGroup('JobNPCs')
				local i = 0
				for k,v in pairs(selectedJob.Goons) do
					RequestModel(GetHashKey(v.ped))
					while not HasModelLoaded(GetHashKey(v.ped)) do
						Wait(1)
					end
					Goons[i] = CreatePed(4, GetHashKey(v.ped), v.x, v.y, v.z, v.h, false, true)
					NetworkRegisterEntityAsNetworked(Goons[i])
					SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(Goons[i]), true)
					SetNetworkIdExistsOnAllMachines(NetworkGetNetworkIdFromEntity(Goons[i]), true)
					SetPedCanSwitchWeapon(Goons[i], true)
					SetPedArmour(Goons[i], 100)
					SetPedAccuracy(Goons[i], 60)
					SetEntityInvincible(Goons[i], false)
					SetEntityVisible(Goons[i], true)
					SetEntityAsMissionEntity(Goons[i])
					RequestAnimDict(v.animDict) 
					while not HasAnimDictLoaded(v.animDict) do
						Citizen.Wait(0) 
					end 
					TaskPlayAnim(Goons[i], v.animDict, v.anim, 8.0, -8, -1, 49, 0, 0, 0, 0)
					GiveWeaponToPed(Goons[i], GetHashKey(v.weapon), 255, false, false)
					SetPedDropsWeaponsWhenDead(Goons[i], false)
					SetPedFleeAttributes(Goons[i], 0, false)	
					SetPedRelationshipGroupHash(Goons[i], GetHashKey("JobNPCs"))	
					TaskGuardCurrentPosition(Goons[i], 5.0, 5.0, 1)
					i = i +1
				end
            end
			
			if DeliveryInProgress == false and (GetDistanceBetweenCoords(coords, selectedJob.Spot.x, selectedJob.Spot.y, selectedJob.Spot.z, true) < 60) and (GetDistanceBetweenCoords(coords, selectedJob.Spot.x, selectedJob.Spot.y, selectedJob.Spot.z, true) > 10) then
				DrawMissionText("~r~Kill~s~ the goons that guard the ~y~Van~s~")
			end
			
			if selectedJob.VanSpawned and (GetDistanceBetweenCoords(coords, selectedJob.Spot.x, selectedJob.Spot.y, selectedJob.Spot.z, true) < 60) and not selectedJob.JobPlayer then
				selectedJob.JobPlayer = true
				TriggerServerEvent("t1ger_drugs:syncJobsData",ConfigTiger.Jobs)
				Citizen.Wait(500)
				SetPedRelationshipGroupHash(GetPlayerPed(-1), GetHashKey("PLAYER"))
				AddRelationshipGroup('JobNPCs')
				local i = 0
                for k,v in pairs(selectedJob.Goons) do
                    ClearPedTasksImmediately(Goons[i])
                    i = i +1
                end
                SetRelationshipBetweenGroups(0, GetHashKey("JobNPCs"), GetHashKey("JobNPCs"))
                SetRelationshipBetweenGroups(5, GetHashKey("JobNPCs"), GetHashKey("PLAYER"))
                SetRelationshipBetweenGroups(5, GetHashKey("PLAYER"), GetHashKey("JobNPCs"))
            end
			
			if isVehicleLockPicked == false and (GetDistanceBetweenCoords(coords, selectedJob.Spot.x, selectedJob.Spot.y, selectedJob.Spot.z, true) < 10) then
				DrawMissionText("Steal and lockpick the ~y~Van~s~")
			end
			
			local VanPosition = GetEntityCoords(JobVan) 
			
			if (GetDistanceBetweenCoords(coords, VanPosition.x, VanPosition.y, VanPosition.z, true) <= 2) and isVehicleLockPicked == false then
				DrawText3Ds(VanPosition.x, VanPosition.y, VanPosition.z, "Press ~g~[G]~s~ to ~y~Lockpick~s~")
				if IsControlJustPressed(1, 47) then 
					LockpickJobVan(selectedJob)
					Citizen.Wait(500)
				end
			end
			
			if isVehicleLockPicked == true and vanIsDelivered == false then
				if not InsideJobVan then
					DrawMissionText("Get into the ~y~Van~s~")
				end
			end
			
			if IsPedInAnyVehicle(GetPlayerPed(-1), true) and isVehicleLockPicked == true then
				if GetDistanceBetweenCoords(coords, selectedJob.Spot.x, selectedJob.Spot.y, selectedJob.Spot.z, true) < 5 then
					local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
					if GetEntityModel(vehicle) == GetHashKey(ConfigTiger.JobVan) then
						RemoveBlip(blip)
						for k,v in pairs(ConfigTiger.DeliverySpot) do
							if DeliveryBlipCreated == false then
								PlaySoundFrontend(-1, "Mission_Pass_Notify", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 0)
								DeliveryBlipCreated = true
								DeliveryBlip = AddBlipForCoord(v.x, v.y, v.z)
								SetBlipColour(DeliveryBlip,5)
								BeginTextCommandSetBlipName("STRING")
								AddTextComponentString("Delivery Location")
								EndTextCommandSetBlipName(DeliveryBlip)
								JobVanPlate = GetVehicleNumberPlateText(vehicle)
								SetBlipRoute(DeliveryBlip, true)
								SetBlipRouteColour(DeliveryBlip, 5)
							end	
						end
						
						DeliveryInProgress = true
					end
				end	
			end
						
			if DeliveryInProgress == true and isVehicleLockPicked == true and vanIsDelivered == false then
				if IsPedInAnyVehicle(GetPlayerPed(-1), true) then
					local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
					if GetEntityModel(vehicle) == GetHashKey(ConfigTiger.JobVan) then
						DrawMissionText("Deliver the ~y~Van~s~ to the ~y~destination~s~ on your GPS")
					end
				end
			end
			
			if DeliveryInProgress == true then
                local coords = GetEntityCoords(GetPlayerPed(-1))
                local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
                if GetEntityModel(vehicle) == GetHashKey(ConfigTiger.JobVan) then
                    InsideJobVan = true
                else
                    InsideJobVan = false
                end
				for k,v in pairs(ConfigTiger.DeliverySpot) do
					if InsideJobVan then
						if(GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < ConfigTiger.DeliveryDrawDistance) then
							DrawMarker(ConfigTiger.DeliveryMarkerType, v.x, v.y, v.z-0.97, 0.0, 0.0, 0.0, 180.0, 0.0, 0.0, ConfigTiger.DeliveryMarkerScale.x, ConfigTiger.DeliveryMarkerScale.y, ConfigTiger.DeliveryMarkerScale.z, ConfigTiger.DeliveryMarkerColor.r, ConfigTiger.DeliveryMarkerColor.g, ConfigTiger.DeliveryMarkerColor.b, ConfigTiger.DeliveryMarkerColor.a, false, true, 2, false, false, false, false)
						end
						if(GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < 2.0) and vanIsDelivered == false then
							DrawText3Ds(v.x, v.y, v.z, "Press ~g~[E]~s~ to ~y~Delivery~s~")
							if IsControlJustPressed(0, 38) then 
								RemoveBlip(DeliveryBlip)
								vanIsDelivered = true
								
								SetVehicleForwardSpeed(JobVan, 0)
								SetVehicleEngineOn(JobVan, false, false, true)
								SetVehicleDoorOpen(JobVan, 2 , false, false)
								SetVehicleDoorOpen(JobVan, 3 , false, false)
								if IsPedInAnyVehicle(GetPlayerPed(-1), true) then
									TaskLeaveVehicle(GetPlayerPed(-1), JobVan, 4160)
									SetVehicleDoorsLockedForAllPlayers(JobVan, true)
								end
								Citizen.Wait(500)
								FreezeEntityPosition(JobVan, true)
							end
						end
					end
				end
			end
			
			if DeliveryInProgress == true and vanIsDelivered == true and not drugBoxInHand and not drugsTaken then
				DrawMissionText("Grab ~b~drug package~s~ from the ~y~van~s~")
			end
			
			if DeliveryInProgress == true and vanIsDelivered == true and drugBoxInHand and not drugsTaken then
				DrawMissionText("Put the ~b~drug package~s~ in your getaway ~y~vehicle~s~")
			end
			
			if vanIsDelivered == true then
                local coords = GetEntityCoords(GetPlayerPed(-1))
                local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
                if GetEntityModel(vehicle) == GetHashKey(ConfigTiger.JobVan) then
                    InsideJobVan = true
                else
                    InsideJobVan = false
                end
				for k,v in pairs(ConfigTiger.DeliverySpot) do
					if not InsideJobVan and drugsTaken == false then
						if(GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < ((ConfigTiger.DeliveryMarkerScale.x)*4)) then
							if not IsPedInAnyVehicle(GetPlayerPed(-1), true) then
								vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 20.0, 0, 70)
								if GetEntityModel(vehicle) == GetHashKey(ConfigTiger.JobVan) and not drugBoxInHand then
									local d1 = GetModelDimensions(GetEntityModel(vehicle))
									vehicleCoords = GetOffsetFromEntityInWorldCoords(vehicle, 0.0,d1["y"]+0.60,0.0)
									local Distance = GetDistanceBetweenCoords(vehicleCoords.x, vehicleCoords.y, vehicleCoords.z, coords.x, coords.y, coords.z, false);
									if Distance < 2.0 then
										DrawText3Ds(vehicleCoords.x, vehicleCoords.y, vehicleCoords.z, "Press ~g~[E]~s~ to grab ~y~package~s~ from van")
										NearJobVehicle = true
									else
										NearJobVehicle = false
									end
								elseif GetEntityModel(vehicle) ~= GetHashKey(ConfigTiger.JobVan) and drugBoxInHand then
									local d1 = GetModelDimensions(GetEntityModel(vehicle))
									vehicleCoords = GetOffsetFromEntityInWorldCoords(vehicle, 0.0,d1["y"]+0.60,0.0)
									local Distance = GetDistanceBetweenCoords(vehicleCoords.x, vehicleCoords.y, vehicleCoords.z, coords.x, coords.y, coords.z, false);
									if Distance < 2.0 then
										DrawText3Ds(vehicleCoords.x, vehicleCoords.y, vehicleCoords.z, "Press ~g~[E]~s~ to put ~y~package~s~ in vehicle")
										NearOtherVehicle = true
									else
										NearOtherVehicle = false
									end
								end
							end
						end
					end
				end
			end
			
			if NearJobVehicle == true and not drugBoxInHand and IsControlJustPressed(0, 38) then
				RequestAnimDict("anim@heists@box_carry@")
				while not HasAnimDictLoaded("anim@heists@box_carry@") do
					Citizen.Wait(10)
				end
				TaskPlayAnim(GetPlayerPed(-1),"anim@heists@box_carry@","idle",1.0, -1.0, -1, 49, 0, 0, 0, 0)
				Citizen.Wait(300)
				attachModel = GetHashKey('prop_cs_cardbox_01')
				boneNumber = 28422
				SetCurrentPedWeapon(GetPlayerPed(-1), 0xA2719263) 
				local bone = GetPedBoneIndex(GetPlayerPed(-1), boneNumber)
				RequestModel(attachModel)
				while not HasModelLoaded(attachModel) do
					Citizen.Wait(100)
				end
				attachedProp = CreateObject(attachModel, 1.0, 1.0, 1.0, 1, 1, 0)
				AttachEntityToEntity(attachedProp, GetPlayerPed(-1), bone, 0.0, 0.0, 0.0, 135.0, 0.0, 0.0, 1, 1, 0, 0, 2, 1)
				drugBoxInHand = true
			end
			
			if NearOtherVehicle == true and drugBoxInHand and IsControlJustPressed(0, 38) then
                ESX.ShowNotification("~g~Job completed~s~")
				PlaySoundFrontend(-1, "Mission_Pass_Notify", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 0)
                ClearPedTasks(GetPlayerPed(-1))
                DeleteEntity(attachedProp)
				TriggerServerEvent("t1ger_drugs:JobReward",minRewardD,maxRewardD,typeDrug)
				drugsTaken = true
				StopTheJob = true
			end
		
			if StopTheJob == true then
				
				ConfigTiger.Jobs[id].InProgress = false
				ConfigTiger.Jobs[id].VanSpawned = false
				ConfigTiger.Jobs[id].GoonsSpawned = false
				ConfigTiger.Jobs[id].JobPlayer = false
				TriggerServerEvent("t1ger_drugs:syncJobsData",ConfigTiger.Jobs)
				Citizen.Wait(2000)
				DeleteVehicle(JobVan)
				
				if DeliveryInProgress == true then
					RemoveBlip(DeliveryBlip)
				else
					RemoveBlip(blip)
				end
				
				local i = 0
                for k,v in pairs(selectedJob.Goons) do
                    if DoesEntityExist(Goons[i]) then
                        DeleteEntity(Goons[i])
                    end
                    i = i +1
				end
				
				JobCompleted = true
				JobVanPlate = ''
				isVehicleLockPicked = false
				drugsTaken = false
				drugBoxInHand = false
				DeliveryInProgress = false
				vanIsDelivered = false
				DeliveryBlipCreated = false
				break
			end
			
		end		
	end	
end)

-- Function for lockpicking the van door:
function LockpickJobVan(selectedJob)
				
	local playerPed = GetPlayerPed(-1)
	
	local animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
	local animName = "machinic_loop_mechandplayer"
	
	RequestAnimDict(animDict)
	while not HasAnimDictLoaded(animDict) do
		Citizen.Wait(50)
	end
	
	if ConfigTiger.PoliceNotfiyEnabled == true then
		ExecuteCommand('911DRUGSELL')
		TriggerServerEvent('retro_scripts:callpopo',GetEntityCoords(PlayerPedId()),streetName)
	end
	
	SetCurrentPedWeapon(playerPed, GetHashKey("WEAPON_UNARMED"),true)
	Citizen.Wait(500)
	FreezeEntityPosition(playerPed, true)
	TaskPlayAnimAdvanced(playerPed, animDict, animName, selectedJob.LockpickPos.x, selectedJob.LockpickPos.y, selectedJob.LockpickPos.z, 0.0, 0.0, selectedJob.LockpickHeading, 3.0, 1.0, -1, 31, 0, 0, 0 )

	exports['progressBars']:startUI(7500, "LOCKPICKING VAN")
	Citizen.Wait(7500)
	
	ClearPedTasks(playerPed)
	FreezeEntityPosition(playerPed, false)
	isVehicleLockPicked = true
	SetVehicleDoorsLockedForAllPlayers(JobVan, false)
end

-- Function for job blip in progress:
function CreateMissionBlip(location)
	local blip = AddBlipForCoord(location.x,location.y,location.z)
	SetBlipSprite(blip, 1)
	SetBlipColour(blip, 5)
	AddTextEntry('MYBLIP', "Drug Job")
	BeginTextCommandSetBlipName('MYBLIP')
	AddTextComponentSubstringPlayerName(name)
	EndTextCommandSetBlipName(blip)
	SetBlipScale(blip, 0.9) -- set scale
	SetBlipAsShortRange(blip, true)
	SetBlipRoute(blip, true)
	SetBlipRouteColour(blip, 5)
	return blip
end

-- Function for Mission text:
function DrawMissionText(text)
    SetTextScale(0.5, 0.5)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextEntry("STRING")
    SetTextCentre(1)
    SetTextOutline()
    AddTextComponentString(text)
    DrawText(0.5,0.955)
end

-- Drug Effects Event:
RegisterNetEvent("t1ger_drugs:DrugEffects")
AddEventHandler("t1ger_drugs:DrugEffects", function(k,v)
    local playerPed = PlayerId()
	local ped = GetPlayerPed(-1)
	if not IsPedInAnyVehicle(GetPlayerPed(-1)) then
		TaskStartScenarioInPlace(PlayerPedId(), "WORLD_HUMAN_SMOKING_POT", 0, true)
		exports['progressBars']:startUI(v.UsableTime, v.ProgressBarText)
		Citizen.Wait(v.UsableTime)
		ClearPedTasks(PlayerPedId())
	else
		exports['progressBars']:startUI(v.UsableTime, v.ProgressBarText)
		Citizen.Wait(v.UsableTime)
	end
	if v.BodyArmor then
		if GetPedArmour(ped) <= (100-v.AddArmorValue) then
			AddArmourToPed(ped,v.AddArmorValue)
		elseif GetPedArmour(ped) <= 99 then
			SetPedArmour(ped,100)
		end
	end
	if v.PlayerHealth then
		if GetEntityHealth(ped) <= (200-v.AddHealthValue) then
			SetEntityHealth(ped,GetEntityHealth(ped)+v.AddHealthValue)
		elseif GetEntityHealth(ped) <= 199 then
			SetEntityHealth(ped,200)
		end
	end
	local timer = 0
	while timer < v.EffectDuration do
		if v.FasterSprint then
			SetRunSprintMultiplierForPlayer(playerPed,v.SprintValue)
		end
		if v.TimeCycleModifier then
			SetTimecycleModifier(v.TimeCycleModifierType)
		end
		if v.MotionBlur then
			SetPedMotionBlur(playerPed, true)
		end
		if v.UnlimitedStamina then
			ResetPlayerStamina(playerPed)
		end
		Citizen.Wait(1000)
		timer = timer + 1
	end
    SetTimecycleModifier("default")
	SetPedMotionBlur(playerPed, false)
    SetRunSprintMultiplierForPlayer(playerPed,1.0)
end)

-- Convert Item Event:
RegisterNetEvent("t1ger_drugs:ConvertProcess")
AddEventHandler("t1ger_drugs:ConvertProcess", function(k,v)
	
	local animDict = "misscarsteal1car_1_ext_leadin"
	local animName = "base_driver2"
	
	RequestAnimDict(animDict)
	while not HasAnimDictLoaded(animDict) do
		Citizen.Wait(10)
	end
	
	if not IsPedInAnyVehicle(GetPlayerPed(-1)) then
		TaskPlayAnim(GetPlayerPed(-1),"misscarsteal1car_1_ext_leadin","base_driver2",8.0, -8, -1, 49, 0, 0, 0, 0)
		FreezeEntityPosition(GetPlayerPed(-1), true)
		exports['progressBars']:startUI(v.ConversionTime, v.ProgressBarText)
		Citizen.Wait(v.ConversionTime)
		FreezeEntityPosition(GetPlayerPed(-1), false)
		ClearPedTasks(GetPlayerPed(-1))
	else
		exports['progressBars']:startUI(v.ConversionTime, v.ProgressBarText)
		Citizen.Wait(v.ConversionTime)
	end
end)

RequestAnimDict("mp_common")
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
        local player = GetPlayerPed(-1)
        local playerPos = GetEntityCoords(player, 0)
		local handle, ped = FindFirstPed()
		local success
		repeat
			success, ped = FindNextPed(handle)
			local pos = GetEntityCoords(ped)
			local distance = GetDistanceBetweenCoords(pos.x, pos.y, pos.z, playerPos.x, playerPos.y, playerPos.z, true)
			
			if distance < 2 and CanSellToPed(ped) and canSellDrugs and not IsPedInAnyVehicle(player, true) then
				if ConfigTiger.Enable3DTextToSell then
					DrawText3Ds(pos.x, pos.y, pos.z, "Press ~g~[H]~s~ to offer ~y~drugs~s~")
				else
					ESX.ShowHelpNotification("Press ~g~ ~INPUT_VEH_HEADLIGHT~ ~s~ to offer ~r~drugs~s~")
				end
				if IsControlJustPressed(1,74) then
					oldped = ped
					TaskStandStill(ped,5000.0)
					SetEntityAsMissionEntity(ped)
					FreezeEntityPosition(ped,true)
					FreezeEntityPosition(player,true)
					SetEntityHeading(ped,GetHeadingFromVector_2d(pos.x-playerPos.x,pos.y-playerPos.y)+180)
					SetEntityHeading(player,GetHeadingFromVector_2d(pos.x-playerPos.x,pos.y-playerPos.y))
					
					local chance = math.random(1,3)
					exports['progressBars']:startUI((ConfigTiger.SellDrugsTime * 1000), ConfigTiger.SellDrugsBarText)
					Citizen.Wait((ConfigTiger.SellDrugsTime * 1000))
					if chance == 1 or chance == 2 then
						TaskPlayAnim(player, "mp_common", "givetake2_a", 8.0, 8.0, 2000, 0, 1, 0,0,0)
						TaskPlayAnim(ped, "mp_common", "givetake2_a", 8.0, 8.0, 2000, 0, 1, 0,0,0)
						TriggerServerEvent("t1ger_drugs:sellDrugs")
					else
						chance = math.random(1,ConfigTiger.CallPoliceChance)
						if chance == 1 then
							if ConfigTiger.PoliceNotfiyEnabled == true then
								TriggerServerEvent('t1ger_drugs:DrugSaleInProgress',GetEntityCoords(PlayerPedId()),streetName)
							end
							ESX.ShowNotification("Your offer was ~r~rejected~s~ and ~b~Police~s~ is notified")
						else
							ESX.ShowNotification("Your offer was ~r~rejected~s~")	
						end
					end
					
					SetPedAsNoLongerNeeded(oldped)
					FreezeEntityPosition(ped,false)
					FreezeEntityPosition(player,false)
					Citizen.Wait(ConfigTiger.DrugSaleCooldown * 1000)
					break
				end
			end
			
		until not success
		EndFindPed(handle)
	end
end)

Citizen.CreateThread(function()
	while true do
		TriggerServerEvent("t1ger_drugs:canSellDrugs")
		Citizen.Wait(ConfigTiger.DrugSaleCooldown * 1000)
	end
end)

function CanSellToPed(ped)
	if not IsPedAPlayer(ped) and not IsPedInAnyVehicle(ped,false) and not IsEntityDead(ped) and IsPedHuman(ped) and GetEntityModel(ped) ~= GetHashKey("s_m_y_cop_01") and GetEntityModel(ped) ~= GetHashKey("s_m_y_dealer_01") and GetEntityModel(ped) ~= GetHashKey("mp_m_shopkeep_01") and ped ~= oldped and canSellDrugs then 
		return true
	end
	return false
end

RegisterNetEvent("t1ger_drugs:canSellDrugs")
AddEventHandler("t1ger_drugs:canSellDrugs", function(soldAmount)
	canSellDrugs = soldAmount
end)

-- Function for 3D text:
function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())

    SetTextScale(0.32, 0.32)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 255)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 500
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 80)
end

-- Thread for Police Notify
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(3000)
		local pos = GetEntityCoords(GetPlayerPed(-1), false)
		streetName,_ = GetStreetNameAtCoord(pos.x, pos.y, pos.z)
		streetName = GetStreetNameFromHashKey(streetName)
	end
end)

RegisterNetEvent('t1ger_drugs:OutlawBlipEvent')
AddEventHandler('t1ger_drugs:OutlawBlipEvent', function(targetCoords)
	if isPlayerWhitelisted and ConfigTiger.PoliceBlipShow then
		local alpha = ConfigTiger.PoliceBlipAlpha
		local policeNotifyBlip = AddBlipForRadius(targetCoords.x, targetCoords.y, targetCoords.z, ConfigTiger.PoliceBlipRadius)

		SetBlipHighDetail(policeNotifyBlip, true)
		SetBlipColour(policeNotifyBlip, ConfigTiger.PoliceBlipColor)
		SetBlipAlpha(policeNotifyBlip, alpha)
		SetBlipAsShortRange(policeNotifyBlip, true)

		while alpha ~= 0 do
			Citizen.Wait(ConfigTiger.PoliceBlipTime * 4)
			alpha = alpha - 1
			SetBlipAlpha(policeNotifyBlip, alpha)

			if alpha == 0 then
				RemoveBlip(policeNotifyBlip)
				return
			end
		end
	end
end)

AddEventHandler('esx:onPlayerDeath', function(data)
	StopTheJob = true
	TriggerServerEvent("t1ger_drugs:syncJobsData",ConfigTiger.Jobs)
	Citizen.Wait(5000)
	StopTheJob = false
end)

AddEventHandler('playerSpawned', function(spawn)
	isDead = false
end)

RegisterNetEvent("t1ger_drugs:syncJobsData")
AddEventHandler("t1ger_drugs:syncJobsData",function(data)
	ConfigTiger.Jobs = data
end)
