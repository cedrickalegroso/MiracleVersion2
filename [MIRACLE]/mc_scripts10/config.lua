Config = {}

Config.AllLogs = true											-- Enable/Disable All Logs Channel
Config.postal = true  											-- set to false if you want to disable nerest postal (https://forum.cfx.re/t/release-postal-code-map-minimap-new-improved-v1-2/147458)
Config.username = "MayorLogs" 							-- Bot Username
Config.avatar = "https://i.imgur.com/qc1eK1g.jpg"				-- Bot Avatar
Config.communtiyName = "MayorLogs"					-- Icon top of the Embed
Config.communtiyLogo = "https://i.imgur.com/qc1eK1g.jpg"		-- Icon top of the Embed


Config.weaponLog = true  			-- set to false to disable the shooting weapon logs
Config.weaponLogDelay = 1000		-- delay to wait after someone fired a weapon to check again in ms (put to 0 to disable) Best to keep this at atleast 1000

Config.playerID = true				-- set to false to disable Player ID in the logs
Config.steamID = true				-- set to false to disable Steam ID in the logs
Config.steamURL = true				-- set to false to disable Steam URL in the logs
Config.discordID = true				-- set to false to disable Discord ID in the logs


-- Change color of the default embeds here
-- It used Decimal color codes witch you can get and convert here: https://jokedevil.com/colorPicker
Config.joinColor = "3863105" 		-- Player Connecting
Config.leaveColor = "15874618"		-- Player Disconnected
Config.chatColor = "10592673"		-- Chat Message
Config.shootingColor = "10373"		-- Shooting a weapon
Config.deathColor = "000000"		-- Player Died
Config.resourceColor = "15461951"	-- Resource Stopped/Started



Config.webhooks = {
	all = "https://discord.com/api/webhooks/772915462082134056/a9h_Xl6InO4jsACS1tof6Fps9c4CLAXYiCjU-V_26kJl4RuIZk8kL3_D1wEtAyTkng9F",
	chat = "https://discord.com/api/webhooks/765801934371291166/dZS_rTkKn-y3rUuFYmG4v3lPWDfuu-IKdbf4CZ5iEdTDZnTul_xeSbMJ5MYtiEWZGo9D",
	joins = "https://discord.com/api/webhooks/772915633045897277/C5zzRMocO9I71khQffxjctiS96mTdycQS5CK3-WLUN0O8CtSbU6WYzXLC9Ixz8ai1Kag",
	leaving = "https://discord.com/api/webhooks/772915635998294037/lgMSK-NYFrpLwCtQopQL280nsERsCE6bm_B2ecOzfFj6LMALdSwXWUmo4LBCXpT-aFcI",
	deaths = "https://discord.com/api/webhooks/772915914319724614/fzZau47MwemF9sBxBHeae9EKPNt9PRbKusLJ6rZ79aTXeeKDdZhDOaon4WpZ9CPdhcOY",
	shooting = "https://discord.com/api/webhooks/772915914319724614/fzZau47MwemF9sBxBHeae9EKPNt9PRbKusLJ6rZ79aTXeeKDdZhDOaon4WpZ9CPdhcOY",
	resources = "https://discord.com/api/webhooks/772916000135708722/_5lOIvkoibzbYdUPjaxHAEPKH0B200QscfzP2Mr8yuru-9HcUUcFu3qXBW6XzfaVUzVf",

  -- How you add more logs is explained on https://docs.jokedevil.com/JD_logs
  }


 --Debug shizzels :D
Config.debug = false
Config.versionCheck = "1.1.0"



--truck



--------------------------------
------- Created by Hamza -------
-------------------------------- 

ConfigTrucj = {}

-- Police Settings:
ConfigTrucj.RequiredPoliceOnline = 4			-- required police online for players to do missions
ConfigTrucj.PoliceDatabaseName = "police"	-- set the exact name from your jobs database for police
ConfigTrucj.PoliceNotfiyEnabled = true		-- police notification upon truck robbery enabled (true) or disabled (false)
ConfigTrucj.PoliceBlipShow = true			-- enable or disable blip on map on police notify
ConfigTrucj.PoliceBlipTime = 30				-- miliseconds that blip is active on map (this value is multiplied with 4 in the script)
ConfigTrucj.PoliceBlipRadius = 50.0			-- set radius of the police notify blip
ConfigTrucj.PoliceBlipAlpha = 250			-- set alpha of the blip
ConfigTrucj.PoliceBlipColor = 5				-- set blip color

-- Set cooldown timer, which player has to wait before being able to do a mission again, in minutes here:
ConfigTrucj.CooldownTimer = 120

-- Enable or disable player wearing a 'heist money bag' after the robbery:
ConfigTrucj.EnablePlayerMoneyBag = true

-- Hacking Settings:
ConfigTrucj.EnableAnimationB4Hacking = true			-- enable/disable hacking or typing animation
ConfigTrucj.HackingBlocks = 4						-- amount of blocks u have to match
ConfigTrucj.HackingSeconds = 40						-- seconds to hack

-- Mission Cost Settings:
ConfigTrucj.MissionCost = 30000		-- taken from bank account // set to 0 to disable mission cost

-- Reward Settings:
ConfigTrucj.MinReward = 100000						-- set minimum reward amount
ConfigTrucj.MaxReward = 250000						-- set maximum reward amount
ConfigTrucj.RewardInDirtyMoney = true			-- reward as dirty money (true) or as normal cash (false)
ConfigTrucj.EnableItemReward = false 				-- requires to add your desired items into your items table in database
ConfigTrucj.ItemName1 = "jewels"				-- exact name of your item1
ConfigTrucj.ItemMinAmount1 = 50					-- set minimum reward amount of item1
ConfigTrucj.ItemMaxAmount1 = 100					-- set maximum reward amount of item1
ConfigTrucj.EnableRareItemReward = false			-- add another item as reward but this has only 25% chance 
ConfigTrucj.ItemName2 = "PutItemNameHere"				-- exact name of your item2
ConfigTrucj.ItemMinAmount2 = 1					-- set minimum reward amount of item2
ConfigTrucj.ItemMaxAmount2 = 3					-- set maximum reward amount of item2
ConfigTrucj.RandomChance = 2						-- Set chance, 1/2 is default, which is 50% chance. If u e.g. change value to 4, then 1/4 equals 25% chance.

-- Mission Blip Settings:
ConfigTrucj.EnableMapBlip = true							-- set between true/false
ConfigTrucj.BlipNameOnMap = "Armored Truck Mission"		-- set name of the blip
ConfigTrucj.BlipSprite = 67								-- set blip sprite, lists of sprite ids are here: https://docs.fivem.net/game-references/blips/
ConfigTrucj.BlipDisplay = 4								-- set blip display behaviour, find list of types here: https://runtime.fivem.net/doc/natives/#_0x9029B2F3DA924928
ConfigTrucj.BlipScale = 0.7								-- set blip scale/size on your map
ConfigTrucj.BlipColour = 5								-- set blip color, list of colors available in the bottom of this link: https://docs.fivem.net/game-references/blips/

-- Armored Truck Blip Settings:
ConfigTrucj.BlipNameForTruck = "Armored Truck"			-- set name of the blip
ConfigTrucj.BlipSpriteTruck = 1							-- set blip sprite, lists of sprite ids are here: https://docs.fivem.net/game-references/blips/
ConfigTrucj.BlipColourTruck = 5							-- set blip color, list of colors available in the bottom of this link: https://docs.fivem.net/game-references/blips/
ConfigTrucj.BlipScaleTruck = 0.9							-- set blip scale/size on your map

-- Mission Start Location:
ConfigTrucj.MissionSpot = {
	{ ["x"] = 1275.55, ["y"] = -1710.4, ["z"] = 54.77, ["h"] = 0 },
}

-- Mission Marker Settings:
ConfigTrucj.MissionMarker = 27 												-- marker type
ConfigTrucj.MissionMarkerColor = { r = 240, g = 52, b = 52, a = 100 } 		-- rgba color of the marker
ConfigTrucj.MissionMarkerScale = { x = 1.25, y = 1.25, z = 1.25 }  			-- the scale for the marker on the x, y and z axis
ConfigTrucj.Draw3DText = "Press ~g~[E]~s~ for ~y~Mission~s~"					-- set your desired text here

-- Control Keys
ConfigTrucj.KeyToStartMission = 38	-- default: [E] // set key to start the mission
ConfigTrucj.KeyToOpenTruckDoor = 47
ConfigTrucj.KeyToRobFromTruck = 38										

-- ESX.ShowNotifications:
ConfigTrucj.NoMissionsAvailable = "No ~y~missions~s~ are currently available, please try again later!"
ConfigTrucj.HackingFailed = "You ~r~failed~s~ the hacking~s~"
ConfigTrucj.TruckMarkedOnMap = "~y~Armored Truck~s~ is marked on your map"
ConfigTrucj.KillTheGuards = "~r~Kill~s~ the guards in the ~y~Armored Truck~s~"
ConfigTrucj.MissionCompleted = "~g~Mission Completed:~s~ You successfully ~r~robbed~s~ the ~y~Armored Truck~s~"
ConfigTrucj.BeginToRobTruck = "Go to the ~y~Armored Truck~s~ and begin to rob"
ConfigTrucj.GuardsNotKilledYet = "Take out the ~b~driver~s~ and/or the ~b~passenger~s~ from the ~y~Armored Truck~s~"
ConfigTrucj.TruckIsNotStopped = "Stop the ~y~Armored Truck~s~ before ~r~robbing~s~!"
ConfigTrucj.NotEnoughMoney = "You need ~g~$"..ConfigTrucj.MissionCost.."~s~ on your ~b~bank-account~s~ to get a ~y~mission~s~"
ConfigTrucj.NotEnoughPolice = "To do ~y~missions~s~ there needs to be at least: ~b~"..ConfigTrucj.RequiredPoliceOnline.. " cops~s~ online!"
ConfigTrucj.CooldownMessage = "You can do another ~y~mission~s~ in: ~b~%s minutes~s~"
ConfigTrucj.RewardMessage = "You received ~g~$%s ~s~ from the ~y~Armored Truck~s~"
ConfigTrucj.Item1Message = "You received ~b~%sx~s~ Jewels from the ~y~Armored Truck~s~"
ConfigTrucj.Item2Message = "You received ~b~%sx~s~ Jewels Bars from the ~y~Armored Truck~s~"
ConfigTrucj.DispatchMessage = "^3 10-90 ^0 on a Armored Truck at ^5%s^0"

-- ESX.ShowHelpNotifications:
ConfigTrucj.OpenTruckDoor = "Press ~INPUT_DETONATE~ to open the door"
ConfigTrucj.RobFromTruck = "Press ~INPUT_PICKUP~ to rob from the Truck"

-- ProgressBars text
ConfigTrucj.Progress1 = "RETRIEVING TRUCK INFO"
ConfigTrucj.Progress2 = "PLANTING C4"
ConfigTrucj.Progress3 = "TIME UNTIL DETONATION"
ConfigTrucj.Progress4 = "ROBBING THE TRUCK"

-- ProgressBar Timers, in seconds:
ConfigTrucj.RetrieveMissionTimer = 7.5	-- time from pressed E to receving location on the truck
ConfigTrucj.DetonateTimer = 10			-- time until bomb is detonated
ConfigTrucj.RobTruckTimer = 10			-- time spent to rob the truck

-- Guards Weapons:
ConfigTrucj.DriverWeapon = "WEAPON_PUMPSHOTGUN"		-- weapon for driver
ConfigTrucj.PassengerWeapon = "WEAPON_SMG" 			-- weapon for passenger

-- Armored Truck Spawn Locations
ConfigTrucj.ArmoredTruck = 
{
	{ 
		Location = vector3(-1327.479736328,-86.045326232910,49.31), 
		InUse = false
	},
	{ 
		Location = vector3(-2075.888183593,-233.73908996580,21.10), 
		InUse = false
	},
	{ 
		Location = vector3(-972.1781616210,-1530.9045410150,4.890), 
		InUse = false
	},
	{ 
		Location = vector3(798.184265136720,-1799.8173828125,29.33), 
		InUse = false
	},
	{ 
		Location = vector3(1247.0718994141,-344.65634155273,69.08), 
		InUse = false
	}
}

--Advanced Fishing Sidejob
ConfigFishing = {}
	---------------------------------------------------------------
	--=====How long should it take for player to catch a fish=======--
	---------------------------------------------------------------
	--Time in miliseconds
	ConfigFishing.FishTime = {a = 20000, b = 44000}

	--------------------------------------------------------
	--=====Locations where players can sell stuff========--
	--------------------------------------------------------

	ConfigFishing.Sell = {
		{
			pos = vec3(-3251.2, 991.5, 11.49), 
			type = "fish",
			sellText = "Fish Dealer",
			blip = 356,
			colour = 17
		},
		{
			pos = vec3(3804.0, 4443.3, 3.0), 
			type = "turtle",
			sellText = "Sea Turtle Dealer",
			blip = 68,
			colour = 49
		},
		{
			pos = vec3(2517.6 , 4218.0, 38.8), 
			type = "shark",
			sellText = "Shark Dealer",
			blip = 68,
			colour = 49
		}
	}

	--------------------------------------------------------
	--=====Locations where players can rent boats========--
	--------------------------------------------------------
ConfigFishing.MarkerZones = { 
	{
		Marker = vec3(-3426.7,	955.66, 7.35), -- Rental Marker
		Spawn = vec3(-3426.2, 942.4, 1.1), -- Boat Spawn Point
		SpawnHeading = 90.0, -- Boat Heading
		Return = vec3(-3420.2, 996.51, -0.2) -- Boat Return Point
	},
	{
		Marker = vec3(-732.9, -1309.7, 4.0),
		Spawn = vec3(-725.7, -1351.5, 0.5),
		SpawnHeading = 135.0,
		Return = vec3(-712.78, -1338.49, 0.0)
	},  
	{
		Marker = vec3(-281.25,	6632.1, 6.4),
		Spawn = vec3(-330.22, 6660.0, 1.0),
		SpawnHeading = 45.0,
		Return = vec3(-268.4, 6697.04, -0.2)
	},
	{
		Marker = vec3(3855.0, 4463.7, 1.6),
		Spawn = vec3(3885.2, 4507.2, 1.0),
		SpawnHeading = 300.0,
		Return = vec3(3862.1, 4440.4, -0.2)
	},
	{
		Marker = vec3(1330.8, 4226.6, 32.9),
		Spawn = vec3(1343.44, 4190.42, 30.0),
		SpawnSpawnHeading = 200.0,
		Return = vec3(1295.0, 4198.43, 30.0)
	},
}

ConfigFishing.RentalBoats = {
	-- Fee and Deposit is 50% of the price, you get the deposit returned
	-- Add more boats if you want
	{model = "tug", price = 5000},
	{model = "smallboat", price = 2000},
}

-- Bottles Sideline
ConfigBottles = {}

ConfigBottles.BottleRecieve = { 1, 3 } -- This is the math random ex. math.random(1, 6) this will give you 1 - 6 bottles when searching a bin.
ConfigBottles.BottleReward = { 1, 4 } -- This is the math random ex. math.random(1, 4) this will give a random payout between 1 - 4

-- Here you add all the bins you are going to search.
ConfigBottles.BinsAvailable = {
	"prop_dumpster_4b",
	"prop_dumpster_4a",
	"prop_dumpster_02b",
	"prop_dumpster_02a",
	"prop_dumpster_01a",
	"prop_cs_dumpster_01a",
	"p_dumpster_t"
}

-- This is where you add the locations where you sell the bottles.
ConfigBottles.SellBottleLocations = {
    vector3(29.337753295898, -1770.3348388672, 29.607357025146),
    vector3(388.30194091797, -874.88238525391, 29.295169830322),
    vector3(26.877752304077, -1343.0764160156, 29.497024536133)
}

ConfigWaterCraft = {}
ConfigWaterCraft.SpawnBike = {x = -1609.12, y = -1120.5, z = 1.63, xs = -1632.16, ys = -1176.45,  zs= 0.5}
ConfigWaterCraft.DeleteBike = {x = -1618.35, y = -1174.15, z = 0.5}
