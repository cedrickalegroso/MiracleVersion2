cfg = {}

cfg.hotwirechance = 75 -- chance of being hotwired in percentage
cfg.hotwiretime = 7.0 -- how long hotwire should take in seconds
cfg.lockpickbreakchance = 50 -- chance of lockpick breaing

cfg.whitelist = {
  "police",
  "ambulance"
}

ConfigHR = {}

-- Pawn Shop Positions:
ConfigHR.PawnZones = {
	PawnShops = {
		Pos = {
			{x = -1459.30,  y = -414.26, z = 35.75},
			
		}
	}
}


-- Pawn Shop Marker Settings:
ConfigHR.KeyToOpenShop = 38														-- default 38 is E
ConfigHR.ShopMarker = 27 															-- marker type
ConfigHR.ShopMarkerColor = { r = 255, g = 255, b = 0, a = 100 } 					-- rgba color of the marker
ConfigHR.ShopMarkerScale = { x = 1.0, y = 1.0, z = 1.0 }  						-- the scale for the marker on the x, y and z axis
ConfigHR.ShopDraw3DText = "Press ~g~[E]~s~ to sell"					-- set your desired text here

-- Pawn Shop Item List:
ConfigHR.ItemsInPawnShop = {
	{ itemName = 'nswitch', label = 'Nintendo Switch', BuyInPawnShop = false, BuyPrice = 1000, SellInPawnShop = true, SellPrice = 1000 },
	{ itemName = 'iphone', label = 'iPhone X', BuyInPawnShop = false, BuyPrice = 1000, SellInPawnShop = true, SellPrice = 6000 },
	{ itemName = 'casio', label = 'Casio Watch', BuyInPawnShop = false, BuyPrice = 1000, SellInPawnShop = true, SellPrice = 450 },
	{ itemName = 'xbox', label = 'Xbox One', BuyInPawnShop = false, BuyPrice = 1000, SellInPawnShop = true, SellPrice = 6500 },
	{ itemName = 'bluray', label = 'Bluray', BuyInPawnShop = false, BuyPrice = 1000, SellInPawnShop = true, SellPrice = 3000 },
	{ itemName = 'book', label = 'Book', BuyInPawnShop = false, BuyPrice = 1000, SellInPawnShop = true, SellPrice = 100 },
	{ itemName = 'watch', label = 'iPod', BuyInPawnShop = false, BuyPrice = 1000, SellInPawnShop = true, SellPrice = 5000 },
	{ itemName = 'drill', label = 'Drill', BuyInPawnShop = false, BuyPrice = 1000, SellInPawnShop = true, SellPrice = 350 },
	{ itemName = 'gamingperipherals', label = 'Headphones', BuyInPawnShop = false, BuyPrice = 500, SellInPawnShop = true, SellPrice = 1000 },
	{ itemName = 'gpixel', label = 'Huawei P20', BuyInPawnShop = false, BuyPrice = 500, SellInPawnShop = true, SellPrice = 7500 },
	{ itemName = 'moneda', label = 'Gold coin', BuyInPawnShop = false, BuyPrice = 500, SellInPawnShop = true, SellPrice = 1000 },
	{ itemName = 'playstation', label = 'Playstation', BuyInPawnShop = false, BuyPrice = 500, SellInPawnShop = true, SellPrice = 10000 },
	{ itemName = 'samsungs10', label = 'Samsung S10', BuyInPawnShop = false, BuyPrice = 500, SellInPawnShop = true, SellPrice = 5000 },
	{ itemName = 'speaker', label = 'Speaker', BuyInPawnShop = false, BuyPrice = 500, SellInPawnShop = true, SellPrice = 2500 },
	{ itemName = 'tablet', label = 'iPad', BuyInPawnShop = false, BuyPrice = 500, SellInPawnShop = true, SellPrice = 4500 },
	{ itemName = 'laptop', label = 'Laptop', BuyInPawnShop = false, BuyPrice = 500, SellInPawnShop = true, SellPrice = 9000 },
	{ itemName = 'gameboy', label = 'Game Boy', BuyInPawnShop = false, BuyPrice = 500, SellInPawnShop = true, SellPrice = 3500 },
}



--Designed by Donrskbb--
ConfigLOGGER                        = {}
ConfigLOGGER.Locale 				  = 'en'  --EN is the Dutch Translated Version. Would you like the English Version,replace the EN with EN-EN version and rename it--
ConfigLOGGER.green 				  = 56108
ConfigLOGGER.grey 				  = 8421504
ConfigLOGGER.red 					  = 16711680
ConfigLOGGER.orange 				  = 16744192
ConfigLOGGER.blue 				  = 2061822
ConfigLOGGER.purple 				  = 6965387
ConfigLOGGER.pink                   = 11750815
ConfigLOGGER.yellow                 = 16449301
ConfigLOGGER.white                  = 16777215
ConfigLOGGER.black                  = 0
ConfigLOGGER.bluetweet              = 4436965
ConfigLOGGER.webhook                = "https://discordapp.com/api/webhooks/765801934371291166/dZS_rTkKn-y3rUuFYmG4v3lPWDfuu-IKdbf4CZ5iEdTDZnTul_xeSbMJ5MYtiEWZGo9D"
ConfigLOGGER.Image				  = "YOUR IMAGE"

--Just change true for monitor and false to ignore--
settings = {
	LogKills = false, -- Log when a player kill an other player.
	LogEnterPoliceVehicle = true, -- Log when an player enter in a police vehicle.
	LogEnterBlackListedVehicle = true, -- Log when a player enter in a blacklisted vehicle.
	LogPedJacking = true, -- Log when a player is jacking a car
	LogChatServer = true, -- Log when a player is talking in the chat , /command works too.
	LogLoginServer = false, -- Log when a player is connecting/disconnecting to the server.
    LogItemTransfer = true, -- Log when a player is giving an item.
    LogItemDrop = true,-- Log when a player drop an item.
    LogItemPickup = true,-- Log when a player pick an item.
    LogWeaponTransfer = true, -- Log when a player is giving a weapon.
    LogWeaponDrop = true,  -- Log when a player drop a weapon.
    LogMoneyTransfer = true, -- Log when a player is giving money
    LogMoneyDrop = true,  -- Log when a player drop money
    LogMoneyPickup = true,  -- Log when a player pick money
    LogDirtyMoneyTransfer = true, -- Log when a player is giving dirty money
    LogDirtyMoneyDrop = true,  -- Log when a player drop dirty money
    LogDirtyMoneyPickup = true,  -- Log when a player pick dirty money
    LogTweetServer = true, -- Log when a player is tweeting in the chat.
    LogBanhammer = true, -- Log when a player is banned.
    LogBankWithdraw = true, -- Log when a player is transfering account money.
    LogBankDeposit = true, -- Log when a player is transfering account money.

}


--Just add vehicles for blacklist announce--
blacklistedModels = {
	"APC",
	"BARRACKS",
	"BARRACKS2",
	"RHINO",
	"CRUSADER",
	"CARGOBOB",
	"SAVAGE",
	"TITAN",
    "LAZER",
    "VALKYRIE",
	"VALKYRIE2",
}




ConfigXray = {}

ConfigXray.XrayTime = 20000

ConfigXray.XrayPay = 250

ConfigXray.Zones = {

 

	["MCEMS XRAY 1"] = {

		["coords"] = vector3(-441.65087890625,-302.78948974609,34.810766601562),


        ["bed"] = vector4(-441.21328735352,-303.36676025391,35.779876708984, 115),
        

        ["timed"] = 1

    }, --


	
	["MCEMS XRAY 2"] = {

		["coords"] = vector3(-446.5686340332,-291.96298217773,34.81081237793),


        ["bed"] = vector4(-447.04162597656,-291.12832641602,35.811878204346, 108),
        
        ["timed"] = 1
       

    }, --

    
    ["MCEMS HILOT STATION 1"] = {

		["coords"] = vector3(-459.98501586914,-307.51034545898,34.910781860352),


        ["bed"] = vector4(-459.99688720703,-306.85137939453,35.683086395264, 109),
        
        ["timed"] = 0
       

    }, --



    ["MCEMS HILOT STATION 2"] = {

		["coords"] = vector3(-462.09780883789,-302.31161499023,34.910774230957),


        ["bed"] = vector4(-462.35983276367,-301.4680480957,35.682662963867, 109),
        
        ["timed"] = 0
       

    }, --

    ["MCEMS HILOT STATION 3"] = {

		["coords"] = vector3(  -464.69622802734,-296.33444213867,34.910766601562),


        ["bed"] = vector4(-464.81207275391,-295.37377929688,35.584384918213, 109),
        
        ["timed"] = 0
       

    }, --



  


--[[
  ["RCPD Store"] = {

        ["coords"] = vector3(436.26565551758,-986.37823486328,30.689340591431),

    }, --

    ["RCEMS Store"] = {

        ["coords"] = vector3(-433.22155761719,-341.61465454102,34.910751342773),

    }, --

    ["RCEMS Store 2"] = {

        ["coords"] = vector3(-455.76086425781,-332.03594970703,42.329776763916),

    }, --

    ["Gyro Day"] = {
        ["coords"] = vector3(461.50152587891, -699.02325439453, 27.402139663696)
    }

]]--
  
}

ConfigXray.Anims = { -- if you want to change the animation
    ["eatable"] = {
        ["animation"] = "mp_player_int_eat_burger_fp",
        ["dict"] = "mp_player_inteat@burger",
    },

    ["drink"] = {
        ["animation"] = "loop_bottle",
        ["dict"] = "mp_player_intdrink",
    },
}

ConfigXray.eatable = { -- if you have not choosed any food for a certain zone it will automatically get this
    ["Hotdog"] = {
        ["price"] = 79,
        ["prop"] = "prop_cs_hotdog_01"
    }
}

ConfigXray.drink = { -- if you have not choosed any drinks for a certain zone it will automatically get this
    ["Sparkling Water"] = {
        ["price"] = 15,
        ["prop"] = "prop_ld_flow_bottle"
    }
}


intervals = { -- Unit: seconds
	['save'] = 10, -- How often the vehicles' position should be saved. The save schedule is only useful after game crashes, or disconnects while in vehicle.
	['check'] = 15 -- How often should it check for despawned vehicles.
}

-- Make sure to keep a short save interval if you disable any of these two options.
saveOnEnter = true -- Whether the vehicle should be saved right when it's entered. Useful for quick enter and exit.
saveOnExit = true -- Whether the vehicle should be saved once after a player leaves a vehicle.

debugMode = false -- Toggle debug mode (client & server console spam).

ConfigYATE = {}


ConfigYATE.Locale       = 'en'

-- How many cops need to be online
ConfigYATE.LSPD = 1 
-- Minimum reward
ConfigYATE.MinReward = 950000
-- Maximum reward
ConfigYATE.MaxReward = 1000000


ConfigGlove = {}

ConfigGlove.CheckOwnership = false -- If true, Only owner of vehicle can store items in glovebox.
ConfigGlove.AllowPolice = false -- If true, police will be able to search players' glovebox.

ConfigGlove.Locale = 'en'

ConfigGlove.OpenKey = 246

-- Limit, unit can be whatever you want. Originally grams (as average people can hold 25kg)
ConfigGlove.Limit = 25000

-- Default weight for an item:
-- weight == 0 : The item do not affect character inventory weight
-- weight > 0 : The item cost place on inventory
-- weight < 0 : The item add place on inventory. Smart people will love it.
ConfigGlove.DefaultWeight = 10

ConfigGlove.localWeight = {
    bread = 125,
    water = 330,
    WEAPON_SMG = 5000
}

ConfigGlove.VehicleLimit = {
    [0] = 30000, --Compact
    [1] = 40000, --Sedan
    [2] = 70000, --SUV
    [3] = 25000, --Coupes
    [4] = 30000, --Muscle
    [5] = 10000, --Sports Classics
    [6] = 5000, --Sports
    [7] = 5000, --Super
    [8] = 5000, --Motorcycles
    [9] = 180000, --Off-road
    [10] = 300000, --Industrial
    [11] = 70000, --Utility
    [12] = 100000, --Vans
    [13] = 0, --Cycles
    [14] = 5000, --Boats
    [15] = 20000, --Helicopters
    [16] = 0, --Planes
    [17] = 40000, --Service
    [18] = 40000, --Emergency
    [19] = 0, --Military
    [20] = 300000, --Commercial
    [21] = 0 --Trains
}

ConfigGlove.VehiclePlate = {
    taxi = "TAXI",
    cop = "police",
    ambulance = "ambulance",
    mecano = "mechano"
}



ConfigOVRW = {}

ConfigOVRW.discordWebhook = "https://discordapp.com/api/webhooks/774172555149967370/o7HPAf79pCLENSyowjqs21jbSv8tiBqmr5ZcBzmeaEb-hxK-Db65NQBjlBkAtv5gP84X" --Enter your discord web hook, if you want to be notified