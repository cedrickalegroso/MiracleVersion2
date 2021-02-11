Config = {}

-- Ammo given by default to crafted weapons
Config.WeaponAmmo = 100

Config.Recipes = {
	-- Can be a normal ESX item
		-- Can be a normal ESX item
	

		["lockpick"] = { 
		 {item = "trunk", quantity = 2 }, 
		 {item = "doors", quantity = 1 },
		},

		["advancedlockpick"] = { 
			{item = "trunk", quantity = 4 }, 
			{item = "doors", quantity = 5 },
		   },
		
		['ExtendedClip'] = { 
		 {item = "oilpump", quantity = 2}, 
		 {item = "hood", quantity = 1}, 
		 {item = "muffler", quantity = 4},
		},
		
		['Suppressor'] = { 
		 {item = "oilpump", quantity = 2}, 
		 {item = "muffler", quantity = 4},
		},
		
		['hackerDevice'] = { 
		 {item = "speakers", quantity = 3}, 
		 {item = "engine", quantity = 2},
		 {item = "radio", quantity = 4},
		},
		
		['GoldSkin'] = { 
		 {item = "subwoofer", quantity = 2}, 
		 {item = "muffler", quantity = 4},
		},
		

		
		['WEAPON_ASSAULTRIFLE'] = { 
		 {item = "hood", quantity = 5 }, 
		 {item = "oilpump", quantity = 1 }, 
		 {item = "battery", quantity = 3 }, 
		 {item = "muffler", quantity = 2},
		},
		
		['WEAPON_PISTOL'] = { 
		 {item = "hood", quantity = 3 }, 
		 {item = "oilpump", quantity = 1 }, 
		 {item = "muffler", quantity = 1},
		},
		
		['WEAPON_SMG'] = { 
		 {item = "hood", quantity = 3 }, 
		 {item = "oilpump", quantity = 1 }, 
		 {item = "battery", quantity = 2 }, 
		 {item = "muffler", quantity = 1},
		},

}



-- Enable a shop to access the crafting menu
Config.Shop = {
	useShop = true,
	shopCoordinates = { x=962.5, y=-1585.5, z=29.6 },
	shopName = "Crafting Station",
	shopBlipID = 446,
	zoneSize = { x = 2.5, y = 2.5, z = 1.5 },
	zoneColor = { r = 255, g = 0, b = 0, a = 100 }
}

-- Enable crafting menu through a keyboard shortcut
Config.Keyboard = {
	useKeyboard = false,
	keyCode = 303
}
