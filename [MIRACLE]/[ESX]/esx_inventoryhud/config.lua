Config = {}
Config.Locale = 'en'
Config.IncludeCash = true -- Include cash in inventory?
Config.IncludeWeapons = true -- Include weapons in inventory?
Config.IncludeAccounts = true -- Include accounts (bank, black money, ...)?
Config.ExcludeAccountsList = {"bank"} -- List of accounts names to exclude from inventory
Config.CheckOwnership = false -- If true, Only owner of vehicle can store items in trunk.
Config.AllowPolice = true -- If true, police will be able to search players' trunks.
Config.OpenControl = 289 -- Key for opening inventory. Edit html/js/config.js to change key for closing it.
Config.OpenKey = 246 -- Key for opening trunk

-- List of item names that will close ui when used
Config.CloseUiItems = {"headbag", "fishingrod", "tuning_laptop", "binoculars", "gps", "joint", "cigarette", "cigar", "fixkit", "rollingpaper", "cocaine", "meth"}

Config.ShopBlipID = 52
Config.LiquorBlipID = 93
Config.YouToolBlipID = 402
Config.PrisonShopBlipID = 52
Config.WeedStoreBlipID = 140
Config.WeaponShopBlipID = 110
Config.ArmoryShopBlipID = 110
Config.BlackMarketShopBlipID = 110
Config.DarknetShopBlipID = 0
Config.PhoneShopBlipID = 459
Config.PharmaShopBlipID = 267


Config.ShopLength = 14
Config.LiquorLength = 10
Config.YouToolLength = 2
Config.PrisonShopLength = 2

Config.Color = 2
Config.WeaponColor = 1

Config.WeaponLiscence = {x = 12.47, y = -1105.5, z = 29.8}
Config.LicensePrice = 35000



Config.Shops = {
    RegularShop = {
        Locations = {
		--	{x = -105.78832244873,   y = -1795.2329101562,  z =26.812644958496},
		
		
			{x = 373.875,   y = 325.896,  z = 102.566},
			{x = 2557.458,  y = 382.282,  z = 107.622},
			{x = -3038.939, y = 585.954,  z = 6.908},
			{x = -3241.927, y = 1001.462, z = 11.830},
			{x = 547.431,   y = 2671.710, z = 41.156},
			{x = 1961.464,  y = 3740.672, z = 31.343},
			{x = 2678.916,  y = 3280.671, z = 54.241},
			{x = 1729.216,  y = 6414.131, z = 34.037},
		
			{x = 1135.808,  y = -982.281,  z = 45.415},
			{x = -1222.915, y = -906.983,  z = 11.326},
			{x = -1487.553, y = -379.107,  z = 39.163},
			{x = -2968.243, y = 390.910,   z = 14.043},
			{x = 1166.024,  y = 2708.930,  z = 37.157},
			{x = 1392.562,  y = 3604.684,  z = 33.980},
			{x = 127.830,   y = -1284.796, z = 28.280}, --StripClub
			{x = -1393.409, y = -606.624,  z = 29.319}, --Tequila la
			{x = -559.906,  y = 287.093,   z = 81.176},  --Bahamamas
			{x = -48.519,   y = -1757.514, z = 28.421},
			{x = 1163.373,  y = -323.801,  z = 68.205},
			{x = -707.501,  y = -914.260,  z = 18.215},
			{x = -1820.523, y = 792.518,   z = 137.118},
			{x = 1698.388,  y = 4924.404,  z = 41.063},
			--{x = 436.19,  y = -986.4,  z = 30.69},
			--{x = -1216.69,  y = -1723.91,  z = 3.45},
		--	{x = 1008.86,  y = -2335.06,  z = 35.31},
			--{x = 888.69,  y = -173.22,  z = 81.6}
		},
        Items = {
            {name = 'bread'},
			{name = 'water'},
			{name = 'fishingrod'},
			{name = 'turtlebait'},
			{name = 'fishbait'},
			--{name = 'ziptie'},
		--	{name = 'hifi'},
		--	{name = 'radio'},
		--	{name = 'beer'},			
		--	{name = 'soda'},
		--	{name = 'joint'},
		--	{name = 'cigarette'},
							
                            
     }},

	 CartelShop = {
		Locations = { -- -2527.2509765625,745.34545898438,303.39923095703
		---2527.0852050781,745.36474609375,303.39947509766
			{x = -2527.1843261719, y =745.36047363281, z = 302.39916992188},
        },
		CartelShopWeapons = {
			{name = "WEAPON_KNIFE", ammo = 1},
			{name = "WEAPON_FLASHLIGHT", ammo = 1},
            {name = "WEAPON_BAT", ammo = 1},
            {name = "WEAPON_PISTOL", ammo = 45},
			{name = "WEAPON_PUMPSHOTGUN", ammo = 25},
			{name = "WEAPON_MINISMG", ammo = 25},
        },
        CartelShopAmmo = {
		--	{name = "disc_ammo_pistol", weaponhash = "WEAPON_PISTOL", ammo = 24},
		--	{name = "disc_ammo_pistol_large", weaponhash = "WEAPON_PISTOL", ammo = 40},
		--	{name = "disc_ammo_shotgun", weaponhash = "WEAPON_PUMPSHOTGUN", ammo = 12},
		--	{name = "disc_ammo_shotgun_large", weaponhash = "WEAPON_PUMPSHOTGUN", ammo = 30}
        },
        CartelShopItems = {
			{name = "disc_ammo_pistol"},
			{name = "disc_ammo_shotgun"},
			{name = "disc_ammo_smg"},
		--	{name = "Suppressor"},
		--	{name = "grip"},
	--	{name = "armor2"},
			{name = "armor"},
			{name = "powiekszonymagazynek"},
		--	{name = "kompensator"},
		--	{name = "flashlight"},
		--	{name = "holografik"},
		--	{name = "tactitalmuzle"},

		}
    },


	GangShop1 = { --SCILLIAN
		Locations = { 
			{x = -1409.5447998047, y =646.00994873047, z = 197.09944152832},
        },
		GangShop1Weapons = {
			{name = "WEAPON_KNIFE", ammo = 1},
			{name = "WEAPON_FLASHLIGHT", ammo = 1},
            {name = "WEAPON_BAT", ammo = 1},
            {name = "WEAPON_PISTOL", ammo = 45},
			{name = "WEAPON_PUMPSHOTGUN", ammo = 25},
			{name = "WEAPON_MINISMG", ammo = 25},
        },
        GangShop1Ammo = {
		--	{name = "disc_ammo_pistol", weaponhash = "WEAPON_PISTOL", ammo = 24},
		--	{name = "disc_ammo_pistol_large", weaponhash = "WEAPON_PISTOL", ammo = 40},
		--	{name = "disc_ammo_shotgun", weaponhash = "WEAPON_PUMPSHOTGUN", ammo = 12},
		--	{name = "disc_ammo_shotgun_large", weaponhash = "WEAPON_PUMPSHOTGUN", ammo = 30}
        },
		GangShop1Items = {
			{name = "disc_ammo_pistol"},
			{name = "disc_ammo_shotgun"},
			{name = "disc_ammo_smg"},
		--	{name = "Suppressor"},
		--	{name = "grip"},
	--	{name = "armor2"},
			{name = "armor"},
			{name = "powiekszonymagazynek"},
		--	{name = "kompensator"},
		--	{name = "flashlight"},
		--	{name = "holografik"},
		--	{name = "tactitalmuzle"},

		}
    },

	
	GangShop2 = { --MS13 ,,
		Locations = { 
			{x = 108.21852111816, y =-1979.8701171875, z = 20.962617874146},
        },
		GangShop2Weapons = {
			{name = "WEAPON_KNIFE", ammo = 1},
			{name = "WEAPON_FLASHLIGHT", ammo = 1},
            {name = "WEAPON_BAT", ammo = 1},
            {name = "WEAPON_PISTOL", ammo = 45},
			{name = "WEAPON_PUMPSHOTGUN", ammo = 25},
			{name = "WEAPON_MINISMG", ammo = 25},
        },
        GangShop2Ammo = {
		--	{name = "disc_ammo_pistol", weaponhash = "WEAPON_PISTOL", ammo = 24},
		--	{name = "disc_ammo_pistol_large", weaponhash = "WEAPON_PISTOL", ammo = 40},
		--	{name = "disc_ammo_shotgun", weaponhash = "WEAPON_PUMPSHOTGUN", ammo = 12},
		--	{name = "disc_ammo_shotgun_large", weaponhash = "WEAPON_PUMPSHOTGUN", ammo = 30}
        },
		GangShop2Items = {
			{name = "disc_ammo_pistol"},
			{name = "disc_ammo_shotgun"},
			{name = "disc_ammo_smg"},
		--	{name = "Suppressor"},
		--	{name = "grip"},
	--	{name = "armor2"},
			{name = "armor"},
			{name = "powiekszonymagazynek"},
		--	{name = "kompensator"},
		--	{name = "flashlight"},
		--	{name = "holografik"},
		--	{name = "tactitalmuzle"},

		}
    },


	GangShop3 = { --GAMB ,,
		Locations = { 
			{x = -2583.5625, y =1890.3746337891, z = 163.72395324707},
        },
		GangShop3Weapons = {
			{name = "WEAPON_KNIFE", ammo = 1},
			{name = "WEAPON_FLASHLIGHT", ammo = 1},
            {name = "WEAPON_BAT", ammo = 1},
            {name = "WEAPON_PISTOL", ammo = 45},
			{name = "WEAPON_PUMPSHOTGUN", ammo = 25},
			{name = "WEAPON_MINISMG", ammo = 25},
        },
        GangShop3Ammo = {
		--	{name = "disc_ammo_pistol", weaponhash = "WEAPON_PISTOL", ammo = 24},
		--	{name = "disc_ammo_pistol_large", weaponhash = "WEAPON_PISTOL", ammo = 40},
		--	{name = "disc_ammo_shotgun", weaponhash = "WEAPON_PUMPSHOTGUN", ammo = 12},
		--	{name = "disc_ammo_shotgun_large", weaponhash = "WEAPON_PUMPSHOTGUN", ammo = 30}
        },
		GangShop3Items = {
			{name = "disc_ammo_pistol"},
			{name = "disc_ammo_shotgun"},
			{name = "disc_ammo_smg"},
		--	{name = "Suppressor"},
		--	{name = "grip"},
	--	{name = "armor2"},
			{name = "armor"},
			{name = "powiekszonymagazynek"},
		--	{name = "kompensator"},
		--	{name = "flashlight"},
		--	{name = "holografik"},
		--	{name = "tactitalmuzle"},

		}
    },


	
    RobsLiquor = {
		Locations = {
			
        },
        Items = {
			{name = 'bread'},
			{name = 'water'},
			{name = 'antibiotico'},
			{name = 'antibioticorosacea'},
			{name = 'sciroppo'},
    }},

    YouTool = {
        Locations = {
          --  {x = 2748.0, y = 3473.0, z = 55.68},
        },
        Items = {
            {name = 'drill'},
            {name = 'binocular'},
            {name = 'fixkit'},
            {name = 'vehgps'},
            {name = 'lockpick'},
            {name = 'scubagear'},
            {name = 'blowtorch'},
            {name = '1gbag'},
            {name = '5gbag'},
            {name = '50gbag'},
            {name = '100gbag'},
            {name = 'lowgradefert'},
            {name = 'highgradefert'},
            {name = 'plantpot'},
            {name = 'drugscales'}
	}},
	
	nPhoneShop = {
		
        Locations = {
			{x = -656.91937255859, y =-857.25366210938, z = 24.490020751953},
		--	{x = -1039.26, y = -2745.43, z = 21.36},
		},
        Items = {
            {name = 'phone'},
			{name = 'hifi'},
			{name = 'radio'},
            
	}},
	
	
	pharmaShop = {
        Locations = {
       -- 	{x = -491.48007202148,  y = -340.18615722656, z = 41.320728302002},
	
		},
        Items = {
			  {name = 'orange'},
			  {name = 'grapes'},
			  {name = 'apple'},
			  {name = 'banana'},
			  {name = 'gatorade'},
			  {name = 'antibiotico'},
			  {name = 'antibioticorosacea'},
			  {name = 'sciroppo'},
    }},
	



    PrisonShop = {
        Locations = {
            {x = 1728.41, y = 2584.31, z = 45.84},
        },
        Items = {
            {name = 'bread'},
            {name = 'water'},
			{name = 'antibiotico'},
			{name = 'antibioticorosacea'},
			{name = 'sciroppo'},
    }},


	

    WeaponShop = {
        Locations = {
         
		   { x = 22.09, y = -1107.28, z = 28.80 },
		   { x = -662.1, y = -2157.3, z = 28.6 },
		   { x = 1693.4, y = 3759.5, z = 33.7 },
		   { x = -330.2, y = -50.0, z = 68.9 },
		   { x = 2567.6, y = 294.3, z = 107.7 },
		   { x = -1117.5, y =2698.6, z = 17.5 },
		   { x =842.4, y = -1033.4, z = 27.1 },
			   { x = -1306.2, y =-394.0, z = 35.6 },
			   { x = -3171.97, y = 1087.4, z = 19.84 },   
	
        },
        Weapons = {
			{name = "WEAPON_KNIFE", ammo = 1},
			{name = "WEAPON_FLASHLIGHT", ammo = 1},
            {name = "WEAPON_BAT", ammo = 1},
            {name = "WEAPON_PISTOL", ammo = 45},
			{name = "WEAPON_PUMPSHOTGUN", ammo = 25},
			{name = "WEAPON_MINISMG", ammo = 25},
        },
        Ammo = {
		--	{name = "disc_ammo_pistol", weaponhash = "WEAPON_PISTOL", ammo = 24},
		--	{name = "disc_ammo_pistol_large", weaponhash = "WEAPON_PISTOL", ammo = 40},
		--	{name = "disc_ammo_shotgun", weaponhash = "WEAPON_PUMPSHOTGUN", ammo = 12},
		--	{name = "disc_ammo_shotgun_large", weaponhash = "WEAPON_PUMPSHOTGUN", ammo = 30}
        },
        Items = {
			{name = "disc_ammo_pistol"},
			{name = "disc_ammo_shotgun"},
			{name = "disc_ammo_smg"},
		--	{name = "Suppressor"},
		--	{name = "grip"},
	--	{name = "armor2"},
			{name = "armor"},
			{name = "powiekszonymagazynek"},
		--	{name = "kompensator"},
		--	{name = "flashlight"},
		--	{name = "holografik"},
		--	{name = "tactitalmuzle"},

		}
	
	},
		

		Armory = {
			Locations = {
				--,,
			{ x =485.54306030273, y = -995.25726318359, z = 29.689645767212 },
		   
			},
			ArmoryWeapons = {
				{name = "WEAPON_FLASHLIGHT", ammo = 1},
				{name = "WEAPON_BAT", ammo = 1},
				{name = "WEAPON_PISTOL", ammo = 45},
				{name = "WEAPON_PUMPSHOTGUN", ammo = 25},
			--	{name = "WEAPON_MARKSMANRIFLE", ammo = 25},
			{name = "WEAPON_CARBINERIFLE", ammo = 25},
			{name = "WEAPON_SPECIALCARBINE", ammo = 25},
				{name = "WEAPON_MINISMG", ammo = 25},
				{name = "WEAPON_SMG", ammo = 25},
				{name = "WEAPON_STUNGUN", ammo = 25},
				{name = "WEAPON_ADVANCEDRIFLE", ammo = 25},
				{name = "WEAPON_BZGAS", ammo = 3},
			},
			ArmoryAmmo = {
			--	{name = "disc_ammo_pistol", weaponhash = "WEAPON_PISTOL", ammo = 24},
			--	{name = "disc_ammo_pistol_large", weaponhash = "WEAPON_PISTOL", ammo = 40},
			--	{name = "disc_ammo_shotgun", weaponhash = "WEAPON_PUMPSHOTGUN", ammo = 12},
			--	{name = "disc_ammo_shotgun_large", weaponhash = "WEAPON_PUMPSHOTGUN", ammo = 30}
			},
			ArmoryItems = {
			
				{name = "disc_ammo_pistol_large"},
				{name = "disc_ammo_shotgun_large"},
				{name = "disc_ammo_rifle_large"},
				{name = "disc_ammo_smg_large"},
				{name = "disc_ammo_snp_large"},
				{name = "armor2"},
				{name = "grip"},
				{name = "SuppressorPD"},
				{name = "holografik"},
				{name = "tactitalmuzle"},
			{name = "armor"},
		
			{name = "powiekszonymagazynekPD"},
			{name = "kompensatorPD"},
			{name = "flashlight"},
                                
			}},

			BlackMarket = {
				Locations = {
				 
					{ x =   2313.2282714844, y = 4888.498046875, z = 41.808288574219},
			   
				},
				BlackMarketWeapons = {
					--{name = "WEAPON_FLASHLIGHT", ammo = 1},
					--{name = "WEAPON_BAT", ammo = 1},
					--{name = "WEAPON_PISTOL", ammo = 45},
				  {name = "WEAPON_PUMPSHOTGUN", ammo = 25},
				  {name = "WEAPON_COMPACTRIFLE", ammo = 25},
				  {name = "WEAPON_SAWNOFFSHOTGUN", ammo = 25},
				--	{name = "WEAPON_MARKSMANRIFLE", ammo = 25},
					--{name = "WEAPON_STUNGUN", ammo = 25},
					--{name = "WEAPON_ADVANCEDRIFLE", ammo = 25},
					{name = "WEAPON_ASSAULTRIFLE", ammo = 25},
					{name = "WEAPON_MINISMG", ammo = 25},
					{name = "WEAPON_SMG", ammo = 25},
					{name = "WEAPON_MOLOTOV", ammo = 3},
				},
				BlackMarketAmmo = {
				--	{name = "disc_ammo_pistol", weaponhash = "WEAPON_PISTOL", ammo = 24},
				--	{name = "disc_ammo_pistol_large", weaponhash = "WEAPON_PISTOL", ammo = 40},
				--	{name = "disc_ammo_shotgun", weaponhash = "WEAPON_PUMPSHOTGUN", ammo = 12},
				--	{name = "disc_ammo_shotgun_large", weaponhash = "WEAPON_PUMPSHOTGUN", ammo = 30}
				},
				BlackMarketItems = {
					{name = "disc_ammo_pistol"},
					{name = "disc_ammo_shotgun"},
					{name = "disc_ammo_smg"},
					{name = "disc_ammo_rifle"},
					{name = "disc_ammo_snp"},
					{name = "xanax"},
				--	{name = "lockpick"},
				--	{name = "pacificidcard"},
				--	{name = "oxycutter"},
			--		{name = "bag"},
			{name = "hackerDevice"},
			{name = "drugbags"},
			{name = "drugItem"},
					{name = "armor"},
					{name = "powiekszonymagazynek"},
					{name = "kompensator"},
					{name = "flashlight"},
					{name = "holografik"},
					{name = "tactitalmuzle"},
					{name = "headbag"},
					{name = "ziptie"},
					{name = "platin50"},
					{name = "woodheavyp"},
					{name = "wooddlugie"},
					{name = "yusuf"},
					
				}},


				Darknet = {
					Locations = {
					 
				--		{ x = 108.16, y = -1980.28, z = 20.50 },
				--		{ x = -1522.67, y = 117.56, z = 50.05 },
				--		{ x = 338.48, y = -2012.77, z = 22.39 },
				--		{ x = 1438.82, y = -1490.39, z = 66.62 },
				   
					},
					DarknetWeapons = {
					
						{name = "WEAPON_BAT", ammo = 1},
						{name = "WEAPON_PISTOL", ammo = 45},
						{name = "WEAPON_PUMPSHOTGUN", ammo = 25},
					
						{name = "WEAPON_PUMPSHOTGUN", ammo = 25},
					
					{name = "WEAPON_MINISMG", ammo = 25},
					{name = "WEAPON_SMG", ammo = 25},
					{name = "WEAPON_MOLOTOV", ammo = 25},
						
					},
					DarknetAmmo = {
					--	{name = "disc_ammo_pistol", weaponhash = "WEAPON_PISTOL", ammo = 24},
					--	{name = "disc_ammo_pistol_large", weaponhash = "WEAPON_PISTOL", ammo = 40},
					--	{name = "disc_ammo_shotgun", weaponhash = "WEAPON_PUMPSHOTGUN", ammo = 12},
					--	{name = "disc_ammo_shotgun_large", weaponhash = "WEAPON_PUMPSHOTGUN", ammo = 30}
					},
					DarknetItems = {
						{name = "disc_ammo_pistol"},
						{name = "disc_ammo_shotgun"},
						{name = "disc_ammo_smg"},
						{name = "disc_ammo_snp"},
						{name = "armor"},
						{name = "headbag"},
						{name = "ziptie"},
						
					--	{name = "disc_ammo_rifle_large"},
					--	{name = "disc_ammo_rifle"},
					--	{name = "disc_ammo_snp"},
					--	{name = "stockrim"},
					--	{name = "highrim"},
					--	{name = "repairkit"},
					--	{name = "rolex"},
					--	{name = "lowradio"},
					--	{name = "firstaidkit"},
					--	{name = "diamond"},					
					--	{name = "c4_bank"},
					--	{name = "raspberry"},
					--	{name = "bag"},
					--	{name = "airbag"},
					--	{name = "thermite"},
					--	{name = "net_cracker"},
                                               
					--	{name = "bobbypin"},
					--	{name = "rubberband"},
					--	{name = "gunpowder"},
					}},
}

-- Limit, unit can be whatever you want. Originally grams (as average people can hold 25kg)
Config.Limit = 25000

-- Default weight for an item:
-- weight == 0 : The item do not affect character inventory weight
-- weight > 0 : The item cost place on inventory
-- weight < 0 : The item add place on inventory. Smart people will love it.
Config.DefaultWeight = 50000

Config.localWeight = {
	AED = 100,
	alive_chicken = 100,
	bandage = 100,
	beer = 100,
	blowpipe = 100,
	jewels = 50,
	disc_ammo_pistol = 100,
	disc_ammo_pistol_large = 100,
	disc_ammo_smg = 100,
	disc_ammo_smg_large = 100,
	disc_ammo_rifle = 100,
	disc_ammo_rifle_large = 100,
	blowtorch = 100,
	bong = 100,
    bread = 125,
    meth = 150,
    weed = 150,
	opium = 150,
	opium_pooch = 250,
    coke = 150,
	carokit = 100,
	carotool = 100,
	chocolate = 100,
	cigarett = 100,
	clip = 100,
	clothe = 100,
	cocacola = 100,
	cocaine = 100,
	coffe = 100,
	coke_pooch = 250,
	copper = 100,
	cupcake = 100,
	cutted_wood = 100,
	diamond = 100,
	essence = 100,
	fabric = 100,
	fish = 100,
	fishbait = 100,
	fishingrod = 100,
	fixkit = 100,
	fixtool = 100,
	gazbottle = 100,
	gold = 100,
	hamajifish = 100,
	hamburger = 100,
	icetea = 100,
	iron = 100,
	leather = 100,
	lighter = 100,
	marijuana = 350,
	marijuana_cigarette = 100,
	medikit = 100,

	meth_pooch = 250,
	milk = 100,
	oxygen_mask = 100,
	packaged_chicken = 100,
	packaged_plank = 100,
	petrol = 400,
	petrol_raffin = 100,
	prawn = 100,
	prawnbait = 100,
	sandwich = 100,
	shark = 100,
	slaughtered_chicken = 100,
	squid = 100,
	squidbait = 100,
	stone = 100,
	tequila = 100,
	turtle = 100,
	turtlebait = 100,
	vodka = 100,
	washed_stone = 100,
	water = 100,
	weaponflashlight = 100,
	weapongrip = 100,
	weaponskin = 100,
	weed_pooch = 250,
	whisky = 100,
	wine = 100,
	wood = 100,
	wool = 100,
	worm = 100,
	nothing = 300,
	porkpackage = 300,
	pork = 300,
	rice_pro = 300,
	rice = 300,
	phone = 300,
	chest_a = 25,
	chest_a = 25,
	nurek = 25,
	honey_b = 25,
	honey_a = 25,
	marijuana = 25,
	cannabis = 25,
	sickle = 25,
	pizza = 25,
	burger = 25,
	pastacarbonara = 25,
	macka = 25,
	cigarett = 25,
	pro_wood = 25,
	wood = 25,
	meth_pooch = 25,
	meth = 25,
	marijuana = 25,
	cannabis = 25,
	wool = 25,
	clothe = 25,
	glass = 25,
	sands = 25,
	bcabbage = 25,
	acabbage = 25,
	gold_t = 25,
	gold_o = 25,
	mushroom = 25,
	mushroom_d = 25,
	mushroom_p = 25,
	oil_b = 25,
	oil_a = 25,
	leather_a = 25,
	meat_a = 25,
	meat_w = 25,
	drill = 25,
	medikit = 25,
	medikit = 25,
	bandage = 25,
	gps = 25,
	fishingrod = 25,
	Cottageleaves_box = 25,
	marijuana = 25,
	cannabis = 25,
	WEAPON_SMG = 50,
	WEAPON_CARBINERIFLE = 3000,
	WEAPON_SPECIALCARBINE = 3000,
	WEAPON_ASSAULTRIFLE = 3000,
	WEAPON_PUMPSHOTGUN = 2000,
	WEAPON_PISTOL = 1000,
	WEAPON_APPISTOL = 1000,
	WEAPON_MACHINEPISTOL = 1500,
	WEAPON_COMBATPISTOL = 1000
}

Config.VehicleLimit = {
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

Config.VehiclePlate = {
    taxi = "TAXI",
    cop = "LSPD",
    ambulance = "EMS0",
    mecano = "MECA"
}
