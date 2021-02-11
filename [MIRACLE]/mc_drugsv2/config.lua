Config              	= {}
Config.MarkerType   	= 1
Config.DrawDistance 	= 100.0
Config.ZoneSize     	= {x = 2.5, y = 2.5, z = 0.5}
Config.MarkerColor  	= {r = 100, g = 204, b = 100}
Config.KeyStopAction 	= 'C'
-- Show blip in map?
Config.ShowBlips    	= true

Config.Locale 			= 'en'

-- Before add any drug/item here you have to add the translation of the item
Config.Drugs = {
	-- Translated name
	[_U('weed')] = {
		Item			= 'weed',				 	-- Item to pickup
		ItemTransform	= 'weed_pooch', 			-- Item to transform
		AlertCops		= true, 					-- Alert police?
		RequiredCops	= 0, 						-- How many cops need to the action start??
		QToProcess		= 5,						-- Quantity necessary to process
		QToSell			= 1,						-- Quantity necessary to sell
		TimeToFarm		= 5,						-- Time to farm in seconds
		TimeToProcess	= 5,						-- Time to process in seconds
		TimeToSell		= 15,			-- Time to sell in seconds
		Usable			= false,						-- Can it be consumed?
		UseEffect		= false,						-- Effect after consume
		Zones			= {
			-- Field: Farm location
			-- Processing: Process location
			-- Dealer: Seller location
			-- callPolice: true/false, call the police in the position?
			-- callPoliceChance: chance in percentage to call the police
			-- sellMin: Min receveid by selling
			-- sellMax: Max received by selling
			-- multiplierPolice: true/false Multiply the min/max based on cops online

			

			Field 			= {x =-750.19445800781,	y = 4321.5400390625,	z = 140.96272277832,	name = _U('field', _U('weed')),			sprite = 496,	color = 52, callPolice = false, callPoliceChance = 100},
			Processing 		= {x = 1714.57,	y = -1598.12,	z = 112.85,	name = _U('processing', _U('weed')),	sprite = 496,	color = 52, callPolice = false, callPoliceChance = 100},
			Dealer 		= {x = 448.45,	y = 3521.1,	z = 32.60, h = 45.24,	name = _U('dealer', _U('weed')),		sprite = 500,	color = 75, callPolice = false, callPoliceChance = 100, NPCHash = 653210662, sellMin = 200, sellMax = 500, multiplierPolice = true},
		}
	},
	-- Translated name
	[_U('meth')] = {
		Item			= 'meth',				 	-- Item to pickup
		ItemTransform	= 'meth_pooch', 			-- Item to transform
		AlertCops 		= true, 					-- Alert police?
		RequiredCops	= 0, 						-- How many cops need to the action start??
		QToProcess		= 5,						-- Quantity necessary to process
		QToSell			= 1,						-- Quantity necessary to sell
		TimeToFarm		= 5,						-- Time to farm in seconds
		TimeToProcess 	= 5,						-- Time to process in seconds
		TimeToSell		= 15,					-- Time to sell in seconds
		Usable			= false,						-- Can it be consumed?
		UseEffect		= false,						-- Effect after consume
		Zones 			= {
			-- Field: Farm location
			-- Processing: Process location
			-- Dealer: Seller location
			-- callPolice: true/false, call the police in the position?
			-- callPoliceChance: chance in percentage to call the police
			-- sellMin: Min receveid by selling
			-- sellMax: Max received by selling
			-- multiplierPolice: true/false Multiply the min/max based on cops online
			Field 			= {x = -1384.19,	y = 4634.73,	z = 77.0,	        name = _U('field', _U('meth')),			sprite = 499,	color = 26, callPolice = false, callPoliceChance = 100},
			Processing 		= {x = 3334.4580078125,	y = 5164.4731445312,	z = 17.510663223267,	name = _U('processing', _U('meth')),	sprite = 499,	color = 26, callPolice = false, callPoliceChance = 100},
			Dealer 		= {x =1961.1517333984,	y = 5185.060546875,	z = 47.250878143311, h = 45.24,	name = _U('dealer', _U('meth')),		sprite = 500,	color = 75, callPolice = false, callPoliceChance = 100, NPCHash = 653210662, sellMin = 200, sellMax = 500, multiplierPolice = true},
		}
	},
	-- Translated name
	[_U('opium')] = {
		Item			= 'opium',				 	-- Item to pickup
		ItemTransform	= 'opium_pooch', 			-- Item to transform
		AlertCops 		= true, 					-- Alert police?
		RequiredCops	= 0, 						-- How many cops need to the action start??
		QToProcess		= 5,						-- Quantity necessary to process
		QToSell			= 1,						-- Quantity necessary to sell
		TimeToFarm		= 5,						-- Time to farm in seconds
		TimeToProcess 	= 5,						-- Time to process in seconds
		TimeToSell		= 15,						-- Time to sell in seconds
		Usable			= false,						-- Can it be consumed?
		UseEffect		= false,						-- Effect after consume
		Zones 			= {
			-- Field: Farm location
			-- Processing: Process location
			-- Dealer: Seller location
			-- callPolice: true/false, call the police in the position?
			-- callPoliceChance: chance in percentage to call the police
			-- sellMin: Min receveid by selling
			-- sellMax: Max received by selling
			-- multiplierPolice: true/false Multiply the min/max based on cops online

	
			Field 			= {x = 1705.06,	y = 3845.58,	z = 34.10,	name = _U('field', _U('opium')), sprite = 51, color = 60, callPolice = false, callPoliceChance = 100},
			Processing 		= {x = -58.77,	y = -2245.28,	z = 8.45,	name = _U('processing', _U('opium')), sprite = 51, color = 60, callPolice = false, callPoliceChance = 100},
			Dealer 			= {x = 2328.91,	y = 2571.36,	z = 45.95, h = 45.24, name = _U('dealer', _U('opium')),	sprite = 500,	color = 75, callPolice = false, callPoliceChance = 100, NPCHash = 653210662, sellMin = 200, sellMax = 500, multiplierPolice = true},
		}
	},
	-- Translated name
	[_U('coke')] = {
		Item			= 'coke',				 	-- Item to pickup
		ItemTransform	= 'coke_pooch', 			-- Item to transform
		AlertCops		= true, 					-- Alert police?
		RequiredCops	= 0, 						-- How many cops need to the action start??
		QToProcess		= 5,						-- Quantity necessary to process
		QToSell			= 1,						-- Quantity necessary to sell
		TimeToFarm		= 5,						-- Time to farm in seconds
		TimeToProcess 	= 5,						-- Time to process in seconds
		TimeToSell		= 15,						-- Time to sell in seconds
		Usable			= false,						-- Can it be consumed?
		UseEffect		= false,						-- Effect after consume
		Zones 			= {
			-- Field: Farm location
			-- Processing: Process location
			-- Dealer: Seller location
			-- callPolice: true/false, call the police in the position?
			-- callPoliceChance: chance in percentage to call the police
			-- sellMin: Min receveid by selling
			-- sellMax: Max received by selling
			-- multiplierPolice: true/false Multiply the min/max based on cops online
			Field 			= {x = 1671.54,	y = 6648.65,	z = 9.80,	name = _U('field', _U('coke')),			sprite = 501,	color = 40, callPolice = false, callPoliceChance = 100},
			Processing 		= {x = -2017.19,	y = 559.6,	z = 107.50,	name = _U('processing', _U('coke')),	sprite = 478,	color = 40, callPolice = false, callPoliceChance = 100},
		    Dealer 			= {x = -1969.54,	y = -516.39,	z = 10.90, h = 45.24,	name = _U('dealer', _U('coke')),		sprite = 500,	color = 75, callPolice = false, callPoliceChance = 100, NPCHash = 653210662, sellMin = 200, sellMax = 500, multiplierPolice = true}
		}
	},
	

			


}
