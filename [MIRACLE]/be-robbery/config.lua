Config = {}
Config.Locale = 'en'
Config.NumberOfCopsRequired = 1

Config.moneyType = 'black' -- 'cash' or 'black'

Banks = {
	["warship"] = {
		position = { ['x'] = 3085.09, ['y'] = -4686.49, ['z'] = 27.25 },
		reward = math.random(1200000,1500000),
		nameofbank = "Warship",
		lastrobbed = 0
	},
	["humane"] = {
		position = { ['x']  = 3589.88, ['y'] = 3683.94, ['z'] = 27.62 },
		reward = math.random(750000,800000),
		nameofbank = "Humane Labs",
		lastrobbed = 0
	},
	["bigbank"] = {
		position = { ['x']  = 265.87, ['y'] = 213.6, ['z'] = 100.78 },
		reward = math.random(750000,800000),
		nameofbank = "Big Bank",
		lastrobbed = 0
	},
}

