Stress = {}
local MFS = Stress

MFS.Version = '1.0.10'

Config = {}
Config.Locale = 'en'




TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj; end)
Citizen.CreateThread(function(...)
  while not ESX do 
    TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj; end) 
    Citizen.Wait(0)
  end
end)

Config = {
    commandName = "clearcars",
    -- This is the command that you will type into chat to execute the script.

    restricCommand = true
    -- Setting this to false will allow anyone in the server to use the command. 
    -- If you set it to true you will need to add a ace perm to allow people to use it.
    -- Such as add_ace [GROUP] command.[commandName] allow
}

-- Edit to your Liking | true = It will remove that item when used | false = Does opposite of true
Config.Removeables = {
	BulletProofVest = true,
	Drill = false,
	FirstAidKit = true,
	LockPick = true,
	OxygenMask = true,
	RepairKit = true,
	TireKit = true,
	AmmoBoxes = true
}

-- Item Scenario Wait Times in MS
Config.Wait = {
	Drill = 10000,
	LockPick = 10000,
	RepairKit = 10000,
	TireKit = 10000
}

-- Binoculars
Config.BinocularsPutAway = 177 -- Backspace Key

-- Weapon Ammos
Config.AmmoBoxes = {
	Pistol = 50, -- 9mm @ 0.28 per round | 50 x 1.05 = 14
	SMG = 50, -- 9mm @ 0.28 per round | 50 x 1.05 = 14
	Shotgun = 25, -- 12g @ 0.36 per round | 25 x 0.36 = 9
	Rifle = 25, -- 5.56 @ 0.47 per round | 25 x 0.47 = 11.75 (12)
	MG = 50, -- 5.56 @ 0.47 per round | 50 x 0.47 = 23.50 (24)
	Sniper = 20, -- 7.62 @ 1.05 per round | 20 x 1.05 = 21
	Flare = 5, -- Not doing Realistic Price
	BoxBig = 100,
	BoxSmall = 50
}

Config.Weapons = {
	Pistols = {
		{weaponName = 'WEAPON_PISTOL', weaponHash = GetHashKey('WEAPON_PISTOL')},
		{weaponName = 'WEAPON_COMBATPISTOL', weaponHash = GetHashKey('WEAPON_COMBATPISTOL')},
		{weaponName = 'WEAPON_APPISTOL', weaponHash = GetHashKey('WEAPON_APPISTOL')},
		{weaponName = 'WEAPON_PISTOL50', weaponHash = GetHashKey('WEAPON_PISTOL50')},
		{weaponName = 'WEAPON_SNSPISTOL', weaponHash = GetHashKey('WEAPON_SNSPISTOL')},
		{weaponName = 'WEAPON_HEAVYPISTOL', weaponHash = GetHashKey('WEAPON_HEAVYPISTOL')},
		{weaponName = 'WEAPON_VINTAGEPISTOL', weaponHash = GetHashKey('WEAPON_VINTAGEPISTOL')},
		{weaponName = 'WEAPON_MACHINEPISTOL', weaponHash = GetHashKey('WEAPON_MACHINEPISTOL')},
		{weaponName = 'WEAPON_REVOLVER', weaponHash = GetHashKey('WEAPON_REVOLVER')},
		{weaponName = 'WEAPON_MARKSMANPISTOL', weaponHash = GetHashKey('WEAPON_MARKSMANPISTOL')},
		{weaponName = 'WEAPON_DOUBLEACTION', weaponHash = GetHashKey('WEAPON_DOUBLEACTION')}
	},
	SMGs = {
		{weaponName = 'WEAPON_SMG', weaponHash = GetHashKey('WEAPON_SMG')},
		{weaponName = 'WEAPON_ASSAULTSMG', weaponHash = GetHashKey('WEAPON_ASSAULTSMG')},
		{weaponName = 'WEAPON_MICROSMG', weaponHash = GetHashKey('WEAPON_MICROSMG')},
		{weaponName = 'WEAPON_MINISMG', weaponHash = GetHashKey('WEAPON_MINISMG')},
		{weaponName = 'WEAPON_COMBATPDW', weaponHash = GetHashKey('WEAPON_COMBATPDW')}
	},
	Shotguns = {
		{weaponName = 'WEAPON_PUMPSHOTGUN', weaponHash = GetHashKey('WEAPON_PUMPSHOTGUN')},
		{weaponName = 'WEAPON_SAWNOFFSHOTGUN', weaponHash = GetHashKey('WEAPON_SAWNOFFSHOTGUN')},
		{weaponName = 'WEAPON_ASSAULTSHOTGUN', weaponHash = GetHashKey('WEAPON_ASSAULTSHOTGUN')},
		{weaponName = 'WEAPON_BULLPUPSHOTGUN', weaponHash = GetHashKey('WEAPON_BULLPUPSHOTGUN')},
		{weaponName = 'WEAPON_HEAVYSHOTGUN', weaponHash = GetHashKey('WEAPON_HEAVYSHOTGUN')},
		{weaponName = 'WEAPON_DBSHOTGUN', weaponHash = GetHashKey('WEAPON_DBSHOTGUN')},
		{weaponName = 'WEAPON_AUTOSHOTGUN', weaponHash = GetHashKey('WEAPON_AUTOSHOTGUN')},
		{weaponName = 'WEAPON_MUSKET', weaponHash = GetHashKey('WEAPON_MUSKET')}
	},
	Rifles = {
		{weaponName = 'WEAPON_ASSAULTRIFLE', weaponHash = GetHashKey('WEAPON_ASSAULTRIFLE')},
		{weaponName = 'WEAPON_CARBINERIFLE', weaponHash = GetHashKey('WEAPON_CARBINERIFLE')},
		{weaponName = 'WEAPON_ADVANCEDRIFLE', weaponHash = GetHashKey('WEAPON_ADVANCEDRIFLE')},
		{weaponName = 'WEAPON_SPECIALCARBINE', weaponHash = GetHashKey('WEAPON_SPECIALCARBINE')},
		{weaponName = 'WEAPON_BULLPUPRIFLE', weaponHash = GetHashKey('WEAPON_BULLPUPRIFLE')},
		{weaponName = 'WEAPON_COMPACTRIFLE', weaponHash = GetHashKey('WEAPON_COMPACTRIFLE')}
	},
	MGs = {
		{weaponName = 'WEAPON_MG', weaponHash = GetHashKey('WEAPON_MG')},
		{weaponName = 'WEAPON_COMBATMG', weaponHash = GetHashKey('WEAPON_COMBATMG')},
		{weaponName = 'WEAPON_GUSENBERG', weaponHash = GetHashKey('WEAPON_GUSENBERG')}
	},
	Snipers = {
		{weaponName = 'WEAPON_SNIPERRIFLE', weaponHash = GetHashKey('WEAPON_SNIPERRIFLE')},
		{weaponName = 'WEAPON_HEAVYSNIPER', weaponHash = GetHashKey('WEAPON_HEAVYSNIPER')},
		{weaponName = 'WEAPON_MARKSMANRIFLE', weaponHash = GetHashKey('WEAPON_MARKSMANRIFLE')}
	},
	Flares = {
		{weaponName = 'WEAPON_FLAREGUN', weaponHash = GetHashKey('WEAPON_FLAREGUN')}
	}
}

-- Vehicle GPS
Config.UseVehicleGPS = false -- Set to true to use Vehicle GPS.
Config.LimitedVehicles = true -- Set to true to only allow Aircrafts, Boats, & Cars to use GPS.
Config.OnlyFrontSeats = true -- Set to true to only allow the front 2 seats to be able to see Radar if they used it.


-----------------??? Garbage job


Config.TruckPlateNumb = 0  -- This starts the custom plate for trucks at 0
Config.MaxStops	= 10 -- Total number of stops a person is allowed to do before having to return to depot.
Config.MaxBags = 10 -- Total number of bags a person can get out of a bin
Config.MinBags = 4 -- Min number of bags that a bin can contain.
Config.BagPay = 25 -- The amount paid to each person per bag
Config.StopPay = 200 -- Total pay for the stop before bagpay.
Config.JobName = 'garbage'  -- use this to set the jobname that you want to be able to do garbagecrew 

--Config.UseWorkClothing = true	-- This feature has been removed until I can find the issue with removing player loadout on reload

Config.Trucks = {
  'trash',
  'trash2',
}

Config.DumpstersAvaialbe = {
  218085040,
  666561306,
  -58485588,
  -206690185,
  1511880420,
  682791951,
  -387405094,
  364445978,
  1605769687,
  -1831107703,
  -515278816,
  -1790177567,
}

Config.VehicleSpawn = {pos = vector3(-328.50,-1520.99, 27.53),}

Config.Zones = {
	[1] = {type = 'Zone', size = 5.0 , name = 'endmission', pos = vector3(-335.26,-1529.56, 26.58)},
	[2] = {type = 'Zone', size = 3.0 , name = 'timeclock', pos = vector3(-321.70,-1545.94, 30.02)},
	[3] = {type = 'Zone', size = 3.0 , name = 'vehiclelist', pos = vector3(-316.16,-1536.08, 26.65)},
}

-- if you wish to add more pickup locations must have the same format as below.  Make sure when you are selecting locations you have
-- your Settings\Graphics\Distance Scaling - turned all the way down to make sure the bin will show up for everyone.
Config.Collections = {
  [1] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(114.83,-1462.31, 29.29508)},
  [2] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(-6.04,-1566.23, 29.209197)},
  [3] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(-1.88,-1729.55, 29.300233)},
  [4] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(159.09,-1816.69, 27.91234)},
  [5] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(358.94,-1805.07, 28.96659)},
  [6] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(481.36,-1274.82, 29.64475)},
  [7] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(127.9472,-1057.73, 29.19237)},
  [8] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(-1613.123, -509.06, 34.99874)},
  [9] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(342.78,-1036.47, 29.19420)},
  [10] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(383.03,-903.60, 29.15601)}, 
  [11] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(165.44,-1074.68, 28.90792)}, 
  [12] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(50.42,-1047.98, 29.31497)}, 
  [13] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(-1463.92, -623.96, 30.20619)},
  [14] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(443.96,-574.33, 28.49450)},
  [15] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(-1255.41,-1286.82,3.58411)}, 
  [16] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(-1229.35, -1221.41, 6.44954)},
  [17] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(-31.94,-93.43, 57.24907)},
  [18] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(274.31,-164.43, 60.35734)},
  [19] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(-364.33,-1864.71, 20.24249)}, 
  [20] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(-1239.42, -1401.13, 3.75217)},
}


------stress


MFS.GetSickAt       = 60 -- only change the first value (percent player gets sick at)
MFS.ExtremelySickAt = 90 -- only change the first value (percent player vomits at)

MFS.CoughTimer      = 120 -- seconds between cough
MFS.VomitTimer      = 60 -- seconds between vomit
MFS.VomitHealthLoss = 90 -- from vomiting

MFS.DrugsTimer      = 60 -- how long drugs last (seconds)
MFS.SmokeRelief     = 50 -- from smoking cigarette
MFS.JointRelief     = 75 -- from smoking joint
MFS.AlchoholRelief  = 45 -- from drinking alchohol beverage
MFS.DrinkingRelief  = 45-- from drinking non-alchoholic beverage

MFS.StaticRelief    = 10.0 -- % stress relieved over time from events like swimming, riding bikes, etc.
MFS.StaticAdder     = 0.5 -- % stress gained over time from things like driving too fast.
MFS.CombatAdder     = 0.1 -- % stress gained while in combat
MFS.ShootingAdder   = 0.1 -- % stress gained while shooting
MFS.StressAtSpeed   = 200 -- kph
MFS.RelaxAtSpeed    = 20  -- kph


---------tats
ConfigT = {}

ConfigT.AllTattooList = json.decode(LoadResourceFile(GetCurrentResourceName(), 'AllTattoos.json'))
ConfigT.TattooCats = {
	{"ZONE_HEAD", "Head", {vec(0.0, 0.7, 0.7), vec(0.7, 0.0, 0.7), vec(0.0, -0.7, 0.7), vec(-0.7, 0.0, 0.7)}, vec(0.0, 0.0, 0.5)},
	{"ZONE_LEFT_LEG", "Left Leg", {vec(-0.2, 0.7, -0.7), vec(-0.7, 0.0, -0.7), vec(-0.2, -0.7, -0.7)}, vec(-0.2, 0.0, -0.6)},
	{"ZONE_LEFT_ARM", "Left Arm", {vec(-0.4, 0.5, 0.2), vec(-0.7, 0.0, 0.2), vec(-0.4, -0.5, 0.2)}, vec(-0.2, 0.0, 0.2)},
	{"ZONE_RIGHT_LEG", "Right Leg", {vec(0.2, 0.7, -0.7), vec(0.7, 0.0, -0.7), vec(0.2, -0.7, -0.7)}, vec(0.2, 0.0, -0.6)},
	{"ZONE_TORSO", "Torso", {vec(0.0, 0.7, 0.2), vec(0.0, -0.7, 0.2)}, vec(0.0, 0.0, 0.2)},
	{"ZONE_RIGHT_ARM", "Right Arm", {vec(0.4, 0.5, 0.2), vec(0.7, 0.0, 0.2), vec(0.4, -0.5, 0.2)}, vec(0.2, 0.0, 0.2)},
}

ConfigT.Shops = {
	vec(1322.6, -1651.9, 51.2),
	vec(-1153.6, -1425.6, 4.9),
	vec(322.1, 180.4, 103.5),
	vec(-3170.0, 1075.0, 20.8),
	vec(1864.6, 3747.7, 33.0),
	vec(-293.7, 6200.0, 31.4)
}

ConfigT.interiorIds = {}
for k, v in ipairs(ConfigT.Shops) do
    ConfigT.interiorIds[#ConfigT.interiorIds + 1] = GetInteriorAtCoords(v)
end

---carwash




ConfigC = {}



-- Possible languages: 'en'
ConfigC.Locale = 'en'



-- Blip related settings.
ConfigC.ShowBlips = true     -- Show blips? ( true | false )
ConfigC.BlipColor = 4        -- Blip color. ( https://wiki.rage.mp/index.php?title=Blips#Blip_colors )
ConfigC.BlipDisplay = 2      -- Blip display (0 = Don't show, 2 = On main and minimap, 3 = Main map only, 5 = Minimap only)
ConfigC.BlipScale = 0.7      -- Blip scale. Recommended: 1.0 - 0.5
ConfigC.BlipSprite = 100     -- Blip type. ( https://wiki.rage.mp/index.php?title=Blips#Blip_model )



-- Marker related settings.
ConfigC.ShowMarkers = true   -- Show markers? ( true | false )
ConfigC.DrawDistance = 50    -- How close you have to be for the markers to appear.
ConfigC.MarkerType = 1       -- Marker type. ( https://wiki.rage.mp/index.php?title=Markers )
ConfigC.MarkerColor = { r = 255, g = 255, b = 255, a = 35 }  -- Marker color. Red, green, blue and alpha (transparency - 0 to 100).



-- Price multiplied by dirt level. There's 16 dirt levels, from 0 to 15. Price 4 means completely dirty car costs $60 to clean.
ConfigC.Price = 150



-- Specify how long it takes to clean the vehicle in seconds. Set to 0 for instant clean.
ConfigC.Timer = 2



-- Locations. "extents" specifies the radius of it, useful for smaller carwashes.
ConfigC.Locations = {
    cw1 = { -- Innocence Blvd, Strawberry
        location = { x = 26.58, y = -1391.88, z = 28.37 },
        extents  = 6.0
    },
    cw2 = { -- Carson Ave, Davis
        location = { x = 169.35, y = -1716.72, z = 28.30 },
        extents  = 6.0
    },
    cw3 = { -- Lindsay Circus, Little Seoul
        location = { x = -699.78, y = -933.04, z = 18.02 },
        extents  = 6.0
    },
    cw4 = { -- Algonquin Blvd, Sandy Shores
        location = { x = 1361.88, y = 3592.44, z = 33.95 },
        extents  = 6.0
    }
}



------------------------------------ 

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
	{ drug = 'coke', label = 'Coke', Enabled = true, BuyPrice = 1250, MinReward = 1, MaxReward = 3 },
	{ drug = 'meth', label = 'Meth', Enabled = true, BuyPrice = 1750, MinReward = 2, MaxReward = 6 },
	{ drug = 'weed', label = 'Weed', Enabled = true, BuyPrice = 1300, MinReward = 4, MaxReward = 10 },
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
	min = 9,
	max = 11
}
ConfigTiger.MethSale = {
	min = 11,
	max = 13
}	
ConfigTiger.WeedSale = {
	min = 7,
	max = 8
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

