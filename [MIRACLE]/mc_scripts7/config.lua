Config                           = {}
Config.Locale = 'en'

Config.AlignMenu = "center" -- this is where the menu is located [left, right, center, top-right, top-left etc.]

Config.CreateTableInDatabase = false -- enable this the first time you start the script, this will create everything in the database.

Config.MotelPrice = 500 -- this is the price that you will pay when you buy the motel.
Config.KeyPrice = 500 -- this is the price for each key that you want to buy.

Config.Weapons = true -- enable this if you want weapons in the storage.
Config.DirtyMoney = true -- enable this if you want dirty money in the storage.

Config.Debug = false -- enable this only if you know what you're doing.

Config.MotelInterior = {
    ["exit"] = vector3(151.34562683105, -1007.6842041016, -99.0),
    ["wardrobe"] = vector3(151.74401855469, -1001.3790283203, -99.0),
    ["invite"] = vector3(152.84375, -1007.8104248047, -99.0)
}

Config.ActionLabel = {
    ["exit"] = "Exit",
    ["wardrobe"] = "Wardrobe",
    ["invite"] = "Invite"
}

Config.LandLord = {
    ["position"] = vector3(325.01959228516, -229.5560760498, 54.221176147461)
}

Config.MotelsEntrances = { -- every motel entrance, add more if you want another one.
    [1] = vector3(312.96322631836, -218.5948638916, 54.221771240234),
    [2] = vector3(310.96774291992, -217.81716918945, 54.221771240234),
    [3] = vector3(307.30145263672, -216.61219787598, 54.221771240234),
    [4] = vector3(307.70816040039, -213.3956451416, 54.221771240234),
    [5] = vector3(309.65942382813, -208.16549682617, 54.221771240234),
    [6] = vector3(313.52093505859, -198.16625976563, 54.221775054932),
    [7] = vector3(315.78137207031, -194.87210083008, 54.226440429688),
    [8] = vector3(319.16732788086, -196.6743927002, 54.226455688477),
    [9] = vector3(321.14105224609, -197.32002258301, 54.226455688477),
    [10] = vector3(311.38592529297, -203.59060668945, 54.221775054932),
    [11] = vector3(312.92715454102, -218.70674133301, 58.019248962402),
    [12] = vector3(311.02416992188, -217.88179016113, 58.019248962402),
    [13] = vector3(307.35223388672, -216.50700378418, 58.01921081543),
    [14] = vector3(307.75787353516, -213.50387573242, 58.019248962402),
    [15] = vector3(309.78897094727, -208.13804626465, 58.019248962402),
    [16] = vector3(311.65594482422, -203.6040802002, 58.019248962402),
    [17] = vector3(313.45355224609, -198.26907348633, 58.019214630127),
    [18] = vector3(315.65441894531, -194.87507629395, 58.019214630127),
    [19] = vector3(319.19891357422, -196.36817932129, 58.019214630127),
    [20] = vector3(321.16479492188, -197.19439697266, 58.019218444824),
    [21] = vector3(329.38122558594, -224.86923217773, 54.22180557251),
    [22] = vector3(331.49880981445, -225.41708374023, 54.22180557251),
    [23] = vector3(335.14532470703, -227.01698303223, 54.22180557251),
    [24] = vector3(336.76617431641, -224.61317443848, 54.221809387207),
    [25] = vector3(338.63681030273, -219.24388122559, 54.221817016602),
    [26] = vector3(340.43328857422, -214.77523803711, 54.221817016602),
    [27] = vector3(342.68362426758, -209.43200683594, 54.221817016602),
    [28] = vector3(344.32986450195, -204.81706237793, 54.221809387207),
    [29] = vector3(346.38806152344, -199.60670471191, 54.221809387207),
    [30] = vector3(329.39547729492, -224.89248657227, 58.019245147705),
    [31] = vector3(331.39825439453, -225.66204833984, 58.019245147705),
    [32] = vector3(334.89376831055, -227.13185119629, 58.019245147705),
    [33] = vector3(336.84780883789, -224.65908813477, 58.019245147705),
    [34] = vector3(338.85153198242, -219.31286621094, 58.019237518311),
    [35] = vector3(340.47213745117, -214.57499694824, 58.019237518311),
    [36] = vector3(342.56774902344, -209.27154541016, 58.019237518311),
    [37] = vector3(344.37359619141, -204.82313537598, 58.019237518311),
    [38] = vector3(346.62841796875, -199.55404663086, 58.019237518311)
}

-- This is the keys configuration where we can change the keys we use / add new keys.
Config.Keys = {
    ["ENTER"] = 215,

    ["ARROW LEFT"] = 174,
    ["ARROW RIGHT"] = 175,
    ["ARROW UP"] = 172,
    ["ARROW DOWN"] = 173,

    ["INSERT"] = 121,
    ["DELETE"] = 178,

    ["Q"] = 44,
    ["E"] = 38,

    ["G"] = 47,
    ["F"] = 23,

    ["X"] = 73
}

-- This is the tutorial in the left corner to show how to control the furnishing menu.
Config.HelpTextMessage = "~INPUT_CELLPHONE_LEFT~ ~INPUT_CELLPHONE_UP~ ~INPUT_CELLPHONE_DOWN~ ~INPUT_CELLPHONE_RIGHT~ Move ~n~"
Config.HelpTextMessage = Config.HelpTextMessage .. "~INPUT_VEH_FLY_ATTACK_CAMERA~ / ~INPUT_CELLPHONE_OPTION~ Height ~n~"
Config.HelpTextMessage = Config.HelpTextMessage .. "~INPUT_COVER~ / ~INPUT_CONTEXT~ Rotate ~n~"
Config.HelpTextMessage = Config.HelpTextMessage .. "~INPUT_DETONATE~ Put on ground ~n~"
Config.HelpTextMessage = Config.HelpTextMessage .. "~INPUT_SPRINT~ Speed ~n~"
Config.HelpTextMessage = Config.HelpTextMessage .. "~INPUT_ENTER~ Open menu ~n~"
Config.HelpTextMessage = Config.HelpTextMessage .. "~INPUT_FRONTEND_ENDSCREEN_ACCEPT~ Save ~n~"
Config.HelpTextMessage = Config.HelpTextMessage .. "~INPUT_VEH_DUCK~ Cancel & Delete ~n~"

UUID = function()
    math.randomseed(GetGameTimer() * math.random())

    return math.random(100000, 999999)
end

ConfigAmbu                            = {}

ConfigAmbu.DrawDistance               = 100.0

ConfigAmbu.Marker                     = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }

ConfigAmbu.ReviveReward               = 0  -- revive reward, set to 0 if you don't want it enabled
ConfigAmbu.AntiCombatLog              = true -- enable anti-combat logging?
ConfigAmbu.LoadIpl                    = true
ConfigAmbu.Locale = 'en'

local second = 1000
local minute = 60 * second

ConfigAmbu.EarlyRespawnTimer          = 10 * minute  -- Time til respawn is available
ConfigAmbu.BleedoutTimer              = 20 * minute -- Time til the player bleeds out

ConfigAmbu.EnablePlayerManagement     = true

ConfigAmbu.RemoveWeaponsAfterRPDeath  = true
ConfigAmbu.RemoveCashAfterRPDeath     = true
ConfigAmbu.RemoveItemsAfterRPDeath    = true

-- Let the player pay for respawning early, only if he can afford it.
ConfigAmbu.EarlyRespawnFine           = false
ConfigAmbu.EarlyRespawnFineAmount     = 20000

ConfigAmbu.RespawnPoint = {coords = vector3(297.99475097656,-584.67590332031,43.260845184326), heading = 48.5}


ConfigAmbu.Hospitals = {

	PillBoxHospital = {
	
		Blip = {
			coords = vector3(297.99475097656,-584.67590332031,43.260845184326), --pillbox
			sprite = 61,
			scale  = 0.7,
			color  = 2
		},



		AmbulanceActions = {
			vector3(306.24877929688,-597.49145507812,42.28409576416)
		},
		

		Pharmacies = {
			vector3(310.2529296875,-568.00311279297,42.284099578857) --pillbox
		},

	
		Vehicles = {
			{
				Spawner = vector3(0,0,0), --pillbox
				InsideShop = vector3(-489.20034790039,-330.97387695312,34.361522674561), --pillbox
				Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true },
				SpawnPoints = { -- all pillbox
				vector3(-455.66732788086,-332.12182617188,34.365810394287) --pillbox
				}
			}
		},
		Helicopters = {
			{
				Spawner = vector3(-497.10940551758,-314.81079101562,73.168067932129),
				InsideShop = vector3(-507.1201171875,-304.92623901367,73.168067932129),
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(-504.11968994141,-312.94424438477,73.168067932129), heading = 314.29, radius = 10.0 },
					--{ coords = vector3(299.5, -1453.2, 46.5), heading = 142.7, radius = 10.0 }
				}
			}
		},

		
		FastTravels = {
		
			
		},

		FastTravelsPrompt = {
			
		}

	}
}

ConfigAmbu.AuthorizedVehicles = {

	ambulance = {
		{ model = 'ambulance', label = 'Sports', price = 20000 },
			{ model = 'motobm', label = 'EMS Bike', price = 20000 },
		--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			
		},
		ems = {
			{ model = 'ambulance', label = 'Sports', price = 20000 },
			{ model = 'motobm', label = 'EMS Bike', price = 20000 },
		--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			
		},
		sr_ems = {
			{ model = 'ambulance', label = 'Sports', price = 20000 },
			{ model = 'motobm', label = 'EMS Bike', price = 20000 },
		--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			
		},
		emt = {
		--	{ model = 'POLICET', label = 'Sports', price = 20000 },
			{ model = 'ambulance', label = 'Sports', price = 20000 },
			{ model = 'motobm', label = 'EMS Bike', price = 20000 },
		--	{ model = 'motobmw', label = 'EMS Bike', price = 20000 },
		--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			
		},
		sr_emt = {
		--	{ model = 'POLICET', label = 'Sports', price = 20000 },
			{ model = 'dodgeems', label = 'Sports', price = 20000 },
			{ model = 'ambulance', label = 'Sports', price = 20000 },
			{ model = 'motobm', label = 'EMS Bike', price = 20000 },
		--	{ model = 'motobmw', label = 'EMS Bike', price = 20000 },
		--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			
		},
		paramedic = {
		--	{ model = 'POLICET', label = 'Sports', price = 20000 },
			{ model = 'dodgeems', label = 'Sports', price = 20000 },
			{ model = 'ambulance', label = 'Sports', price = 20000 },
			{ model = 'motobm', label = 'EMS Bike', price = 20000 },
		--	{ model = 'motobmw', label = 'EMS Bike', price = 20000 },
		--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			
		},
		sr_paramedic = {
		--	{ model = 'POLICET', label = 'Sports', price = 20000 },
			{ model = 'dodgeems', label = 'Sports', price = 20000 },
			{ model = 'ambulance', label = 'Sports', price = 20000 },
			{ model = 'motobm', label = 'EMS Bike', price = 20000 },
		--	{ model = 'motobmw', label = 'EMS Bike', price = 20000 },
		--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			
		},
		nurse = {
		--	{ model = 'POLICET', label = 'Sports', price = 20000 },
		{ model = 'dodgeems', label = 'Sports', price = 20000 },
		{ model = 'ambulance', label = 'Sports', price = 20000 },
		{ model = 'motobm', label = 'EMS Bike', price = 20000 },
		--		{ model = 'motobmw', label = 'EMS Bike', price = 20000 },
			--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			--{ model = 'rmodpolice', label = 'Sports', price = 20000 }
			
		},
		head_nurse = {
		--	{ model = 'POLICET', label = 'Sports', price = 20000 },
		{ model = 'dodgeems', label = 'Sports', price = 20000 },
		{ model = 'ambulance', label = 'Sports', price = 20000 },
		{ model = 'motobm', label = 'EMS Bike', price = 20000 },
		--		{ model = 'motobmw', label = 'EMS Bike', price = 20000 },
			--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			--{ model = 'rmodpolice', label = 'Sports', price = 20000 }
		},
		doctor = {
		--	{ model = 'POLICET', label = 'Sports', price = 20000 },
		{ model = 'dodgeems', label = 'Sports', price = 20000 },
		{ model = 'ambulance', label = 'Sports', price = 20000 },
		{ model = 'motobm', label = 'EMS Bike', price = 20000 },
		--		{ model = 'motobmw', label = 'EMS Bike', price = 20000 },
			--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			{ model = 'rmodpolice', label = 'Sports', price = 20000 }
		},
		chief_doctor = {
		--	{ model = 'POLICET', label = 'Sports', price = 20000 },
		{ model = 'dodgeems', label = 'Sports', price = 20000 },
		{ model = 'ambulance', label = 'Sports', price = 20000 },
		{ model = 'motobm', label = 'EMS Bike', price = 20000 },
		--		{ model = 'motobmw', label = 'EMS Bike', price = 20000 },
			--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			{ model = 'rmodpolice', label = 'Sports', price = 20000 }
			
		},
		assist_Director = {
		--	{ model = 'POLICET', label = 'Sports', price = 20000 },
		{ model = 'dodgeems', label = 'Sports', price = 20000 },
		{ model = 'ambulance', label = 'Sports', price = 20000 },
		{ model = 'motobm', label = 'EMS Bike', price = 20000 },
		--		{ model = 'motobmw', label = 'EMS Bike', price = 20000 },
			--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			{ model = 'rmodpolice', label = 'Sports', price = 20000 }
			
		},
		director = {
		--	{ model = 'POLICET', label = 'Sports', price = 20000 },
		{ model = 'dodgeems', label = 'Sports', price = 20000 },
		{ model = 'ambulance', label = 'Sports', price = 20000 },
		{ model = 'motobm', label = 'EMS Bike', price = 20000 },
		--		{ model = 'motobmw', label = 'EMS Bike', price = 20000 },
			--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
			{ model = 'rmodpolice', label = 'Sports', price = 20000 }
			
		},
	
		boss = {
		--	{ model = 'POLICET', label = 'Sports', price = 20000 },
			{ model = 'dodgeems', label = 'Sports', price = 20000 },
			{ model = 'ambulance', label = 'Sports', price = 20000 },
			{ model = 'motobm', label = 'EMS Bike', price = 20000 },
	--		{ model = 'motobmw', label = 'EMS Bike', price = 20000 },
		--	{ model = 'nissansame', label = 'Off Road', price = 20000 },
		{ model = 'rmodpolice', label = 'Sports', price = 20000 }
		},
	

}

ConfigAmbu.AuthorizedHelicopters = {

	ambulance = {},



	paramedic = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 100000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }

	},

	sr_paramedic = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 100000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }

	},

	nurse = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 100000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }

	},

	head_nurse = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 100000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }

	},

	doctor = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 100000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }
	
	},

	chief_doctor = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 100000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }

	},

	assist_Director = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 100000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }

	},

	director = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 100000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }

	},

	boss = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 100000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }

	}
}


--POPOPOP

ConfigPOPO                            = {}

ConfigPOPO.DrawDistance               = 100.0
ConfigPOPO.MarkerType                 = 1
ConfigPOPO.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
ConfigPOPO.MarkerColor                = { r = 50, g = 50, b = 204 }

ConfigPOPO.EnablePlayerManagement     = true
ConfigPOPO.EnableArmoryManagement     = true
ConfigPOPO.EnableESXIdentity          = true -- enable if you're using esx_identity
ConfigPOPO.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
ConfigPOPO.EnableSocietyOwnedVehicles = false
ConfigPOPO.EnableLicenses             = true -- enable if you're using esx_license

ConfigPOPO.EnableHandcuffTimer        = true -- enable handcuff timer? will unrestrain player after the time ends
ConfigPOPO.HandcuffTimer              = 10 * 60000 -- 10 mins

ConfigPOPO.EnableJobBlip              = true -- enable blips for colleagues, requires esx_society

ConfigPOPO.MaxInService               = -1
ConfigPOPO.Locale                     = 'fr'

ConfigPOPO.PoliceStations = {

	LSPD = {

		Blip = {
			Pos     = { x = 425.130, y = -979.558, z = 30.711 },
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29,
		},

		-- https://wiki.rage.mp/index.php?title=Weapons
		AuthorizedWeapons = {
			--{ name = 'WEAPON_NIGHTSTICK',       price = 200 },
			{ name = 'WEAPON_COMBATPISTOL',     price = 300 },
			{ name = 'WEAPON_CARBINERIFLE',     price = 300 },
			{ name = 'WEAPON_SPECIALCARBINE',     price = 300 },
			{ name = 'WEAPON_ASSAULTSMG',       price = 1250 },
			{ name = 'WEAPON_ASSAULTRIFLE',     price = 1500 },
			{ name = 'WEAPON_PUMPSHOTGUN',      price = 600 },
			{ name = 'WEAPON_STUNGUN',          price = 500 },
			{ name = 'WEAPON_FLASHLIGHT',       price = 80 },
			--{ name = 'WEAPON_FIREEXTINGUISHER', price = 120 },
			--{ name = 'WEAPON_FLAREGUN',         price = 60 },
		--	{ name = 'WEAPON_STICKYBOMB',       price = 250 },
			--{ name = 'GADGET_PARACHUTE',        price = 300 },
		},
          --,,,,
		Cloakrooms = {
			{ x =460.88604736328, y = -998.94586181641, z = 29.689514160156 },
		},

	

		Armories = {
			{ x = 482.56622314453, y = -995.61755371094, z = 29.689647674561 },
		},

		Vehicles = {
			{
				Spawner    = { x = 0, y = 0, z = 0},
				SpawnPoints = {
					{ x = 0, y = 0, z = 0, heading = 90.0, radius = 6.0 },
					--{ x = 441.08, y = -1024.23, z = 28.30, heading = 90.0, radius = 6.0 },
					--{ x = 453.53, y = -1022.20, z = 28.02, heading = 90.0, radius = 6.0 },
					--{ x = 450.97, y = -1016.55, z = 28.10, heading = 90.0, radius = 6.0 }
				}
			},

			{
				Spawner    = { x = 473.38, y = -1018.43, z = 27.00 },
				SpawnPoints = {
					{ x = 475.98, y = -1021.65, z = 28.06, heading = 276.11, radius = 6.0 },
					{ x = 484.10, y = -1023.19, z = 27.57, heading = 302.54, radius = 6.0 }
				}
			}
		},
		
		
		Helicopters = {
			{
				Spawner = vector3(460.27682495117,-981.36370849609,43.69197845459),
				InsideShop = vector3(449.34307861328,-981.23651123047,43.691730499268),
				SpawnPoints = {
					{coords = vector3(449.34307861328,-981.23651123047,43.691730499268), heading = 92.6, radius = 10.0}
				}
			}
		},

		VehicleDeleters = {
		--	{ x = 462.74, y = -1014.4, z = 27.065 },
		--	{ x = 462.40, y = -1019.7, z = 27.104 },
		--	{ x = 469.12, y = -1024.52, z = 27.20 }
		},

		--,,
		BossActions = {
			{ x = 462.65582275391, y = -985.171875, z = 29.728076934814 }
		},

		
	},

}

-- https://wiki.rage.mp/index.php?title=Vehicles
ConfigPOPO.AuthorizedVehicles = {

	recruit = {
		{ model = 'polmav', label = 'Police Mavrick',  price = 400 }
	},

	chief_Inspector = {
		{ model = 'polmav', label = 'Police Mavrick',  price = 400 }
	},

	superintendent = {
		{ model = 'polmav', label = 'Police Mavrick',  price = 400 }
	},

	chief_superintendent = {
		{ model = 'polmav', label = 'Police Mavrick',  price = 400 }
	},

	Director = {
		{ model = 'polmav', label = 'Police Mavrick',  price = 400 }
	},

	deputy_director_general = {
		{ model = 'polmav', label = 'Police Mavrick',  price = 400 }
	},

	boss = {
		{ model = 'polmav', label = 'Police Mavrick',  price = 400 }
	},

}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

ConfigPOPO.Uniforms = {
	recruit_wear = {
		male = {
			['tshirt_1'] = 39,  ['tshirt_2'] = 0,
			['torso_1'] = 2,   ['torso_2'] = 5,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['bproof_1'] = 0,
			['bags_1'] = 0,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 46,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = 45,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	police_officer_1_wear = {
		male = {
			['tshirt_1'] = 39,  ['tshirt_2'] = 0,
			['torso_1'] = 2,   ['torso_2'] = 6,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['bproof_1'] = 0,
			['bags_1'] = 0,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 46,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = 45,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	
	police_officer_2_wear = {
		male = {
			['tshirt_1'] = 39,  ['tshirt_2'] = 0,
			['torso_1'] = 2,   ['torso_2'] = 6,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['bproof_1'] = 0,
			['bags_1'] = 0,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 46,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = 45,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	police_officer_3_wear = {
		male = {
			['tshirt_1'] = 39,  ['tshirt_2'] = 0,
			['torso_1'] = 2,   ['torso_2'] = 6,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['bproof_1'] = 0,
			['bags_1'] = 0,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 46,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = 45,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	senior_police_officer_1_wear = { -- currently the same as intendent_wear
		male = {
			['tshirt_1'] = 39,  ['tshirt_2'] = 0,
			['torso_1'] = 2,   ['torso_2'] = 7,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['bproof_1'] = 0,
			['bags_1'] = 0,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 46,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = 45,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	senior_police_officer_2_wear = {
		male = {
			['tshirt_1'] = 39,  ['tshirt_2'] = 0,
			['torso_1'] = 2,   ['torso_2'] = 7,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['bproof_1'] = 0,
			['bags_1'] = 0,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 46,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = 45,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	senior_police_officer_3_wear = { -- currently the same as chef_wear
		male = {
			['tshirt_1'] = 39,  ['tshirt_2'] = 0,
			['torso_1'] = 2,   ['torso_2'] = 7,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['bproof_1'] = 0,
			['bags_1'] = 0,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 46,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = 45,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	senior_police_officer_4_wear = { -- currently the same as chef_wear
		male = {
			['tshirt_1'] = 39,  ['tshirt_2'] = 0,
			['torso_1'] = 2,   ['torso_2'] = 7,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['bproof_1'] = 0,
			['bags_1'] = 0,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 46,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = 45,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	inspector_wear = { -- currently the same as chef_wear
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 93,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 3,
			['arms'] = 44,
			['bags_1'] = 0,
			['pants_1'] = 87,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 125,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	senior_Inspector_wear = { -- currently the same as chef_wear
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 93,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 3,
			['arms'] = 44,
			['bags_1'] = 0,
			['pants_1'] = 87,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 125,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	chief_Inspector_wear = { -- currently the same as chef_wear
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 93,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 3,
			['arms'] = 44,
			['bags_1'] = 0,
			['pants_1'] = 87,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 125,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,  ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	superintendent_wear = { -- currently the same as chef_wear
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 93,    ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 87,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	Director_wear = { -- currently the same as chef_wear
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 93,    ['torso_2'] = 2,
			['decals_1'] = 0,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 87,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	deputy_director_general_wear = { -- currently the same as chef_wear
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 93,    ['torso_2'] = 3,
			['decals_1'] = 0,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 87,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	boss_wear = { -- currently the same as chef_wear
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 93,    ['torso_2'] = 4,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 87,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	bullet_wear = {
		male = {
			['bproof_1'] = 6,  ['bproof_2'] = 0
		},
		female = {
			['bproof_1'] = 8,  ['bproof_2'] = 0
		}
	},
	gilet_wear = {
		male = {
			['bproof_1'] = 10,  ['bproof_2'] = 1
		},
		female = {
			['bproof_1'] = 20,  ['bproof_2'] = 1
		}
	}

}

--GANG1

ConfigGANG1                            = {}

ConfigGANG1.DrawDistance               = 10.0 -- How close do you need to be for the markers to be drawn (in GTA units).
ConfigGANG1.MarkerType                 = {Cloakrooms = 20, Armories = 21, BossActions = 22, Vehicles = 36, Helicopters = 34}
ConfigGANG1.MarkerSize                 = {x = 1.5, y = 1.5, z = 0.5}
ConfigGANG1.MarkerColor                = {r = 255, g = 0, b = 0}

ConfigGANG1.EnablePlayerManagement     = true -- Enable if you want society managing.
ConfigGANG1.EnableArmoryManagement     = true
ConfigGANG1.EnableESXIdentity          = true -- Enable if you're using esx_identity.
ConfigGANG1.EnableLicenses             = true -- Enable if you're using esx_license.

ConfigGANG1.EnableHandcuffTimer        = true -- Enable handcuff timer? will unrestrain player after the time ends.
ConfigGANG1.HandcuffTimer              = 10 * 60000 -- 10 minutes.

ConfigGANG1.EnableJobBlip              = true -- Enable blips for cops on duty, requires esx_society.
ConfigGANG1.EnableCustomPeds           = false -- Enable custom peds in cloak room? See ConfigGANG1.CustomPeds below to customize peds.

ConfigGANG1.EnableESXService           = false -- Enable esx service?
ConfigGANG1.MaxInService               = -1 -- How much people can be in service at once?

ConfigGANG1.Locale                     = 'en'

ConfigGANG1.GuerreroStations = {

	LSPD = {

		

		Blip = {
			Coords  = vector3(-542.490234375,-208.67393493652,37.649745941162),
			Sprite  = 438,
			Display = 4,
			Scale   = 1.2,
			Colour  = 75
		},

		Cloakrooms = {
			vector3(-1531.72, 142.84, 55.67)
		},

		

		Armories = {
			vector3(-526.68255615234,-170.95391845703,43.185626983643)
		},
		
	
		Vehicles = {
			{
					
				Spawner = vector3(-491.10507202148,-203.18705749512,37.075466156006),
				InsideShop = vector3(-501.34017944336,-229.89602661133,36.410427093506),
				SpawnPoints = {
					{coords = vector3(-487.57046508789,-197.45831298828,37.023303985596), heading = 90.0, radius = 6.0},
					--{coords = vector3(441.0, -1024.2, 28.3), heading = 90.0, radius = 6.0},
					--{coords = vector3(453.5, -1022.2, 28.0), heading = 90.0, radius = 6.0},
					--{coords = vector3(450.9, -1016.5, 28.1), heading = 90.0, radius = 6.0}
				}
				
			},

			{
					
				Spawner = vector3(473.3, -1018.8, 28.0),
				InsideShop = vector3(228.5, -993.5, -99.0),
				SpawnPoints = {
					{coords = vector3(475.9, -1021.6, 28.0), heading = 276.1, radius = 6.0},
					{coords = vector3(484.1, -1023.1, 27.5), heading = 302.5, radius = 6.0}
				}
			
			} 
		},

		Helicopters = {
			{
				
				Spawner = vector3(461.1, -981.5, 43.6),
				InsideShop = vector3(477.0, -1106.4, 43.0),
				SpawnPoints = {
					{coords = vector3(449.5, -981.2, 43.6), heading = 92.6, radius = 10.0}
				}
				
			}
		},

		



		BossActions = {
			vector3(-523.01440429688,-169.17723083496,43.222389221191)
		}

	}

}

ConfigGANG1.AuthorizedWeapons = {
	recruit = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 1500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 80}
	},

	officer = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	sergeant = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	lieutenant = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	boss = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	}
}

ConfigGANG1.AuthorizedVehicles = {
	car = {
		ass = {
			{model = 'buffalo2', price = 20000},
			{model = 'sultanrs', price = 20000},
			{model = 'bati2', price = 20000},
			{model = 'guardian', price = 20000}
		},

		recruit = {
			{model = 'buffalo2', price = 20000},
			{model = 'sultanrs', price = 20000},
			{model = 'bati2', price = 20000},
			{model = 'guardian', price = 20000}
		},

		officer = {
			{model = 'buffalo2', price = 20000},
			{model = 'sultanrs', price = 20000},
			{model = 'bati2', price = 20000},
			{model = 'guardian', price = 20000}
		},

		sergeant = {
			{model = 'buffalo2', price = 20000},
			{model = 'sultanrs', price = 20000},
			{model = 'bati2', price = 20000},
			{model = 'guardian', price = 20000}
		},

		lieutenant = {
			{model = 'buffalo2', price = 20000},
			{model = 'sultanrs', price = 20000},
			{model = 'bati2', price = 20000},
			{model = 'guardian', price = 20000}
		},

		boss = {
			{model = 'buffalo2', price = 20000},
			{model = 'sultanrs', price = 20000},
			{model = 'bati2', price = 20000},
			{model = 'guardian', price = 20000}
		}
	},

	helicopter = {

		
		inspector = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},
	
		senior_Inspector = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},
	
		chief_Inspector = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},
	
		superintendent = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},
	
		chief_superintendent = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},
	
		Director = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},
	
		deputy_director_general = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},
	
		director_general = {
		
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		}
	}
}

ConfigGANG1.CustomPeds = {
	shared = {
		{label = 'Sheriff Ped', maleModel = 's_m_y_sheriff_01', femaleModel = 's_f_y_sheriff_01'},
		{label = 'Police Ped', maleModel = 's_m_y_cop_01', femaleModel = 's_f_y_cop_01'}
	},

	recruit = {},

	officer = {},

	sergeant = {},

	lieutenant = {},

	boss = {
		{label = 'SWAT Ped', maleModel = 's_m_y_swat_01', femaleModel = 's_m_y_swat_01'}
	}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements
ConfigGANG1.Uniforms = {
	recruit = {
		male = {
			tshirt_1 = 59,  tshirt_2 = 1,
			torso_1 = 55,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 41,
			pants_1 = 25,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 46,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 36,  tshirt_2 = 1,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = 45,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	officer = {
		male = {
			tshirt_1 = 58,  tshirt_2 = 0,
			torso_1 = 55,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 41,
			pants_1 = 25,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	sergeant = {
		male = {
			tshirt_1 = 58,  tshirt_2 = 0,
			torso_1 = 55,   torso_2 = 0,
			decals_1 = 8,   decals_2 = 1,
			arms = 41,
			pants_1 = 25,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 7,   decals_2 = 1,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	lieutenant = {
		male = {
			tshirt_1 = 58,  tshirt_2 = 0,
			torso_1 = 55,   torso_2 = 0,
			decals_1 = 8,   decals_2 = 2,
			arms = 41,
			pants_1 = 25,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 7,   decals_2 = 2,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	boss = {
		male = {
			tshirt_1 = 58,  tshirt_2 = 0,
			torso_1 = 55,   torso_2 = 0,
			decals_1 = 8,   decals_2 = 3,
			arms = 41,
			pants_1 = 25,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 7,   decals_2 = 3,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	bullet_wear = {
		male = {
			bproof_1 = 11,  bproof_2 = 1
		},
		female = {
			bproof_1 = 13,  bproof_2 = 1
		}
	},

	gilet_wear = {
		male = {
			tshirt_1 = 59,  tshirt_2 = 1
		},
		female = {
			tshirt_1 = 36,  tshirt_2 = 1
		}
	}
}


--TAMASAK

ConfigTAMASAK                            = {}

ConfigTAMASAK.DrawDistance               = 10.0 -- How close do you need to be for the markers to be drawn (in GTA units).
ConfigTAMASAK.MarkerType                 = {Cloakrooms = 20, Armories = 21, BossActions = 22, Vehicles = 36, Helicopters = 34}
ConfigTAMASAK.MarkerSize                 = {x = 1.5, y = 1.5, z = 0.5}
ConfigTAMASAK.MarkerColor                = {r = 50, g = 50, b = 204}

ConfigTAMASAK.EnablePlayerManagement     = true -- Enable if you want society managing.
ConfigTAMASAK.EnableArmoryManagement     = true
ConfigTAMASAK.EnableESXIdentity          = true -- Enable if you're using esx_identity.
ConfigTAMASAK.EnableLicenses             = true -- Enable if you're using esx_license.

ConfigTAMASAK.EnableHandcuffTimer        = true -- Enable handcuff timer? will unrestrain player after the time ends.
ConfigTAMASAK.HandcuffTimer              = 10 * 60000 -- 10 minutes.

ConfigTAMASAK.EnableJobBlip              = false -- Enable blips for cops on duty, requires esx_society.
ConfigTAMASAK.EnableCustomPeds           = false -- Enable custom peds in cloak room? See ConfigTAMASAK.CustomPeds below to customize peds.

ConfigTAMASAK.EnableESXService           = false -- Enable esx service?
ConfigTAMASAK.MaxInService               = -1 -- How much people can be in service at once?

ConfigTAMASAK.Locale                     = 'en'

ConfigTAMASAK.TamasakStations = {

	LSPD = {
		
		

		Blip = {
			Coords  = vector3(-1539.1506347656, 127.71709442139, 56.780136108398),
			Sprite  = 439,
			Display = 4,
			Scale   = 1.2,
			Colour  = 46
		},

		Cloakrooms = {
			vector3(-1531.72, 142.84, 55.67)
		},
		
		Armories = {
			vector3(-1518.1964111328, 114.94153594971, 50.052478790283)
		},

	 
		Vehicles = {
			{
				
				Spawner = vector3(-1550.3732910156, 133.7240447998, 56.781497955322),
				InsideShop = vector3(-1568.25, 99.32, 57.98),
				SpawnPoints = {
					{coords = vector3(-1555.4156494141, 127.719688415531, 56.789184570312), heading = 90.0, radius = 6.0},
					--{coords = vector3(441.0, -1024.2, 28.3), heading = 90.0, radius = 6.0},
					--{coords = vector3(453.5, -1022.2, 28.0), heading = 90.0, radius = 6.0},
					--{coords = vector3(450.9, -1016.5, 28.1), heading = 90.0, radius = 6.0}
				}
				
			},

			{
					
				Spawner = vector3(473.3, -1018.8, 28.0),
				InsideShop = vector3(228.5, -993.5, -99.0),
				SpawnPoints = {
					{coords = vector3(475.9, -1021.6, 28.0), heading = 276.1, radius = 6.0},
					{coords = vector3(484.1, -1023.1, 27.5), heading = 302.5, radius = 6.0}
				}
			
			} 
		},

		Helicopters = {
			{
				
				Spawner = vector3(461.1, -981.5, 43.6),
				InsideShop = vector3(477.0, -1106.4, 43.0),
				SpawnPoints = {
					{coords = vector3(449.5, -981.2, 43.6), heading = 92.6, radius = 10.0}
				}
				
			}
		},

		
		


		BossActions = {
			vector3(-1498.2813720703, 128.97822570801, 55.668060302734)
		}

	}

}

ConfigTAMASAK.AuthorizedWeapons = {
	recruit = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 1500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 80}
	},

	officer = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	sergeant = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	lieutenant = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	boss = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	}
}

ConfigTAMASAK.AuthorizedVehicles = {
	car = {
		ass = {
			{model = 'buffalo2', price = 20000},
			{model = 'sultanrs', price = 20000},
			{model = 'bati2', price = 20000},
			{model = 'guardian', price = 20000}
		},

		recruit = {
			{model = 'buffalo2', price = 20000},
			{model = 'sultanrs', price = 20000},
			{model = 'bati2', price = 20000},
			{model = 'guardian', price = 20000}
		},

		officer = {
			{model = 'buffalo2', price = 20000},
			{model = 'sultanrs', price = 20000},
			{model = 'bati2', price = 20000},
			{model = 'guardian', price = 20000}
		},

		sergeant = {
			{model = 'buffalo2', price = 20000},
			{model = 'sultanrs', price = 20000},
			{model = 'bati2', price = 20000},
			{model = 'guardian', price = 20000}
		},

		lieutenant = {
			{model = 'buffalo2', price = 20000},
			{model = 'sultanrs', price = 20000},
			{model = 'bati2', price = 20000},
			{model = 'guardian', price = 20000}
		},

		boss = {
			{model = 'buffalo2', price = 20000},
			{model = 'sultanrs', price = 20000},
			{model = 'bati2', price = 20000},
			{model = 'guardian', price = 20000}
		}
	},

	helicopter = {

		
		inspector = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},
	
		senior_Inspector = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},
	
		chief_Inspector = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},
	
		superintendent = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},
	
		chief_superintendent = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},
	
		Director = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},
	
		deputy_director_general = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},
	
		director_general = {
		
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		}
	}
}

ConfigTAMASAK.CustomPeds = {
	shared = {
		{label = 'Sheriff Ped', maleModel = 's_m_y_sheriff_01', femaleModel = 's_f_y_sheriff_01'},
		{label = 'Police Ped', maleModel = 's_m_y_cop_01', femaleModel = 's_f_y_cop_01'}
	},

	recruit = {},

	officer = {},

	sergeant = {},

	lieutenant = {},

	boss = {
		{label = 'SWAT Ped', maleModel = 's_m_y_swat_01', femaleModel = 's_m_y_swat_01'}
	}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements
ConfigTAMASAK.Uniforms = {
	recruit = {
		male = {
			tshirt_1 = 59,  tshirt_2 = 1,
			torso_1 = 55,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 41,
			pants_1 = 25,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 46,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 36,  tshirt_2 = 1,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = 45,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	officer = {
		male = {
			tshirt_1 = 58,  tshirt_2 = 0,
			torso_1 = 55,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 41,
			pants_1 = 25,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	sergeant = {
		male = {
			tshirt_1 = 58,  tshirt_2 = 0,
			torso_1 = 55,   torso_2 = 0,
			decals_1 = 8,   decals_2 = 1,
			arms = 41,
			pants_1 = 25,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 7,   decals_2 = 1,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	lieutenant = {
		male = {
			tshirt_1 = 58,  tshirt_2 = 0,
			torso_1 = 55,   torso_2 = 0,
			decals_1 = 8,   decals_2 = 2,
			arms = 41,
			pants_1 = 25,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 7,   decals_2 = 2,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	boss = {
		male = {
			tshirt_1 = 58,  tshirt_2 = 0,
			torso_1 = 55,   torso_2 = 0,
			decals_1 = 8,   decals_2 = 3,
			arms = 41,
			pants_1 = 25,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 7,   decals_2 = 3,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	bullet_wear = {
		male = {
			bproof_1 = 11,  bproof_2 = 1
		},
		female = {
			bproof_1 = 13,  bproof_2 = 1
		}
	},

	gilet_wear = {
		male = {
			tshirt_1 = 59,  tshirt_2 = 1
		},
		female = {
			tshirt_1 = 36,  tshirt_2 = 1
		}
	}
}


---LOAF

-- Translations for the text are at the bottom of this file.

ConfigLOAF = {
    SellPercentage = 75, -- percentage of original price you should get back when selling a house.
    AddHouseBlips = true, -- add all available houses to the map?
    AddBoughtHouses = true, -- add blips for houses bought by other people?
    EnableGarage = true, -- requires my (Loaf) garage script. Costs $10
    Use3DText = true, -- use 3d text instead of the normal top-left corner info box? Used for "press e" etc.
    PoundP = 5000,
    DamageMult = false,
    MultAmount = 5,


    IKEABlip = {
        ['Enabled'] = true,

        ['Sprite'] = 431,
        ['Colour'] = 5,
        ['Scale'] = 1.0
    },
    
    Props = { -- don't mess around with this if you don't know to 110% what you're doing
        ['trevor'] = `shell_trevor`,
        ['nice'] = `shell_v16mid`,
        ['lester'] = `shell_lester`,
        ['mansion'] = `shell_ranch`,
        ['trailer'] = `shell_trailer`,
        ['kinda_nice'] = `shell_v16low`
    },

    Furniture = { 
        ['Categories'] = {
            {'table', 'Tables'},
            {'chair', 'Chairs'},
            {'decorations', 'Decorations'},
            {'electronics', 'Electronics'},
            {'Plants', 'Plants'},
            {'sofa', 'Sofas'},
            {'bed', 'Beds'},
            {'CashGoldJewels', 'Jewelry'},
            {'Drugs', 'Drugs'},
            {'FoodandDrinks','Food & drinks'},
            {'lights', 'Lights'},
            {'kitchen', 'Kitchen'},
            {'accessory', 'Misc'}
        },

        ['chair'] = {
            {'Table chair', 'prop_table_02_chr', 50},
            {'Armchair', 'prop_cs_folding_chair_01', 150},
            {'Rock chair', 'prop_rock_chair_01', 150},
            {'Wheel chair', 'prop_wheelchair_01', 150},
            {'Office chair', 'p_clb_officechair_s', 125},
            {'Office chair 2', 'prop_off_chair_04_s', 150},
            {'Office chair 3', 'prop_cs_office_chair', 150},
            {'Office chair 4', 'prop_off_chair_04', 150},
            {'Office chair 5', 'prop_off_chair_03', 150},
            {'Office chair 6', 'prop_off_chair_01', 150},
            {'Office chair 7', 'prop_off_chair_05', 150},
            {'Office chair 8', 'v_club_officechair', 150},
            {'Office chair 9', 'v_corp_offchair', 150},
            {'Tortur Chair', 'prop_torture_ch_01', 150},
            {'Diner chair', 'p_dinechair_01_s', 150},
            {'Diner chair', 'p_dinechair_01_s', 150},
            {'Sol chair', 'p_soloffchair_s', 150},
            {'Sol chair 2', 'p_soloffchair_s', 150},
            {'Yacht chair', 'prop_sol_chair', 150},
            {'Chair 2', 'prop_chair_02', 150},
            {'Chair 3', 'prop_chair_01b', 150},
            {'Chair 4', 'prop_chair_04a', 150},
            {'Chair 5', 'prop_chair_04b', 150},
            {'Chair 6', 'prop_chair_06', 150},
            {'Chair 7', 'prop_chair_07', 150},
            {'Chair 8', 'prop_chair_09', 150},
            {'Chair 9', 'prop_chateau_chair_01', 150},
            {'Chair 10', 'prop_clown_chair', 150},
            {'Chair 11', 'prop_direct_chair_01', 150},
            {'Chair 12', 'prop_cs_office_chair', 150},
            {'Chair 13', 'prop_gc_chair02', 150},
            {'Chair 14', 'prop_ld_farm_chair01', 150},
            {'Chair 15', 'v_ilev_chair02_ped', 150},
            {'Chair 16', 'v_corp_cd_chair', 150},
            {'Chair 17', 'v_corp_bk_chair3', 150},
            {'Chair 18', 'prop_skid_chair_03', 150},
            {'Chair 19', 'prop_table_01_chr_a', 150},
            {'Chair 20', 'prop_table_01_chr_b', 150},
            {'Chair 21', 'prop_table_02_chr', 150},
            {'Chair 22', 'prop_table_03_chr', 150},
            {'Chair 23', 'prop_table_03b_chr', 150},
            {'Chair 24', 'prop_table_04_chr', 150},
            {'Chair 25', 'prop_table_05_chr', 150},
        },
        ['decorations'] = {
            {'Bootle', 'apa_mp_h_acc_bottle_01', 100},
            {'Candles', 'apa_mp_h_acc_candles_01', 100},
            {'Mirror', 'p_int_jewel_mirror', 100},
            {'Plate', 'apa_mp_h_acc_dec_plate_01', 100},
            {'Vase', 'apa_mp_h_acc_vase_01', 100},
            {'Vase', 'v_res_desktidy', 100},
            {'Flowers', 'apa_mp_h_acc_vase_flowers_01', 100},
            {'Ashtray', 'ex_prop_ashtray_luxe_02', 100},
            {'Newspaper', 'p_cs_newspaper_s', 100},
            {'Pamphlet', 'p_cs_pamphlet_01_s', 100},
            {'Bong', 'prop_bong_01', 100},
            {'Rasberry', 'prop_mr_rasberryclean', 100},
            {'Guitar', 'prop_acc_guitar_01', 100},
            {'Board', 'p_planning_board_04', 100},
            {'Clock 1', 'prop_hotel_clock_01', 100},
            {'Clock 2', 'prop_big_clock_01', 100},
            {'Clock 3', 'prop_egg_clock_01', 100},
            {'Painting', 'v_ilev_ra_doorsafe', 100},
            {'Dart', 'prop_dart_bd_cab_01', 100},
            {'Dart 2', 'prop_dart_bd_01', 100},
            {'Exercise bike', 'prop_exercisebike', 300},            
            {'Laz', 'p_laz_j02_s', 300}
        },
        ['table'] = {
            {'TV Table', 'prop_tv_cabinet_03', 500},
            {'Farm table', 'prop_ld_farm_table02', 300},
            {'Farm table 2', 'prop_ld_farm_table01', 300},
            {'Coffee table', 'prop_fbi3_coffee_table', 300},
            {'Coffee table 2', 'prop_t_coffe_table', 300},
            {'Coffee table 2', 'prop_t_coffe_table_02', 300},
            {'Tri table', 'prop_tri_table_01', 300},
            {'Protest table', 'prop_protest_table_01', 300},
            {'Desk 1', 'v_res_son_desk', 300}, 
            {'Desk 2', 'v_res_mddesk', 300},
            {'Coffe Table', 'v_res_fh_coftableb', 150},
            {'Coffe Table 2', 'v_res_fh_coftablea', 150},
            {'Table 2', 'hei_prop_yah_table_01', 150},
            {'Table 3', 'hei_prop_yah_table_02', 150},
            {'Table 4', 'hei_prop_yah_table_03', 150},
            {'Table 5', 'prop_ld_farm_table01', 150},
            {'Table 6', 'prop_ld_farm_table02', 150},
            {'Table 7', 'prop_chateau_table_01', 150},
            {'Table 8', 'prop_fbi3_coffee_table', 150},
            {'Table 9', 'prop_patio_lounger1_table', 150},
            {'Table 10', 'prop_picnictable_01', 150},
            {'Table 11', 'prop_proxy_chateau_table', 150},
            {'Table 12', 'prop_rub_table_01', 150},
            {'Table 13', 'prop_rub_table_02', 150},
            {'Table 14', 'prop_table_01', 150},
            {'Table 15', 'prop_table_02', 150},
            {'Table 16', 'prop_table_03', 150},
            {'Table 17', 'prop_table_03b', 150},
            {'Table 18', 'prop_table_04', 150},
            {'Table 19', 'prop_table_05', 150},
            {'Table 20', 'prop_table_06', 150},
            {'Table 21', 'prop_table_07', 150},
            {'Table 22', 'prop_table_08', 150},
            {'Table 23', 'prop_table_08_chr', 150},
            {'Table 24', 'prop_ven_market_table1', 150},
            {'Table 25', 'v_ilev_liconftable_sml', 150},
            {'Table 26', 'prop_table_tennis', 150},
            {'Table 27', 'prop_pooltable_02', 150},
            {'Table 28', 'prop_astro_table_02', 150},
            {'Table 29', 'prop_astro_table_01', 150}
        },
        ['electronics'] = {
            {'Flat tv', 'prop_tv_flat_02', 750},
            {'Fat tv', 'prop_tv_06', 350},
            {'Small fat tv', 'prop_tv_02', 250},
            {'Radio', 'prop_portable_hifi_01', 100},
            {'New computer', 'prop_dyn_pc_02', 500},
            {'Old computer', 'prop_pc_01a', 100},
            {'Monitor', 'prop_monitor_01c', 75},
            {'Monitor 2', 'prop_ld_monitor_01', 75},
            {'Monitor 3', 'prop_monitor_03b', 25},
            {'Phone', 'p_amb_phone_01', 75},
            {'Old phone', 'prop_v_m_phone_o1s', 75},
            {'Office Phone', 'prop_office_phone_tnt', 75},
            {'CS Phone', 'prop_cs_phone_01', 75},
            {'Tablet 1', 'prop_cs_tablet_02', 75},
            -- {'Tablet 2', 'prop_cs_tablet_01', 75},
            {'Table mic', 'prop_table_mic_01', 75},
            {'Radio', 'prop_portable_hifi_01', 75},
            {'Laptop', 'p_amb_lap_top_02', 75},
            {'Laptop 2', 'p_cs_laptop_02', 75},
            {'Laptop Closed', 'p_cs_laptop_02_w', 75},
            {'Keypad', 'prop_ld_keypad_01b', 75},
            {'Keypad 2', 'prop_ld_keypad_01', 75},
            {'PC', 'prop_dyn_pc', 75},
            {'PC 2', 'prop_dyn_pc_02', 75},
            {'PC 3', 'prop_pc_01a', 75},
            {'PC 4', 'hei_prop_heist_pc_01', 75},
            {'PC 5', 'prop_pc_02a', 75},
            {'Mouse', 'prop_cs_mouse_01', 75},
            {'Mouse 2', 'prop_mouse_01a', 75},
            {'Mousemat', 'v_res_mousemat', 75},
            {'Keyboard', 'hei_prop_hei_cs_keyboard', 75},
            {'Keyboard 2', 'prop_cs_keyboard_01', 75},
            {'Keyboard 3', 'prop_keyboard_01a', 75},
            {'Bedside clock', 'v_res_fh_bedsideclock', 75}
        },
        ['bed'] = {
            {'Bed', 'v_res_msonbed_s', 450}, 
            {'Bed 2', 'p_lestersbed_s', 150},
            {'Bed 3', 'p_mbbed_s', 150},
            {'Bed 4', 'p_v_res_tt_bed_s', 150},
            {'Bed 5', 'v_res_msonbed_s', 150},
            {'Bed 6', 'v_res_mbbed', 150},
            {'Bed 7', 'v_res_d_bed', 150},
            {'Bed 8', 'v_res_tre_bed1', 150},
            {'Bed 9', 'v_res_tre_bed2', 150},
            {'Bed 10', 'v_res_tt_bed', 150}
        },
        ['sofa'] = {
            {'Sofa Cushion', 'v_ilev_m_sofacushion', 150},
            {'Sofa', 'p_sofa_s', 300},
            {'Leather sofa', 'p_v_med_p_sofa_s', 300},
            {'Used sofa', 'v_tre_sofa_mess_c_s', 150},
            {'Fabric sofa', 'p_res_sofa_l_s', 225},
            {'Couch', 'miss_rub_couch_01', 225},
            {'Sofa', 'prop_t_sofa_02', 300},
            {'Sofa 2', 'prop_t_sofa', 300},
            {'Sofa 3', 'p_lev_sofa_s', 150},
            {'Sofa 4', 'p_res_sofa_l_s', 150},
            {'Sofa 5', 'p_v_med_p_sofa_s', 150},
            {'Sofa 6', 'p_yacht_sofa_01_s', 150},
            {'Sofa 7', 'v_ilev_m_sofa', 150},
            {'Sofa 8', 'v_res_tre_sofa_s', 150},
            {'Sofa 9', 'prop_rub_couch02', 150},
            {'Sofa 10', 'v_res_m_h_sofa_sml', 150},
            {'Sofa 11', 'v_res_mp_stripchair', 150},
            {'Sofa 12', 'v_res_d_armchair', 150},
            {'Sofa 13', 'v_tre_sofa_mess_a_s', 150},
            {'Sofa 14', 'v_tre_sofa_mess_b_s', 150},
            {'Sofa 15', 'v_tre_sofa_mess_c_s', 150},
            {'Sofa 16', 'prop_ld_farm_chair01', 150},
            {'Sofa 17', 'prop_ld_farm_couch01', 150},
            {'Sofa 18', 'prop_ld_farm_couch02', 150}
        },
        ['Plants'] = {
            {'Plant 1', 'p_int_jewel_plant_02', 100},
            {'Plant 2', 'p_int_jewel_plant_01', 100},
            {'Plant 3', 'prop_fbibombplant', 100},
            {'Plant 4', 'prop_fib_plant_01', 100},
            {'Plant 5', 'prop_fib_plant_02', 100},
            {'Plant 6', 'prop_ld_dstplanter_01', 100},
            {'Plant 7', 'prop_ld_planter2b', 100},
            {'Plant 8', 'prop_plant_int_01a', 100},
            {'Plant 9', 'prop_plant_int_01b', 100},
            {'Plant 10', 'prop_plant_int_02a', 100},
            {'Plant 11', 'prop_plant_int_02b', 100},
            {'Plant 12', 'prop_plant_int_03a', 100},
            {'Plant 13', 'prop_plant_int_03c', 100},
            {'Plant 14', 'prop_plant_int_03b', 100},
            {'Plant 15', 'prop_plant_int_04b', 100},
            {'Plant 16', 'prop_plant_int_04a', 100},
            {'Plant 17', 'prop_plant_int_04c', 100},
            {'Plant 13', 'prop_plant_palm_01a', 100},
            {'Plant 14', 'prop_plant_palm_01c', 100},
            {'Plant 15', 'prop_pot_plant_01b', 100},
            {'Plant 16', 'prop_pot_plant_01a', 100},
            {'Plant 17', 'prop_pot_plant_01c', 100},
            {'Plant 18', 'prop_pot_plant_01d', 100},
            {'Plant 19', 'prop_pot_plant_03c', 100},
            {'Plant 20', 'prop_pot_plant_05a', 100}
        },
        ['CashGoldJewels'] = {
            {'Cash Case', 'prop_cash_case_02', 50},
            {'Cash Crate', 'prop_cash_crate_01', 50},
            {'Cash Crat 2', 'hei_prop_cash_crate_half_full', 50},
            {'Cash Note', 'prop_anim_cash_note_b', 50},
            {'Cash Pile', 'prop_anim_cash_pile_01', 50},
            {'Cash trolly', 'prop_cash_trolly', 50},
            {'Cash trolly', 'prop_poly_bag_money', 50},
            {'Gold trolly full', 'prop_gold_trolly_full', 50},
            {'Gold trolly', 'prop_gold_trolly', 50},
            {'Gold bar', 'prop_gold_bar', 50},
            {'Large Gold', 'prop_large_gold', 50},
            {'Large Gold 2', 'p_large_gold_s', 50},
            {'Gold Chest', 'prop_ld_gold_chest', 50},
            {'Petoyte Gold', 'prop_peyote_gold_01', 50},
            {'Jewel 1', 'prop_jewel_03b', 50},
            {'Jewel 2', 'prop_jewel_04b', 50},
            {'Jewel 3', 'prop_jewel_02b', 50},
            {'Jewel 4', 'prop_jewel_pickup_new_01', 50},
            {'Jewel 5', 'prop_jewel_04b', 50},
            {'Jewel 6', 'prop_cs_beer_box', 50}
        },
        ['Drugs'] = {
            {'Drug ', 'prop_weed_pallet', 500},
            {'Drug 2', 'hei_prop_hei_drug_pack_01b', 100},
            {'Drug 3', 'hei_prop_hei_drug_pack_01a', 100},
            {'Drug 4', 'hei_prop_hei_drug_pack_02', 100},
            {'Drug 5', 'hei_prop_heist_drug_tub_01', 100},
            {'Drug 6', 'ng_proc_drug01a002', 100},
            {'Drug 7', 'prop_drug_bottle', 100},
            {'Drug 8', 'hei_prop_hei_drug_case', 100},
            {'Drug 9', 'prop_drug_burner', 100},
            {'Drug 10', 'prop_drug_erlenmeyer', 100},
            {'Drug 11', 'prop_drug_package', 100},
            {'Drug 12', 'prop_drug_package_02', 100},
            {'Drug 13', 'prop_mp_drug_package', 100},
            {'Drug 14', 'prop_mp_drug_pack_blue', 100},
            {'Drug 15', 'prop_mp_drug_pack_red', 100},
            {'Drug 16', 'prop_coke_block_01', 100},
            {'Drug 17', 'prop_coke_block_half_a', 100},
            {'Drug 18', 'p_meth_bag_01_s', 500},
            {'Drug 19', 'prop_meth_bag_01', 100},
            {'Drug 20', 'prop_meth_setup_01', 100}
        },
        ['FoodandDrinks'] = {
            {'Peanut bowl', 'prop_peanut_bowl_01', 50},
            {'Bowl', 'prop_cs_bowl_01', 50},
            {'BS Cup', 'prop_cs_bs_cup', 50},
            {'Coffe', 'p_ing_coffeecup_02', 50},
            {'Fruit Stand 1', 'prop_fruit_stand_03', 50},
            {'Fruit Stand 2', 'prop_fruit_stand_02', 50},
            {'Fruit Stand 3', 'prop_fruit_stand_01', 50},
            {'Fruit Stand 4', 'prop_fruit_stand_03', 50},
            {'Fruit Stand 5', 'prop_fruit_stand_03', 50},
            {'Beer box', 'prop_cs_beer_box', 50},
            {'Beer 2', 'beerrow_world', 50},
            {'Beer 3', 'prop_amb_beer_bottle', 50},
            {'Beer 4', 'prop_beer_blr', 50},
            {'Beer 5', 'prop_beer_logger', 50},
            {'Food', 'ng_proc_food_bag01a', 50},
            {'Food 2', 'prop_food_bs_burg1', 50},
            {'Food 3', 'prop_food_bs_burg3', 50},
            {'Food 4', 'prop_food_bs_chips', 50},
            {'Food 5', 'prop_food_bs_burger2', 50},
            {'Food 6', 'prop_food_bs_coffee', 50},
            {'Food 7', 'prop_food_cups1', 50},
            {'Food 8', 'prop_food_cb_cups01', 50},
            {'Food 9', 'prop_food_cb_cups02', 50},
            {'Food 10', 'prop_food_bs_cups02', 50}
        },
        ['lights'] = {
            {'Light ', 'prop_cd_lamp', 150},
            {'Light 2', 'v_res_desklamp', 150},
            {'Light 3', 'v_corp_cd_desklamp', 150},
            {'Light 4', 'v_res_d_lampa', 150},
            {'Light 5', 'v_res_fh_floorlamp', 150},
            {'Light 6', 'v_res_fa_lamp1on', 150},
            {'Light 7', 'v_res_j_tablelamp1', 150},
            {'Light 8', 'v_res_j_tablelamp2', 150},
            {'Light 9', 'v_res_mplanttongue', 150},
            {'Light 10', 'v_res_m_lampstand', 150},
            {'Light 11', 'v_res_m_lampstand2', 150},
            {'Light 12', 'v_res_mtblelampmod', 150},
            {'Light 13', 'v_res_m_lamptbl', 150},
            {'Light 14', 'v_res_tre_lightfan', 150},
            {'Light 15', 'v_res_tre_talllamp', 150},
            {'Light 16', 'v_ret_fh_walllighton', 150},
            {'Light 17', 'v_ret_gc_lamp', 150},
            {'Light 18', 'v_res_m_lamptbl', 150},
            {'Light 19', 'hei_prop_hei_bnk_lamp_02', 150},
            {'Light 20', 'prop_ld_cont_light_01', 150},
            {'Light 21', 'hei_prop_hei_bnk_lamp_01', 150},
            {'Light 22', 'prop_chall_lamp_02', 150},
            {'Light 23', 'v_ilev_fh_lampa_on', 150},
            {'Light 24', 'prop_construcionlamp_01', 150},
            {'Light 25', 'hei_prop_bank_ornatelamp', 150},
            {'Light 26', 'prop_kino_light_03', 150},
            {'Light 27', 'prop_oldlight_01c', 150},
            {'Light 28', 'prop_recycle_light', 150},
            {'Light 29', 'prop_studio_light_01', 150},
            {'Light 30', 'prop_studio_light_02', 150},
            {'Light 25', 'hei_prop_bank_ornatelamp', 150},
            {'Light 26', 'prop_wall_light_02a', 150},
            {'Light 27', 'prop_wall_light_03a', 150},
            {'Light 28', 'prop_wall_light_04a', 150},
            {'Light 29', 'prop_wall_light_05a', 150},
            {'Light 30', 'prop_wall_light_05c', 150}

          },
        
          ['kitchen'] = {
            {'Coffemachine', 'apa_mp_h_acc_coffeemachine_01', 150},
            {'Scale', 'bkr_prop_coke_scale_01', 150},
            {'Bin', 'hei_heist_kit_bin_01', 150},
            {'Sideboard', 'hei_heist_str_sideboardl_03', 150},
            {'Trolly', 'hei_prop_hei_cash_trolly_03', 150},
            {'Bag', 'hei_prop_hei_paper_bag', 150},
            {'Counter', 'p_new_j_counter_02', 150},
            {'Fruit 1', 'apa_mp_h_acc_fruitbowl_01', 150},
            {'Fruit 2', 'apa_mp_h_acc_fruitbowl_02', 150},
            {'Fruit 3', 'prop_bar_fruit', 150},
            {'Fruit 4', 'prop_bar_lemons', 150},
            {'Fruit 5', 'prop_bar_measrjug', 150},
            {'Sink', 'prop_bar_sink_01', 150},
            {'Cleaver', 'prop_cleaver', 150},
            {'Kitchen stool', 'v_ilev_fh_kitchenstool', 150},
            {'Fridge 1', 'prop_trailr_fridge', 150},
            {'Fridge 2', 'prop_fridge_01', 150},
            {'Fridge 3', 'prop_fridge_03', 150},
            {'Vend 1', 'prop_vend_fridge01', 150},
            {'Vend 2', 'prop_vend_snak_01', 150},
            {'Vend 3', 'prop_vend_coffe_01', 150},
            {'Vend 4', 'prop_vend_soda_01', 150},
            {'Vend 5', 'prop_vend_soda_02', 150},
            {'Vend 6', 'prop_vend_water_01', 150},
            {'Vend 7', 'prop_watercooler', 150}
        },
        ['bathroom'] = {
            {'Towel', 'prop_shower_towel', 150},
            {'Towel 2', 'p_shower_towel_s', 150},
            {'Towel 3', 'v_res_mbtowel', 150},
            {'Towel 4', 'v_res_mbtowelfld', 150},
            {'Shower rack', 'prop_shower_rack_01', 150},
            {'Bath', 'v_res_mbath', 150},
            {'Bathtub', 'apa_mp_h_bathtub_01', 150},
            {'Counter', 'p_new_j_counter_02', 150},
            {'Lotion1', 'prop_beach_lotion_01', 150},
            {'Lotion2', 'prop_beach_lotion_02', 150},
            {'Lotion3', 'prop_beach_lotion_03', 150},
            {'Clippers', 'prop_clippers_01', 150},
            {'Toilet 1', 'prop_toilet_01', 150},
            {'Toilet 2', 'prop_ld_toilet_01', 150},
            {'Soap', 'prop_soap_disp_01', 150},
            {'Sink 1', 'prop_sink_02', 150},
            {'Sink 2', 'prop_sink_03', 150},
            {'Sink 3', 'prop_sink_04', 150},
            {'Sink 4', 'prop_sink_05', 150},
            {'Sink 5', 'prop_sink_06', 150},
            {'Sink 6', 'v_res_mbsink', 150},
            {'Handdry', 'prop_handdry_01', 150},
            {'Handdry 2', 'prop_handdry_02', 150}
        },
        ['Bins'] = {
            {'Bin 1', 'prop_cs_bin_02', 100}, 
            {'Bin 2', 'prop_cs_bin_03', 100}, 
            {'Bin 3', 'prop_fbibombbin', 100}, 
            {'Bin 4', 'prop_rub_binbag_sd_01', 100},
            {'Bin 5', 'prop_rub_binbag_sd_01', 100},
            {'Bin 6', 'prop_bin_04a', 150},
            {'Bin 7', 'prop_bin_07a', 150},
            {'Bin 8', 'prop_bin_06a', 150},
            {'Bin 9', 'prop_bin_10b', 150},
            {'Bin 10', 'prop_bin_11b', 150},
            {'Bin 11', 'prop_bin_11a', 150},
            {'Large bin', 'prop_bin_13a', 150},
            {'Bin bag', 'prop_rub_binbag_sd_01', 100}
        },
        ['Storage'] = {
            {'Locker', 'p_cs_locker_01_s', 300}, 
            {'Locker 2', 'p_cs_locker_02', 300}, 
            {'Locker 3', 'p_cs_locker_01', 300}, 
            {'Lester Crate', 'prop_cs_lester_crate', 150},
            {'Champ Box', 'prop_champ_box_01', 225},
            {'Crate 1', 'prop_lev_crate_01', 225},
            {'Side Unit', 'v_res_fh_sidebrdlngb', 225},
            {'Side Unit 2', 'v_res_fh_sidebrddine', 225},
            {'Side unit', 'v_res_d_sideunit', 225},
            {'Bed table', 'v_res_mbbedtable', 225},
            {'TV stand', 'v_res_j_tvstand', 225},
            {'Dresser', 'v_res_mbdresser', 225},
            {'Bottoman', 'v_res_mbottoman', 225},
            {'Console', 'v_res_mconsolemod', 225},
            {'Cupboard', 'v_res_mcupboard', 225},
            {'Chest', 'v_res_mdchest', 225},
            {'Cabinet 3', 'v_res_msoncabinet', 225},
            {'Cabinet 4', 'prop_cabinet_02b', 225},
            {'Cabinet 5', 'prop_cabinet_01b', 225},
            {'Armoire', 'v_res_m_armoire', 225},
            {'Sidetable', 'v_res_m_sidetable', 225},
            {'Bedsidetable', 'v_res_tre_bedsidetable', 225},
            {'Bookshelf', 'v_res_tre_smallbookshelf', 225},
            {'Storage box', 'v_res_tre_storagebox', 225},
            {'Storage unit', 'v_res_tre_storageunit', 225},
            {'Sidetable', 'v_res_m_sidetable', 225},
            {'Woodtable', 'v_res_tre_wdunitscuz', 225},
            {'Devin Box', 'prop_devin_box_closed', 225},
            {'Crate 3', 'prop_mil_crate_01', 225},
            {'Crate 4', 'prop_mil_crate_02', 225},
            {'Safe 1', 'prop_ld_int_safe_01', 225},
            {'Safe 2', 'p_v_43_safe_s', 225},
            {'Safe 3', 'prop_ld_int_safe_01', 225},
            {'Woodtable', 'prop_mil_crate_02', 225},
            {'Dressing table', 'v_res_d_dressingtable', 225},
            {'Cabinet', 'prop_fbibombfile', 225},
            {'Cabinet 2', 'v_res_cabinet', 225},
            {'Weapon Box', 'p_secret_weapon_02', 225},
            {'Gun Case', 'prop_gun_case_02', 225},
            {'Coffin', 'prop_coffin_02b', 225}
        },
        ['accessory'] = {
            {'Watch', 'p_watch_02_s', 75},
            {'Watch 2', 'p_watch_01_s', 75},
            {'Cigar pack', 'p_cigar_pack_02_s', 75},
            {'Cigar pack 2', 'p_fag_packet_01_s', 75},
            {'Wallet', 'prop_ld_wallet_01_s', 75},
            {'Handbag', 'prop_ld_handbag_s', 75},
            {'Bag', 'prop_m_pack_int_01', 75},
            {'Bag 2', 'prop_cs_heist_bag_02', 75},
            {'Nigel Bag', 'prop_nigel_bag_pickup', 75},
            {'Suitcase', 'prop_ld_suitcase_01', 75}
        },
    },

    Furnituring = { -- change position of where you buy furniture here.
        ['enter'] = vector3(63.95, -1728.98, 28.62),
        ['teleport'] = vector3(45.34, -1771.77, 29.4),
    },

    Offsets = { -- don't mess around with this if you don't know to 110% what you're doing. Seriously! You will screw something up if you change something here
        ['trevor'] = {['door'] = vector3(0.17, -3.51, -1.39), ['storage'] = vector3(0.7475586, 1.476196, -1.398027), ['spawn_furniture'] = vector3(1.046143, 0.06665039, -1.398043)},
        ['lester'] = {['door'] = vector3(-1.58, -5.84, -1.36), ['storage'] = vector3(-0.19, 2.23, -1.36), ['spawn_furniture'] = vector3(3.002892, 0.9969482, -1.359673)},
        ['mansion'] = {['door'] = vector3(-0.6, -5.39, -2.41), ['storage'] = vector3(1.17, 17.20, -2.41), ['spawn_furniture'] = vector3(7.177441, 0.05088806, -2.416786)},
        ['trailer'] = {['door'] = vector3(-1.35, -1.80, -1.47), ['storage'] = vector3(-5.04, -1.28, -1.469), ['spawn_furniture'] = vector3(1.285862, 0.1700745, -1.462135)},
        ['kinda_nice'] = {['door'] = vector3(4.645, -6.389, -2.64418), ['storage'] = vector3(-2.944827, 0.5492249, -0.6442719), ['spawn_furniture'] = vector3(-0.4546165, 2.853912, -0.6442719)},
        ['nice'] = {['door'] = vector3(1.287569, -13.87549, -1.482468), ['storage'] = vector3(-4.280577, -4.621674, -1.476418), ['spawn_furniture'] = vector3(-3.95883, 1.823792, -1.475471)}
    },
    Houses = { -- ALWAYS add a new house at the bottom of this list. Adding it at the top will just ruin the housing system! If you don't know what you're doing, DON'T DO ANYTHING!
        -- {['prop'] = 'what house prop to use? from the "Props" table above', ['door'] = vector3(x, y, z) - the entrance of the house, ['price'] = 250 000 - the price of the house},
        {['prop'] = 'trevor', ['door'] = vector3(-1112.25, -1578.4, 7.7), ['price'] = 250000},
        {['prop'] = 'trevor', ['door'] = vector3(-1114.34, -1579.47, 7.7), ['price'] = 250000},
        {['prop'] = 'trevor', ['door'] = vector3(-1114.95, -1577.57, 3.56), ['price'] = 250000},
        {['prop'] = 'trevor', ['door'] = vector3(373.9276, 427.8789, 144.7342), ['price'] = 350000},

        {['prop'] = 'nice', ['door'] = vector3(346.4424, 440.626, 146.783), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(331.4054, 465.6823, 150.2642), ['price'] = 450000},
        {['prop'] = 'mansion', ['door'] = vector3(316.0714, 501.4787, 152.2298), ['price'] = 750000},
        {['prop'] = 'mansion', ['door'] = vector3(325.3428, 537.4042, 152.9206), ['price'] = 750000},
        {['prop'] = 'nice', ['door'] = vector3(223.6483, 513.9971, 139.8171), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(119.2289, 494.3233, 146.3929), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(80.12486, 485.8678, 147.2517), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(57.87461, 450.0858, 146.0815), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(42.98039, 468.6544, 147.1459), ['price'] = 450000},
        {['prop'] = 'mansion', ['door'] = vector3(-7.608167, 468.3959, 144.9208), ['price'] = 750000},
        {['prop'] = 'nice', ['door'] = vector3(-66.48237, 490.8036, 143.7423), ['price'] = 450000},
        {['prop'] = 'mansion', ['door'] = vector3(-109.8572, 502.6192, 142.3531), ['price'] = 750000},
        {['prop'] = 'nice', ['door'] = vector3(-174.7194, 502.598, 136.4706), ['price'] = 450000},
        {['prop'] = 'mansion', ['door'] = vector3(8.656919, 539.8256, 175.0774), ['price'] = 750000},
        {['prop'] = 'nice', ['door'] = vector3(84.8648, 561.972, 181.8175), ['price'] = 450000},
        {['prop'] = 'lester', ['door'] = vector3(119.0849, 564.5529, 183.0037), ['price'] = 150000},
        {['prop'] = 'nice', ['door'] = vector3(215.6454, 620.1937, 186.6673), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(231.9564, 672.4473, 188.9955), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-230.5478, 488.4593, 127.8175), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-311.922, 474.8206, 110.8724), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-166.7201, 424.663, 110.8558), ['price'] = 450000},
        {['prop'] = 'mansion', ['door'] = vector3(-297.8921, 380.3153, 111.1453), ['price'] = 750000},
        {['prop'] = 'lester', ['door'] = vector3(-328.2933, 369.9056, 109.056), ['price'] = 150000},
        {['prop'] = 'nice', ['door'] = vector3(-371.7889, 344.115, 108.9927), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-409.4172, 341.6884, 107.9574), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-349.2375, 514.6479, 119.6967), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-386.6804, 504.5744, 119.4615), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-406.4875, 567.5134, 123.6529), ['price'] = 450000},
        {['prop'] = 'mansion', ['door'] = vector3(-459.1129, 537.521, 120.5068), ['price'] = 750000},
        {['prop'] = 'nice', ['door'] = vector3(-500.5503, 552.2289, 119.6605), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-520.2657, 594.2166, 119.8867), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-475.1374, 585.8268, 127.7334), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-559.4098, 664.3816, 144.5066), ['price'] = 450000},
        {['prop'] = 'mansion', ['door'] = vector3(-605.9417, 672.8667, 150.6477), ['price'] = 750000},
        {['prop'] = 'nice', ['door'] = vector3(-579.7289, 733.1073, 183.2603), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-655.0796, 803.4769, 198.0419), ['price'] = 450000},
        {['prop'] = 'lester', ['door'] = vector3(-746.9131, 808.4435, 214.0801), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(-597.1287, 851.8281, 210.4842), ['price'] = 150000},
        {['prop'] = 'nice', ['door'] = vector3(-494.424, 795.8174, 183.3934), ['price'] = 450000},
        {['prop'] = 'mansion', ['door'] = vector3(-495.4582, 738.9638, 162.0807), ['price'] = 750000},
        {['prop'] = 'nice', ['door'] = vector3(-533.05, 709.0921, 152.1307), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-686.1759, 596.119, 142.692), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-732.7767, 594.0862, 141.1908), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-752.8133, 620.9746, 141.5565), ['price'] = 450000},
        {['prop'] = 'mansion', ['door'] = vector3(-699.111, 706.7751, 156.9963), ['price'] = 750000},
        {['prop'] = 'nice', ['door'] = vector3(-476.8588, 648.337, 143.4366), ['price'] = 450000},
        {['prop'] = 'mansion', ['door'] = vector3(-400.0984, 665.4254, 162.8802), ['price'] = 750000},
        {['prop'] = 'nice', ['door'] = vector3(-353.2795, 667.8525, 168.119), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-299.8464, 635.0609, 174.7317), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-293.5298, 601.4299, 180.6255), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-232.6113, 588.7607, 189.5862), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-189.1341, 617.611, 198.7125), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-185.3076, 591.8223, 196.871), ['price'] = 450000},
        {['prop'] = 'mansion', ['door'] = vector3(-126.8265, 588.7379, 203.5668), ['price'] = 750000},
        {['prop'] = 'nice', ['door'] = vector3(-527.0712, 517.5832, 111.9912), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-580.6823, 492.388, 107.9512), ['price'] = 450000},
        {['prop'] = 'mansion', ['door'] = vector3(-640.7534, 519.7142, 108.7378), ['price'] = 750000},
        {['prop'] = 'mansion', ['door'] = vector3(-667.3151, 471.9706, 113.1885), ['price'] = 750000},
        {['prop'] = 'nice', ['door'] = vector3(-678.8621, 511.7292, 112.576), ['price'] = 450000},
        {['prop'] = 'mansion', ['door'] = vector3(-718.1337, 449.26, 105.9591), ['price'] = 750000},
        {['prop'] = 'nice', ['door'] = vector3(-762.3024, 431.528, 99.22505), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-784.195, 459.1265, 99.22904), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-824.7245, 422.0788, 91.17419), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-843.2042, 466.747, 86.64773), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-848.9617, 508.8513, 89.86675), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-883.8552, 518.0173, 91.49284), ['price'] = 450000},
        {['prop'] = 'mansion', ['door'] = vector3(-905.2466, 587.4352, 100.0409), ['price'] = 750000},
        {['prop'] = 'nice', ['door'] = vector3(-924.6613, 561.777, 98.99629), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-947.9395, 568.2031, 100.5271), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-974.3864, 582.1178, 101.9781), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-1022.67, 587.3645, 102.2835), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-1107.262, 593.9845, 103.504), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-1125.425, 548.6654, 101.6192), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-1146.434, 545.8893, 100.9537), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-1193.073, 563.7615, 99.38944), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-970.9653, 456.0507, 78.85919), ['price'] = 450000},
        {['prop'] = 'mansion', ['door'] = vector3(-967.3018, 510.33, 81.11642), ['price'] = 750000},
        {['prop'] = 'nice', ['door'] = vector3(-987.416, 487.6514, 81.31525), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-1052.021, 432.3936, 76.12247), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-1094.184, 427.4131, 74.93001), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-1122.763, 485.6832, 81.21085), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-1174.953, 440.3156, 85.89944), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-1215.703, 458.4677, 90.90369), ['price'] = 450000},
        {['prop'] = 'lester', ['door'] = vector3(-1294.423, 454.8558, 96.52876), ['price'] = 150000},
        {['prop'] = 'nice', ['door'] = vector3(-1308.194, 449.2641, 100.0198), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-1413.602, 462.2877, 108.2586), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-1404.859, 561.2165, 124.4563), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-1346.742, 560.8566, 129.5815), ['price'] = 450000},
        {['prop'] = 'lester', ['door'] = vector3(-1366.825, 611.1692, 132.9559), ['price'] = 150000},
        {['prop'] = 'nice', ['door'] = vector3(-1337.756, 606.1082, 133.4298), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-1291.722, 650.0664, 140.5513), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-1248.572, 643.0165, 141.7478), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-1241.251, 674.0633, 141.8635), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-1219.116, 665.676, 143.5833), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-1197.68, 693.6866, 146.4389), ['price'] = 450000},
        {['prop'] = 'lester', ['door'] = vector3(-1165.65, 727.1097, 154.6567), ['price'] = 150000},
        {['prop'] = 'nice', ['door'] = vector3(-1130.026, 784.1542, 162.937), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-1100.424, 797.4186, 166.3083), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-1056.185, 761.7527, 166.3686), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-999.089, 816.4957, 172.0972), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-962.6514, 813.8961, 176.6157), ['price'] = 450000},
        {['prop'] = 'lester', ['door'] = vector3(-912.3673, 777.6082, 186.0594), ['price'] = 150000},
        {['prop'] = 'nice', ['door'] = vector3(-867.3571, 785.2908, 190.9838), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-824.0525, 806.0515, 201.8325), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-1065.278, 727.3835, 164.5246), ['price'] = 450000},
        {['prop'] = 'lester', ['door'] = vector3(-1019.855, 719.1128, 163.0461), ['price'] = 150000},
        {['prop'] = 'nice', ['door'] = vector3(-931.441, 691.4453, 152.5167), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-908.8556, 693.8784, 150.4861), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-885.5114, 699.3257, 150.3199), ['price'] = 450000},
        {['prop'] = 'lester', ['door'] = vector3(-853.5562, 696.3616, 147.8309), ['price'] = 150000},
        {['prop'] = 'nice', ['door'] = vector3(-819.3509, 696.5077, 147.1542), ['price'] = 450000},
        {['prop'] = 'nice', ['door'] = vector3(-765.3711, 650.6353, 144.7481), ['price'] = 450000},

        {['prop'] = 'trailer', ['door'] = vector3(1777.183, 3737.91, 33.70544), ['price'] = 75000},
        {['prop'] = 'trailer', ['door'] = vector3(1748.654, 3783.682, 33.88487), ['price'] = 75000},
        {['prop'] = 'trailer', ['door'] = vector3(1639.651, 3731.574, 34.1171), ['price'] = 75000},
        {['prop'] = 'trailer', ['door'] = vector3(1642.62, 3727.397, 34.1171), ['price'] = 75000},
        {['prop'] = 'trailer', ['door'] = vector3(1777.183, 3737.91, 33.70544), ['price'] = 75000},
        {['prop'] = 'trailer', ['door'] = vector3(1748.654, 3783.682, 33.88487), ['price'] = 75000},
        {['prop'] = 'trailer', ['door'] = vector3(1639.651, 3731.574, 34.1171), ['price'] = 75000},
        {['prop'] = 'trailer', ['door'] = vector3(1642.62, 3727.397, 34.1171), ['price'] = 75000},
        {['prop'] = 'trailer', ['door'] = vector3(1691.527, 3866.063, 33.95724), ['price'] = 75000},
        {['prop'] = 'trailer', ['door'] = vector3(1700.339, 3867.13, 33.94835), ['price'] = 75000},
        {['prop'] = 'trailer', ['door'] = vector3(1733.617, 3895.49, 34.60904), ['price'] = 75000},
        {['prop'] = 'trailer', ['door'] = vector3(1786.595, 3913.041, 33.96126), ['price'] = 75000},
        {['prop'] = 'lester', ['door'] = vector3(1803.442, 3913.945, 36.10695), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(1809.081, 3907.696, 32.79611), ['price'] = 150000},
        {['prop'] = 'trailer', ['door'] = vector3(1838.584, 3907.396, 32.38101), ['price'] = 75000},
        {['prop'] = 'trailer', ['door'] = vector3(1841.911, 3928.622, 32.77209), ['price'] = 75000},
        {['prop'] = 'lester', ['door'] = vector3(1880.288, 3920.646, 32.25876), ['price'] = 150000},
        {['prop'] = 'trailer', ['door'] = vector3(1895.438, 3873.758, 31.80445), ['price'] = 75000},
        {['prop'] = 'trailer', ['door'] = vector3(1888.475, 3892.893, 32.22338), ['price'] = 75000},
        {['prop'] = 'lester', ['door'] = vector3(1943.682, 3804.373, 31.08716), ['price'] = 150000},
    
        {['prop'] = 'lester', ['door'] = vector3(-374.5138, 6190.958, 30.77954), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(-356.8976, 6207.454, 30.89236), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(-347.4774, 6225.401, 30.93764), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(-360.1222, 6260.694, 30.95253), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(-407.2397, 6314.188, 27.99109), ['price'] = 150000},
        {['prop'] = 'trevor', ['door'] = vector3(-359.7261, 6334.635, 28.90011), ['price'] = 350000},
        {['prop'] = 'lester', ['door'] = vector3(-332.5201, 6302.319, 32.1277), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(-302.2421, 6326.917, 31.93612), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(-280.5109, 6350.701, 31.64801), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(-247.7367, 6370.147, 30.90242), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(-227.1403, 6377.43, 30.80915), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(-272.4501, 6400.943, 30.45621), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(-246.1277, 6413.948, 30.50865), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(-213.8456, 6396.29, 32.13464), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(-188.9336, 6409.466, 31.34684), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(-215.0479, 6444.324, 30.36316), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(-15.28663, 6557.606, 32.29038), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(4.47418, 6568.086, 32.12141), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(30.94101, 6596.576, 31.85995), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(-9.353081, 6654.244, 30.44062), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(-41.70464, 6637.401, 30.13669), ['price'] = 150000},

        {['prop'] = 'lester', ['door'] = vector3(-34.11276, -1846.874, 25.24352), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(-20.60476, -1858.613, 24.45817), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(21.12752, -1844.65, 23.6517), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(-5.167674, -1871.824, 23.20047), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(4.920843, -1884.344, 22.74725), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(46.00618, -1864.281, 22.3283), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(23.06887, -1896.687, 22.05284), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(54.56005, -1873.202, 21.87974), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(38.99373, -1911.641, 21.0035), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(56.53649, -1922.598, 20.96063), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(100.8559, -1912.477, 20.45295), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(72.05096, -1938.944, 20.41857), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(76.55006, -1948.382, 20.22416), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(85.69459, -1959.397, 20.17106), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(114.5377, -1961.073, 20.36114), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(126.5084, -1929.905, 20.43241), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(104.0809, -1885.348, 23.36878), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(130.7885, -1853.333, 24.32527), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(150.0463, -1864.904, 23.63023), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(127.7576, -1897.176, 22.71498), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(148.6717, -1904.125, 22.54188), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(171.315, -1871.397, 23.45023), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(192.4514, -1883.452, 24.15228), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(179.0855, -1924.264, 20.42102), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(165.5446, -1945.026, 19.27414), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(148.878, -1960.527, 18.54301), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(143.8638, -1968.961, 17.90508), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(236.5701, -2045.956, 17.42999), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(256.6853, -2023.399, 18.38439), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(279.5564, -1993.748, 19.89194), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(291.3571, -1980.286, 20.64545), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(295.8619, -1971.991, 21.81774), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(312.0699, -1956.285, 23.66682), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(324.4214, -1937.933, 24.06393), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(319.8839, -1854.207, 26.56307), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(329.2549, -1845.749, 26.80143), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(339.087, -1829.264, 27.38431), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(348.7708, -1820.528, 27.94409), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(440.2501, -1829.995, 27.41187), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(427.45, -1841.814, 27.50076), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(412.5543, -1856.125, 26.37176), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(399.5801, -1864.591, 25.76936), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(385.0557, -1881.49, 25.0861), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(495.3709, -1823.458, 27.91969), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(512.5225, -1790.433, 27.9695), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(472.1762, -1775.283, 28.11979), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(479.3728, -1735.732, 28.20037), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(489.6817, -1713.973, 28.72012), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(500.4488, -1697.029, 28.82996), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(405.3066, -1751.105, 28.76036), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(419.1456, -1735.932, 28.65644), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(431.0881, -1725.809, 28.65146), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(443.4124, -1707.244, 28.75729), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(332.9239, -1741.041, 28.78052), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(320.8559, -1760.215, 28.68788), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(304.5139, -1775.368, 28.20438), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(300.0052, -1784.345, 27.48622), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(288.7145, -1792.512, 27.16629), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(198.1999, -1725.602, 28.71232), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(216.5622, -1717.307, 28.72634), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(249.6055, -1730.614, 28.72248), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(223.0704, -1702.961, 28.74216), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(257.2826, -1723.159, 28.70379), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(269.3036, -1712.88, 28.7173), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(252.8022, -1670.621, 28.71316), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(240.7752, -1687.924, 28.73524), ['price'] = 150000},

        {['prop'] = 'trevor', ['door'] = vector3(1060.572, -378.3963, 67.28117), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(1029.075, -408.5787, 65.17527), ['price'] = 350000},
        {['prop'] = 'nice', ['door'] = vector3(1044.268, -449.1226, 65.3032), ['price'] = 400000},
        {['prop'] = 'trevor', ['door'] = vector3(1010.519, -423.3441, 64.39827), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(1014.429, -469.0127, 63.55713), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(987.8522, -433.5852, 62.94143), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(967.1243, -451.5814, 61.8442), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(970.1669, -502.1628, 61.19075), ['price'] = 350000},
        {['prop'] = 'nice', ['door'] = vector3(943.9504, -463.3438, 60.44574), ['price'] = 400000},
        {['prop'] = 'trevor', ['door'] = vector3(945.9931, -518.9095, 59.66811), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(921.9142, -478.1666, 60.13361), ['price'] = 350000},
        {['prop'] = 'nice', ['door'] = vector3(906.4796, -490.0975, 58.48627), ['price'] = 400000},
        {['prop'] = 'lester', ['door'] = vector3(878.5616, -498.1047, 57.14323), ['price'] = 150000},
        {['prop'] = 'trevor', ['door'] = vector3(862.4706, -509.7612, 56.37899), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(850.8226, -532.6475, 56.97535), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(893.1567, -540.6183, 57.5565), ['price'] = 350000},
        {['prop'] = 'nice', ['door'] = vector3(844.0634, -563.1956, 56.88387), ['price'] = 400000},
        {['prop'] = 'trevor', ['door'] = vector3(861.7772, -583.1914, 57.20606), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(886.8757, -608.0862, 57.49291), ['price'] = 350000},
        {['prop'] = 'nice', ['door'] = vector3(903.2582, -615.666, 57.50368), ['price'] = 400000},
        {['prop'] = 'trevor', ['door'] = vector3(928.9735, -639.6768, 57.28987), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(943.517, -653.4185, 57.47094), ['price'] = 350000},
        {['prop'] = 'nice', ['door'] = vector3(960.4077, -669.749, 57.49975), ['price'] = 400000},
        {['prop'] = 'trevor', ['door'] = vector3(970.8856, -701.3883, 57.53193), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(979.3055, -716.3039, 57.26874), ['price'] = 350000},
        {['prop'] = 'lester', ['door'] = vector3(997.1113, -729.2736, 56.86407), ['price'] = 150000},
        {['prop'] = 'trevor', ['door'] = vector3(1090.007, -484.2412, 64.71036), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(1098.587, -464.7038, 66.36903), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(1099.411, -438.3408, 66.83294), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(1100.837, -411.4033, 66.60183), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(1046.235, -497.9067, 63.12947), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(1051.85, -470.5256, 62.94894), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(1056.177, -448.8858, 65.30746), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(964.1451, -596.0469, 58.95258), ['price'] = 350000},
        {['prop'] = 'lester', ['door'] = vector3(976.3569, -579.2255, 58.68561), ['price'] = 150000},
        {['prop'] = 'trevor', ['door'] = vector3(1009.913, -572.3914, 59.64314), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(1229.286, -725.4603, 59.84467), ['price'] = 350000},
        {['prop'] = 'lester', ['door'] = vector3(1222.598, -697.0645, 59.85625), ['price'] = 150000},
        {['prop'] = 'trevor', ['door'] = vector3(1221.362, -669.0397, 62.54292), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(1206.818, -620.2753, 65.48862), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(1200.939, -575.8315, 68.18923), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(1241.924, -566.2299, 68.70738), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(1240.51, -601.5778, 68.8327), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(1251.304, -621.6561, 68.46317), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(1265.587, -648.3523, 66.97227), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(1270.994, -683.5013, 65.08128), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(1265.157, -703.1201, 63.61639), ['price'] = 350000},
        {['prop'] = 'lester', ['door'] = vector3(1251.326, -515.734, 68.39915), ['price'] = 150000},
        {['prop'] = 'trevor', ['door'] = vector3(1251.593, -494.1618, 68.95689), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(1260.582, -479.6108, 69.23888), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(1266.292, -457.9033, 69.5667), ['price'] = 350000},
        {['prop'] = 'trevor', ['door'] = vector3(1263.196, -429.3719, 68.85603), ['price'] = 350000},
        {['prop'] = 'nice', ['door'] = vector3(1301.038, -574.0164, 70.78177), ['price'] = 400000},
        {['prop'] = 'nice', ['door'] = vector3(1302.897, -527.9202, 70.51077), ['price'] = 400000},
        {['prop'] = 'nice', ['door'] = vector3(1323.519, -582.8726, 72.29634), ['price'] = 400000},
        {['prop'] = 'nice', ['door'] = vector3(1348.259, -547.1376, 72.94155), ['price'] = 400000},
        {['prop'] = 'nice', ['door'] = vector3(1341.787, -597.4872, 73.75066), ['price'] = 400000},
        {['prop'] = 'nice', ['door'] = vector3(1367.316, -605.9421, 73.76093), ['price'] = 400000},
        {['prop'] = 'nice', ['door'] = vector3(1385.772, -593.0621, 73.53544), ['price'] = 400000},
        {['prop'] = 'nice', ['door'] = vector3(1388.749, -569.7012, 73.54611), ['price'] = 400000},
        {['prop'] = 'nice', ['door'] = vector3(1372.821, -555.699, 73.73566), ['price'] = 400000},
        {['prop'] = 'nice', ['door'] = vector3(1328.18, -535.956, 71.49114), ['price'] = 400000},

        {['prop'] = 'kinda_nice', ['door'] = vector3(1203.475, -1671.016, 41.76279), ['price'] = 125000},
        {['prop'] = 'kinda_nice', ['door'] = vector3(1220.285, -1658.955, 47.68088), ['price'] = 125000},
        {['prop'] = 'kinda_nice', ['door'] = vector3(1252.806, -1638.585, 52.17659), ['price'] = 125000},
        {['prop'] = 'kinda_nice', ['door'] = vector3(1276.395, -1628.864, 53.82737), ['price'] = 125000},
        {['prop'] = 'lester', ['door'] = vector3(1297.356, -1618.012, 53.63013), ['price'] = 150000},
        {['prop'] = 'kinda_nice', ['door'] = vector3(1336.964, -1579.076, 53.52741), ['price'] = 125000},
        {['prop'] = 'lester', ['door'] = vector3(1437.167, -1492.462, 62.68135), ['price'] = 150000},
        {['prop'] = 'trailer', ['door'] = vector3(1404.583, -1496.261, 59.01226), ['price'] = 75000},
        {['prop'] = 'trailer', ['door'] = vector3(1411.39, -1490.814, 59.70768), ['price'] = 75000},
        {['prop'] = 'lester', ['door'] = vector3(1390.94, -1508.088, 57.48578), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(1381.906, -1544.797, 56.15735), ['price'] = 150000},
        {['prop'] = 'kinda_nice', ['door'] = vector3(1338.288, -1524.477, 53.65514), ['price'] = 125000},
        {['prop'] = 'kinda_nice', ['door'] = vector3(1315.856, -1526.364, 50.85357), ['price'] = 125000},
        {['prop'] = 'kinda_nice', ['door'] = vector3(1327.479, -1552.902, 53.10154), ['price'] = 125000},
        {['prop'] = 'lester', ['door'] = vector3(1286.645, -1604.191, 53.87476), ['price'] = 150000},
        {['prop'] = 'kinda_nice', ['door'] = vector3(1230.729, -1590.911, 52.8248), ['price'] = 125000},
        {['prop'] = 'lester', ['door'] = vector3(1261.346, -1616.602, 53.79375), ['price'] = 150000},
        {['prop'] = 'kinda_nice', ['door'] = vector3(1245.144, -1626.563, 52.33191), ['price'] = 125000},
        {['prop'] = 'kinda_nice', ['door'] = vector3(1210.683, -1607.112, 49.58152), ['price'] = 125000},
        {['prop'] = 'kinda_nice', ['door'] = vector3(1214.294, -1644.032, 47.69498), ['price'] = 125000},
        {['prop'] = 'kinda_nice', ['door'] = vector3(1193.242, -1622.396, 44.27139), ['price'] = 125000},
        {['prop'] = 'lester', ['door'] = vector3(1193.292, -1656.073, 42.07607), ['price'] = 150000},
        {['prop'] = 'kinda_nice', ['door'] = vector3(1258.863, -1761.501, 48.71436), ['price'] = 125000},
        {['prop'] = 'kinda_nice', ['door'] = vector3(1250.818, -1734.793, 51.08211), ['price'] = 125000},
        {['prop'] = 'lester', ['door'] = vector3(1294.976, -1739.768, 53.32201), ['price'] = 150000},
        {['prop'] = 'kinda_nice', ['door'] = vector3(1289.491, -1711.033, 54.54448), ['price'] = 125000},
        {['prop'] = 'lester', ['door'] = vector3(1314.767, -1732.934, 53.75004), ['price'] = 150000},
        {['prop'] = 'lester', ['door'] = vector3(1316.886, -1698.854, 57.27156), ['price'] = 150000},
        {['prop'] = 'kinda_nice', ['door'] = vector3(1355.066, -1690.527, 59.54117), ['price'] = 125000},
        {['prop'] = 'lester', ['door'] = vector3(1365.325, -1721.377, 64.68388), ['price'] = 150000},

    },
    HouseSpawns = { -- every possible position for a shell to be spawned. default is 66 different spawns, meaning 66 people can be inside their house at the same time! You shouldn't mess around with this tbh.
        {['taken'] = false, ['coords'] = vector3(1020.0, 2000.0, -100.0)}, -- spawn #1
        {['taken'] = false, ['coords'] = vector3(1080.0, 2000.0, -100.0)}, -- spawn #2
        {['taken'] = false, ['coords'] = vector3(1140.0, 2000.0, -100.0)}, -- spawn #3
        {['taken'] = false, ['coords'] = vector3(1200.0, 2000.0, -100.0)}, -- spawn #4
        {['taken'] = false, ['coords'] = vector3(1260.0, 2000.0, -100.0)}, -- spawn #5
        {['taken'] = false, ['coords'] = vector3(1320.0, 2000.0, -100.0)}, -- spawn #6
        {['taken'] = false, ['coords'] = vector3(1380.0, 2000.0, -100.0)}, -- spawn #7
        {['taken'] = false, ['coords'] = vector3(1440.0, 2000.0, -100.0)}, -- spawn #8
        {['taken'] = false, ['coords'] = vector3(1500.0, 2000.0, -100.0)}, -- spawn #9
        {['taken'] = false, ['coords'] = vector3(1560.0, 2000.0, -100.0)}, -- spawn #10
        {['taken'] = false, ['coords'] = vector3(1620.0, 2000.0, -100.0)}, -- spawn #11
        {['taken'] = false, ['coords'] = vector3(1680.0, 2000.0, -100.0)}, -- spawn #12
        {['taken'] = false, ['coords'] = vector3(1740.0, 2000.0, -100.0)}, -- spawn #13
        {['taken'] = false, ['coords'] = vector3(1800.0, 2000.0, -100.0)}, -- spawn #14
        {['taken'] = false, ['coords'] = vector3(1860.0, 2000.0, -100.0)}, -- spawn #15
        {['taken'] = false, ['coords'] = vector3(1920.0, 2000.0, -100.0)}, -- spawn #16
        {['taken'] = false, ['coords'] = vector3(1980.0, 2000.0, -100.0)}, -- spawn #17
        {['taken'] = false, ['coords'] = vector3(2040.0, 2000.0, -100.0)}, -- spawn #18
        {['taken'] = false, ['coords'] = vector3(2100.0, 2000.0, -100.0)}, -- spawn #19
        {['taken'] = false, ['coords'] = vector3(2160.0, 2000.0, -100.0)}, -- spawn #20
        {['taken'] = false, ['coords'] = vector3(2220.0, 2000.0, -100.0)}, -- spawn #21
        {['taken'] = false, ['coords'] = vector3(2280.0, 2000.0, -100.0)}, -- spawn #22
        {['taken'] = false, ['coords'] = vector3(2340.0, 2000.0, -100.0)}, -- spawn #23
        {['taken'] = false, ['coords'] = vector3(2400.0, 2000.0, -100.0)}, -- spawn #24
        {['taken'] = false, ['coords'] = vector3(2460.0, 2000.0, -100.0)}, -- spawn #25
        {['taken'] = false, ['coords'] = vector3(2520.0, 2000.0, -100.0)}, -- spawn #26
        {['taken'] = false, ['coords'] = vector3(2580.0, 2000.0, -100.0)}, -- spawn #27
        {['taken'] = false, ['coords'] = vector3(2640.0, 2000.0, -100.0)}, -- spawn #28
        {['taken'] = false, ['coords'] = vector3(2700.0, 2000.0, -100.0)}, -- spawn #29
        {['taken'] = false, ['coords'] = vector3(2760.0, 2000.0, -100.0)}, -- spawn #30
        {['taken'] = false, ['coords'] = vector3(2820.0, 2000.0, -100.0)}, -- spawn #31
        {['taken'] = false, ['coords'] = vector3(2880.0, 2000.0, -100.0)}, -- spawn #32
        {['taken'] = false, ['coords'] = vector3(2940.0, 2000.0, -100.0)}, -- spawn #33

        {['taken'] = false, ['coords'] = vector3(1020.0, 2100.0, -100.0)}, -- spawn #34
        {['taken'] = false, ['coords'] = vector3(1080.0, 2100.0, -100.0)}, -- spawn #35
        {['taken'] = false, ['coords'] = vector3(1140.0, 2100.0, -100.0)}, -- spawn #36
        {['taken'] = false, ['coords'] = vector3(1200.0, 2100.0, -100.0)}, -- spawn #37
        {['taken'] = false, ['coords'] = vector3(1260.0, 2100.0, -100.0)}, -- spawn #38
        {['taken'] = false, ['coords'] = vector3(1320.0, 2100.0, -100.0)}, -- spawn #39
        {['taken'] = false, ['coords'] = vector3(1380.0, 2100.0, -100.0)}, -- spawn #40
        {['taken'] = false, ['coords'] = vector3(1440.0, 2100.0, -100.0)}, -- spawn #41
        {['taken'] = false, ['coords'] = vector3(1500.0, 2100.0, -100.0)}, -- spawn #42
        {['taken'] = false, ['coords'] = vector3(1560.0, 2100.0, -100.0)}, -- spawn #43
        {['taken'] = false, ['coords'] = vector3(1620.0, 2100.0, -100.0)}, -- spawn #44
        {['taken'] = false, ['coords'] = vector3(1680.0, 2100.0, -100.0)}, -- spawn #45
        {['taken'] = false, ['coords'] = vector3(1740.0, 2100.0, -100.0)}, -- spawn #46
        {['taken'] = false, ['coords'] = vector3(1800.0, 2100.0, -100.0)}, -- spawn #47
        {['taken'] = false, ['coords'] = vector3(1860.0, 2100.0, -100.0)}, -- spawn #48
        {['taken'] = false, ['coords'] = vector3(1920.0, 2100.0, -100.0)}, -- spawn #49
        {['taken'] = false, ['coords'] = vector3(1980.0, 2100.0, -100.0)}, -- spawn #50
        {['taken'] = false, ['coords'] = vector3(2040.0, 2100.0, -100.0)}, -- spawn #51
        {['taken'] = false, ['coords'] = vector3(2100.0, 2100.0, -100.0)}, -- spawn #52
        {['taken'] = false, ['coords'] = vector3(2160.0, 2100.0, -100.0)}, -- spawn #53
        {['taken'] = false, ['coords'] = vector3(2220.0, 2100.0, -100.0)}, -- spawn #54
        {['taken'] = false, ['coords'] = vector3(2280.0, 2100.0, -100.0)}, -- spawn #55
        {['taken'] = false, ['coords'] = vector3(2340.0, 2100.0, -100.0)}, -- spawn #56
        {['taken'] = false, ['coords'] = vector3(2400.0, 2100.0, -100.0)}, -- spawn #57
        {['taken'] = false, ['coords'] = vector3(2460.0, 2100.0, -100.0)}, -- spawn #58
        {['taken'] = false, ['coords'] = vector3(2520.0, 2100.0, -100.0)}, -- spawn #59
        {['taken'] = false, ['coords'] = vector3(2580.0, 2100.0, -100.0)}, -- spawn #60
        {['taken'] = false, ['coords'] = vector3(2640.0, 2100.0, -100.0)}, -- spawn #61
        {['taken'] = false, ['coords'] = vector3(2700.0, 2100.0, -100.0)}, -- spawn #62
        {['taken'] = false, ['coords'] = vector3(2760.0, 2100.0, -100.0)}, -- spawn #63
        {['taken'] = false, ['coords'] = vector3(2820.0, 2100.0, -100.0)}, -- spawn #64
        {['taken'] = false, ['coords'] = vector3(2880.0, 2100.0, -100.0)}, -- spawn #65
        {['taken'] = false, ['coords'] = vector3(2940.0, 2100.0, -100.0)}, -- spawn #66
    },
}

Strings = {
    ['Press_E'] = 'Press ~INPUT_CONTEXT~ to %s',
    ['Furniture_Categories'] = 'Categories',
    ['Manage_House'] = 'manage your house',
    ['Buy_House'] = 'buy house #%s',
    ['Knock_House'] = 'knock on the door',
    ['Your_House'] = 'Your house',
    ['Buyable_House'] = 'Buyable house',
    ['Player_House'] = 'Player house',
    ['Storage'] = 'access your storage',
    ['Sell_House'] = 'Sell for $%s',
    ['Enter_House'] = 'Enter house',
    ['Sell_Confirm'] = 'Sell house for $%s?',
    ['yes'] = 'Yes',
    ['no'] = 'No',
    ['Sold_House'] = 'You sold your house for $%s',
    ['Must_Sell'] = 'You can only own one house. Sell your house to buy this one.',
    ['Buy_House_Confirm'] = 'Buy house #%s for $%s?',
    ['Manage_Door'] = 'manage door',
    ['Accept'] = 'Accept someone to enter',
    ['Exit'] = 'Leave the house',
    ['Noone_Home'] = 'Noone seems to be home!',
    ['Someone_Knocked'] = 'Someone knocked. Go to the door to let them in!',
    ['Let_In'] = 'Let someone in',
    ['Accept_Player'] = 'Let %s in?',
    ['Waiting_Owner'] = 'Waiting for the house owner to let you in.',
    ['ikea'] = 'IKEA',
    ['Buy_Furniture'] = 'enter IKEA',
    ['Buying_Furniture'] = '~INPUT_FRONTEND_LEFT~ ~INPUT_FRONTEND_RIGHT~ browse\n~INPUT_CELLPHONE_DOWN~ ~INPUT_CELLPHONE_UP~ change category (%s)\n~INPUT_FRONTEND_RDOWN~ buy %s for $%s\n~INPUT_MOVE_UP_ONLY~ ~INPUT_MOVE_DOWN_ONLY~ ~INPUT_VEH_CINEMATIC_UP_ONLY~ ~INPUT_VEH_CINEMATIC_DOWN_ONLY~ adjust camera\n~INPUT_MOVE_LEFT_ONLY~ ~INPUT_MOVE_RIGHT_ONLY~ rotate\n\n~INPUT_FRONTEND_RRIGHT~ exit',
    ['Confirm_Purchase'] = 'Buy %s for $%s?',
    ['no_money'] = "You don't have enough money.",
    ['Bought_Furniture'] = 'Bought 1x %s for $%s',
    ['Furnish'] = 'Furnish your house',
    ['Store_Garage'] = 'Press ~INPUT_CONTEXT~ to store the vehicle', 
    ['Re_Furnish'] = 'Remove placed furniture',
    ['Remove'] = 'Remove %s (#%s)',
    ['Amount'] = 'How many?',
    ['Player_Inventory'] = 'Your inventory',
    ['House_Inventory'] = 'Inventory',
    ['Invalid_Amount'] = 'Invalid amount. Please put a number.',
    ['Store'] = 'Store',
    ['Withdraw'] = 'Withdraw',
    ['Storage_Title'] = 'Storage',
    ['You_Stored'] = 'You stored %sx %s',
    ['You_Withdrew'] = 'You withdrew %sx %s',
    ['Not_Enough'] = 'You don\'t have that many!',
    ['Not_Enough_House'] = 'There\'s not that many in the storage!',
    ['Weapons'] = 'Weapons',
    ['Items'] = 'Items',
    ['No_Weapon'] = 'You don\'t have that weapon on you!',
    ['bullets'] = 'bullets', 
    ['Rotation'] = 'rotation',
    ['Guests'] = 'Your guests need to leave the house before you may do this.',
    ['Garage'] = 'Enter garage',
    ['No_Spawn'] = 'Couldn\'t find a spawnpoint for your house.',
    ['Host_Left'] = 'The house owner left the server, you were kicked out of their house.',
    ['No_Money'] = 'You don\'t have enough money!',
    ['Furnishing'] = '~INPUT_CELLPHONE_LEFT~ ~INPUT_CELLPHONE_RIGHT~ ~INPUT_CELLPHONE_DOWN~ ~INPUT_CELLPHONE_UP~ move\n~INPUT_VEH_CINEMATIC_UP_ONLY~ ~INPUT_VEH_CINEMATIC_DOWN_ONLY~ height\n~INPUT_ATTACK~ ~INPUT_AIM~ rotate\n~INPUT_DETONATE~ place on ground\n~INPUT_FRONTEND_ENDSCREEN_ACCEPT~ place\n~INPUT_FRONTEND_CANCEL~ cancel'
}


--GARAGE
ConfigLOAFGARAGE = {
    ImpoundPrice = 15000, -- price to retrieve impounded car
    Entrances = {
       {coords = vector3(83.8, 95.68, 77.66), heading = 70.25},
       {coords = vector3(-742.92, -2473.92, 13.45), heading = 332.11},
    },
    View = {
        vehicle = {coords = vector3(228.8, -986.97, -99.96), heading = 179.12},
    },
    Impounds = {
        {
            vehicleSpawn = {coords = vector3(490.99, -1313.66, 28.83), heading = 285.99},
            menu = vector3(483.6, -1312.07, 28.23),
        },
    },
}

Strings = {
    ['enter_garage'] = 'Press %s to enter the garage',
    ['store_garage'] = 'Press %s to store your %s',
    ['not_your'] = 'Garage - you do not own this vehicle!',
    ['no_vehicle'] = 'Garage - no vehicle found',
    ['impound'] = ' Impounded',
    ['take_out'] = 'Take out %s?',
    ['yes'] = 'Yes',
    ['no'] = 'No',
    ['retrieve_impounded'] = 'Retrieve %s | %s for %s',
    ['open_impound'] = 'Press ~INPUT_CONTEXT~ to open the impound',
    ['no_money'] = "You don't have enough money!",
    ['impound_blip'] = 'Impound',
    ['garage'] = 'Garage'
}



--gov

ConfigGov                            = {}

ConfigGov.DrawDistance               = 10.0 -- How close do you need to be for the markers to be drawn (in GTA units).
ConfigGov.MarkerType                 = {Cloakrooms = 20, Armories = 21, BossActions = 22, Vehicles = 36, Helicopters = 34}
ConfigGov.MarkerSize                 = {x = 1.5, y = 1.5, z = 0.5}
ConfigGov.MarkerColor                = {r = 50, g = 50, b = 204}

ConfigGov.EnablePlayerManagement     = true -- Enable if you want society managing.
ConfigGov.EnableArmoryManagement     = true
ConfigGov.EnableESXIdentity          = true -- Enable if you're using esx_identity.
ConfigGov.EnableLicenses             = true -- Enable if you're using esx_license.

ConfigGov.EnableHandcuffTimer        = true -- Enable handcuff timer? will unrestrain player after the time ends.
ConfigGov.HandcuffTimer              = 10 * 60000 -- 10 minutes.

ConfigGov.EnableJobBlip              = true -- Enable blips for cops on duty, requires esx_society.
ConfigGov.EnableCustomPeds           = false -- Enable custom peds in cloak room? See ConfigGov.CustomPeds below to customize peds.

ConfigGov.EnableESXService           = false -- Enable esx service?
ConfigGov.MaxInService               = -1 -- How much people can be in service at once?

ConfigGov.Locale                     = 'en'

ConfigGov.PoliceStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(-547.00646972656,-200.80294799805,38.280113220215),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29
		},

		Cloakrooms = {
			vector3(-515.29217529297,-183.7709197998,43.222389221191)
		},

		Armories = {
			vector3(-526.52429199219,-171.03253173828,43.185592651367)
		},

	 
		Vehicles = {
			{
					
				Spawner = vector3(-500.77279663086,-206.5450592041,36.817718505859),
				InsideShop = vector3(-506.94961547852,-236.11590576172,36.258766174316),
				SpawnPoints = {
					{coords = vector3(-485.93597412109,-199.80932617188,36.949836730957), heading = 90.0, radius = 6.0},					
				}
				
			},

			{
					
				Spawner = vector3(473.3, -1018.8, 28.0),
				InsideShop = vector3(228.5, -993.5, -99.0),
				SpawnPoints = {
					{coords = vector3(475.9, -1021.6, 28.0), heading = 276.1, radius = 6.0},
					{coords = vector3(484.1, -1023.1, 27.5), heading = 302.5, radius = 6.0}
				}
			
			} 
		},

		Helicopters = {
			{
				
				Spawner = vector3(461.1, -981.5, 43.6),
				InsideShop = vector3(477.0, -1106.4, 43.0),
				SpawnPoints = {
					{coords = vector3(449.5, -981.2, 43.6), heading = 92.6, radius = 10.0}
				}
				
			}
		},

		



		BossActions = {
			vector3(-518.51843261719,-184.95886230469,43.185626983643)
		}

	}

}

ConfigGov.AuthorizedWeapons = {
	recruit = {
		{weapon = 'WEAPON_CARBINERIFLE', components = {0, 0, 1000, 4000, nil}, price = 8000},
		{weapon = 'WEAPON_BZGAS', price = 1500},
		{weapon = 'WEAPON_SMG', components = {0, 0, 1000, 4000, nil}, price = 1500},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_STUNGUN', price = 1500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 80}
	},

	police_officer_1 = {
		{weapon = 'WEAPON_CARBINERIFLE', components = {0, 0, 1000, 4000, nil}, price = 8000},
		{weapon = 'WEAPON_BZGAS', price = 1500},
		{weapon = 'WEAPON_SMG', components = {0, 0, 1000, 4000, nil}, price = 1500},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_STUNGUN', price = 1500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 80}
	},

	police_officer_2 = {
		{weapon = 'WEAPON_CARBINERIFLE', components = {0, 0, 1000, 4000, nil}, price = 8000},
		{weapon = 'WEAPON_BZGAS', price = 1500},
		{weapon = 'WEAPON_SMG', components = {0, 0, 1000, 4000, nil}, price = 1500},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_STUNGUN', price = 1500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 80}
	},

	police_officer_3 = {
		{weapon = 'WEAPON_CARBINERIFLE', components = {0, 0, 1000, 4000, nil}, price = 8000},
		{weapon = 'WEAPON_BZGAS', price = 1500},
		{weapon = 'WEAPON_SMG', components = {0, 0, 1000, 4000, nil}, price = 1500},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_STUNGUN', price = 1500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 80}
	},

	senior_police_officer_1 = {
		{weapon = 'WEAPON_CARBINERIFLE', components = {0, 0, 1000, 4000, nil}, price = 8000},
		{weapon = 'WEAPON_BZGAS', price = 1500},
		{weapon = 'WEAPON_SMG', components = {0, 0, 1000, 4000, nil}, price = 1500},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_STUNGUN', price = 1500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 80}
	},

	senior_police_officer_2 = {
		{weapon = 'WEAPON_CARBINERIFLE', components = {0, 0, 1000, 4000, nil}, price = 8000},
		{weapon = 'WEAPON_SMG', components = {0, 0, 1000, 4000, nil}, price = 1500},
		{weapon = 'WEAPON_BZGAS', price = 1500},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	senior_police_officer_3 = {
		{weapon = 'WEAPON_CARBINERIFLE', components = {0, 0, 1000, 4000, nil}, price = 8000},
		{weapon = 'WEAPON_SMG', components = {0, 0, 1000, 4000, nil}, price = 1500},
		{weapon = 'WEAPON_BZGAS', price = 1500},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	senior_police_officer_4 = {
		{weapon = 'WEAPON_CARBINERIFLE', components = {0, 0, 1000, 4000, nil}, price = 8000},
		{weapon = 'WEAPON_SMG', components = {0, 0, 1000, 4000, nil}, price = 1500},
		{weapon = 'WEAPON_BZGAS', price = 1500},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	inspector = {
		{weapon = 'WEAPON_CARBINERIFLE', components = {0, 0, 1000, 4000, nil}, price = 8000},
		{weapon = 'WEAPON_SMG', components = {0, 0, 1000, 4000, nil}, price = 1500},
		{weapon = 'WEAPON_BZGAS', price = 1500},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},


	senior_Inspector = {
		{weapon = 'WEAPON_CARBINERIFLE', components = {0, 0, 1000, 4000, nil}, price = 8000},
		{weapon = 'WEAPON_SMG', components = {0, 0, 1000, 4000, nil}, price = 1500},
		{weapon = 'WEAPON_BZGAS', price = 1500},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0},
		{weapon = 'WEAPON_BZGAS', price = 1500}
	},


	chief_Inspector = {
		{weapon = 'WEAPON_CARBINERIFLE', components = {0, 0, 1000, 4000, nil}, price = 8000},
		{weapon = 'WEAPON_SMG', components = {0, 0, 1000, 4000, nil}, price = 1500},
		{weapon = 'WEAPON_BZGAS', price = 1500},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	superintendent = {
		{weapon = 'WEAPON_CARBINERIFLE', components = {0, 0, 1000, 4000, nil}, price = 8000},
		{weapon = 'WEAPON_SMG', components = {0, 0, 1000, 4000, nil}, price = 1500},
		{weapon = 'WEAPON_BZGAS', price = 1500},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	chief_superintendent = {
		{weapon = 'WEAPON_CARBINERIFLE', components = {0, 0, 1000, 4000, nil}, price = 8000},
		{weapon = 'WEAPON_SMG', components = {0, 0, 1000, 4000, nil}, price = 1500},
		{weapon = 'WEAPON_BZGAS', price = 1500},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},
	Director = {
		{weapon = 'WEAPON_CARBINERIFLE', components = {0, 0, 1000, 4000, nil}, price = 8000},
		{weapon = 'WEAPON_SMG', components = {0, 0, 1000, 4000, nil}, price = 1500},
		{weapon = 'WEAPON_BZGAS', price = 1500},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	deputy_director_general = {
		{weapon = 'WEAPON_CARBINERIFLE', components = {0, 0, 1000, 4000, nil}, price = 8000},
		{weapon = 'WEAPON_SMG', components = {0, 0, 1000, 4000, nil}, price = 1500},
		{weapon = 'WEAPON_BZGAS', price = 1500},
		{weapon = 'WEAPON_SPECIALCARBINE', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	boss = {
		{weapon = 'WEAPON_CARBINERIFLE', components = {0, 0, 1000, 4000, nil}, price = 8000},
		{weapon = 'WEAPON_SMG', components = {0, 0, 1000, 4000, nil}, price = 1500},
		{weapon = 'WEAPON_BZGAS', price = 1500},
		{weapon = 'WEAPON_SPECIALCARBINE', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	}

}

ConfigGov.AuthorizedVehicles = {
	car = {
		recruit = {},

		officer = {
			{model = 'police3', price = 20000}
		},

		sergeant = {
			{model = 'policet', price = 18500},
			{model = 'policeb', price = 30500}
		},

		lieutenant = {
			{model = 'riot', price = 70000},
			{model = 'fbi2', price = 60000}
		},

		boss = {}
	},

	helicopter = {

		
		inspector = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},
	
		senior_Inspector = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},
	
		chief_Inspector = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},
	
		superintendent = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},
	
		chief_superintendent = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},
	
		Director = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},
	
		deputy_director_general = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},
	
		director_general = {
		
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		}
	}
}

ConfigGov.CustomPeds = {
	shared = {
		{label = 'Sheriff Ped', maleModel = 's_m_y_sheriff_01', femaleModel = 's_f_y_sheriff_01'},
		{label = 'Police Ped', maleModel = 's_m_y_cop_01', femaleModel = 's_f_y_cop_01'}
	},

	recruit = {},

	officer = {},

	sergeant = {},

	lieutenant = {},

	boss = {
		{label = 'SWAT Ped', maleModel = 's_m_y_swat_01', femaleModel = 's_m_y_swat_01'}
	}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements
ConfigGov.Uniforms = {
	recruit = {
		male = {
			tshirt_1 = 59,  tshirt_2 = 1,
			torso_1 = 55,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 41,
			pants_1 = 25,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 46,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 36,  tshirt_2 = 1,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = 45,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	officer = {
		male = {
			tshirt_1 = 58,  tshirt_2 = 0,
			torso_1 = 55,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 41,
			pants_1 = 25,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	sergeant = {
		male = {
			tshirt_1 = 58,  tshirt_2 = 0,
			torso_1 = 55,   torso_2 = 0,
			decals_1 = 8,   decals_2 = 1,
			arms = 41,
			pants_1 = 25,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 7,   decals_2 = 1,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	lieutenant = {
		male = {
			tshirt_1 = 58,  tshirt_2 = 0,
			torso_1 = 55,   torso_2 = 0,
			decals_1 = 8,   decals_2 = 2,
			arms = 41,
			pants_1 = 25,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 7,   decals_2 = 2,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	boss = {
		male = {
			tshirt_1 = 58,  tshirt_2 = 0,
			torso_1 = 55,   torso_2 = 0,
			decals_1 = 8,   decals_2 = 3,
			arms = 41,
			pants_1 = 25,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 7,   decals_2 = 3,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	bullet_wear = {
		male = {
			bproof_1 = 11,  bproof_2 = 1
		},
		female = {
			bproof_1 = 13,  bproof_2 = 1
		}
	},

	gilet_wear = {
		male = {
			tshirt_1 = 59,  tshirt_2 = 1
		},
		female = {
			tshirt_1 = 36,  tshirt_2 = 1
		}
	}
}



ConfigID = {}

ConfigID.Usermenu = {

	{
		name  = 'license',
		label = 'Licence',
		items = {
			{label = 'Check ID', type = 'checkID'},
			{label = 'Show ID', type = 'showID'},
			{label = 'Check Driver ID', type = 'checkDriver'},
			{label = 'Show Driver ID', type = 'showDriver'},
			{label = 'Check Fire Arms License', type = 'checkFirearms'},
			{label = 'Show Fire Arms License', type = 'showFirearms'},
		}
	}

}

