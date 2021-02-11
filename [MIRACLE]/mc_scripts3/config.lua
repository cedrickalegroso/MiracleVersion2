Config                            = {}
Config.Locale                     = 'en'

Config.DrawDistance               = 20.0 -- How close you need to be in order for the markers to be drawn (in GTA units).
Config.MaxInService               = -1
Config.EnablePlayerManagement     = true -- Enable society managing.
Config.EnableSocietyOwnedVehicles = false

Config.NPCSpawnDistance           = 500.0
Config.NPCNextToDistance          = 25.0
Config.NPCJobEarnings             = { min = 15, max = 40 }

Config.Vehicles = {
	'adder',
	'asea',
	'asterope',
	'banshee',
	'buffalo',
	'sultan',
	'baller3'
}

Config.Zones = {

	MechanicActions = {
		Pos   = { x = 1000.56, y = -2313.08, z = 34.50 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Color = { r = 204, g = 204, b = 0 },
		Type  = 27
	},

	Garage = {
		Pos   = { x = 1012.66, y = -2332.85, z = 29.80 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Color = { r = 204, g = 204, b = 0 },
		Type  = 27
	},

	Craft = {
		Pos   = { x = 1013.01, y = -2313.94, z = 29.80 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Color = { r = 204, g = 204, b = 0 },
		Type  = 27
	},

	VehicleSpawnPoint = {
		Pos   = { x = 1008.24, y = -2328.05, z = 30.51 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Type  = -1
	},

	VehicleDeleter = {
		Pos   = { x = 990.53, y = -2339.89, z = 30.51 },
		Size  = { x = 3.0, y = 3.0, z = 1.0 },
		Color = { r = 204, g = 204, b = 0 },
		Type  = 1
	},

	VehicleDelivery = {
		Pos   = { x = 1007.07, y = -2335.88, z = 30.51 },
		Size  = { x = 20.0, y = 20.0, z = 3.0 },
		Color = { r = 204, g = 204, b = 0 },
		Type  = -1
	}
}

Config.Towables = {
	vector3(-2480.9, -212.0, 17.4),
	vector3(-2723.4, 13.2, 15.1),
	vector3(-3169.6, 976.2, 15.0),
	vector3(-3139.8, 1078.7, 20.2),
	vector3(-1656.9, -246.2, 54.5),
	vector3(-1586.7, -647.6, 29.4),
	vector3(-1036.1, -491.1, 36.2),
	vector3(-1029.2, -475.5, 36.4),
	vector3(75.2, 164.9, 104.7),
	vector3(-534.6, -756.7, 31.6),
	vector3(487.2, -30.8, 88.9),
	vector3(-772.2, -1281.8, 4.6),
	vector3(-663.8, -1207.0, 10.2),
	vector3(719.1, -767.8, 24.9),
	vector3(-971.0, -2410.4, 13.3),
	vector3(-1067.5, -2571.4, 13.2),
	vector3(-619.2, -2207.3, 5.6),
	vector3(1192.1, -1336.9, 35.1),
	vector3(-432.8, -2166.1, 9.9),
	vector3(-451.8, -2269.3, 7.2),
	vector3(939.3, -2197.5, 30.5),
	vector3(-556.1, -1794.7, 22.0),
	vector3(591.7, -2628.2, 5.6),
	vector3(1654.5, -2535.8, 74.5),
	vector3(1642.6, -2413.3, 93.1),
	vector3(1371.3, -2549.5, 47.6),
	vector3(383.8, -1652.9, 37.3),
	vector3(27.2, -1030.9, 29.4),
	vector3(229.3, -365.9, 43.8),
	vector3(-85.8, -51.7, 61.1),
	vector3(-4.6, -670.3, 31.9),
	vector3(-111.9, 92.0, 71.1),
	vector3(-314.3, -698.2, 32.5),
	vector3(-366.9, 115.5, 65.6),
	vector3(-592.1, 138.2, 60.1),
	vector3(-1613.9, 18.8, 61.8),
	vector3(-1709.8, 55.1, 65.7),
	vector3(-521.9, -266.8, 34.9),
	vector3(-451.1, -333.5, 34.0),
	vector3(322.4, -1900.5, 25.8)
}

for k,v in ipairs(Config.Towables) do
	Config.Zones['Towable' .. k] = {
		Pos   = v,
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Color = { r = 204, g = 204, b = 0 },
		Type  = -1
	}
end


---- POPO


Config.DrawDistancePO               = 100.0
Config.MarkerTypePO                 = 1
Config.MarkerSizePO                 = {x = 1.5, y = 1.5, z = 0.5}
Config.MarkerColorPO                = {r = 50, g = 50, b = 204}

Config.EnablePlayerManagementPO     = true
Config.EnableArmoryManagementPO     = true
Config.EnableESXIdentityPO          = true -- enable if you're using esx_identity
Config.EnableLicensesPO             = true -- enable if you're using esx_license

Config.EnableHandcuffTimerPO        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimerPO              = 10 * 60000 -- 10 mins

Config.EnableJobBlipPO              = true -- enable blips for cops on duty, requires esx_society
Config.EnableCustomPedsPO           = false -- enable custom peds in cloak room? See Config.CustomPeds below to customize peds

Config.EnableESXServicePO           = false -- enable esx service?
Config.MaxInServicePO               = 5

Config.PoliceStationsPO = {

	LSPD = {

		Blip = {
			Coords  = vector3(425.1, -979.5, 30.7),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29
		},

		Cloakrooms = {
			vector3(452.6, -992.8, 30.6)
		},

		Armories = {
			vector3(451.7, -980.1, 30.6)
		},

		Vehicles = {
			{
				Spawner = vector3(454.6, -1017.4, 28.4),
				InsideShop = vector3(228.5, -993.5, -99.5),
				SpawnPoints = {
					{coords = vector3(438.4, -1018.3, 27.7), heading = 90.0, radius = 6.0},
					{coords = vector3(441.0, -1024.2, 28.3), heading = 90.0, radius = 6.0},
					{coords = vector3(453.5, -1022.2, 28.0), heading = 90.0, radius = 6.0},
					{coords = vector3(450.9, -1016.5, 28.1), heading = 90.0, radius = 6.0}
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
			vector3(448.35, -973.2, 30.6)
		}

	}

}

Config.AuthorizedWeaponsPO = {
	recruit = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 1500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 80},
		{weapon = 'disc_ammo_pistol', price = 80},
		{weapon = 'disc_ammo_shotgun', price = 80}

	},

	police_officer_1 = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	police_officer_2 = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	police_officer_3 = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	senior_police_officer_1 = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	senior_police_officer_2 = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	senior_police_officer_3 = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	senior_police_officer_4 = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	inspector = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	senior_Inspector = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	chief_Inspector = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	superintendent = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	chief_superintendent = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	Director = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	deputy_director_general = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	director_general = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0},
	
	}
}

Config.AuthorizedVehiclesPO = {
	car = {
		recruit = {
			{model = 'pdbike', price = 5000},
			{model = 'policeb', price = 10000}	
		},

		police_officer_1 = {
			{model = 'pdbike', price = 5000},
			{model = 'policeb', price = 10000}	
		},

		police_officer_2 = {
			{model = 'pdbike', price = 5000},
			{model = 'policeb', price = 10000}	
		},

		police_officer_3 = {
			{model = 'pdbike', price = 5000},
			{model = 'policeb', price = 10000}		
		},

		senior_police_officer_1 = {
			{model = 'pdbike', price = 5000},
			{model = 'policeb', price = 10000},
			{model = '2018k9chgrrb', price = 20000}	
		},

		senior_police_officer_2 = {
			{model = 'pdbike', price = 5000},
			{model = 'policeb', price = 10000},
			{model = '2018k9chgrrb', price = 20000}	
		},

		senior_police_officer_3 = {
			{model = 'pdbike', price = 5000},
			{model = 'policeb', price = 10000},
			{model = '2018k9chgrrb', price = 20000}	
		},
		senior_police_officer_4 = {
			{model = 'pdbike', price = 5000},
			{model = 'policeb', price = 10000},
			{model = '2018k9chgrrb', price = 20000}	
		},

		inspector = {
			{model = 'pdbike', price = 5000},
			{model = 'policeb', price = 10000},
			{model = '2018k9chgrrb', price = 20000}	
		},

		senior_Inspector = {
			{model = 'pdbike', price = 5000},
			{model = 'policeb', price = 10000},
			{model = '2018k9chgrrb', price = 20000},
			{model = '2015polstang', price = 30000}	
		},

		chief_Inspector = {
			{model = 'pdbike', price = 5000},
			{model = 'policeb', price = 10000},
			{model = '2018k9chgrrb', price = 20000},
			{model = '2015polstang', price = 30000}	
		},

		superintendent = {
			{model = 'pdbike', price = 5000},
			{model = 'policeb', price = 10000},
			{model = '2018k9chgrrb', price = 20000},
			{model = '2015polstang', price = 30000}	
		},
		chief_superintendent = {
			{model = 'pdbike', price = 5000},
			{model = 'policeb', price = 10000},
			{model = '2018k9chgrrb', price = 20000},
			{model = '2015polstang', price = 30000},
			{model = 'polmp4', price = 40000}	
		},
		Director = {
			{model = 'pdbike', price = 5000},
			{model = 'policeb', price = 10000},
			{model = '2018k9chgrrb', price = 20000},
			{model = '2015polstang', price = 30000},
			{model = 'polmp4', price = 40000}
		},
		deputy_director_general = {
			{model = 'pdbike', price = 5000},
			{model = 'policeb', price = 10000},
			{model = '2018k9chgrrb', price = 20000},
			{model = '2015polstang', price = 30000},
			{model = 'polmp4', price = 40000}
		},
		director_general = {
			{model = 'pdbike', price = 5000},
			{model = 'policeb', price = 10000},
			{model = '2018k9chgrrb', price = 20000},
			{model = '2015polstang', price = 30000},
			{model = 'polmp4', price = 40000}
		},
		chief_superintendent = {
			{model = 'pdbike', price = 5000},
			{model = 'policeb', price = 10000},
			{model = '2018k9chgrrb', price = 20000},
			{model = '2015polstang', price = 30000},
			{model = 'polmp4', price = 40000},
			{model = 'police5', price = 50000},
			
		},

		boss = {
			{model = 'pdbike', price = 5000},
			{model = 'policeb', price = 10000},
			{model = '2018k9chgrrb', price = 20000},
			{model = '2015polstang', price = 30000},
			{model = 'polmp4', price = 40000},
			{model = 'police5', price = 50000},
		}
	},

	helicopter = {
		recruit = {
			
		},

		police_officer_1 = {
		
		},

		police_officer_2 = {
		},
			
		police_officer_3 = {
		
		},

		senior_police_officer_1 = {
			
		},

		senior_police_officer_2 = {
	
		},

		senior_police_officer_3 = {
		
		},
		senior_police_officer_4 = {
		
		},

		inspector = {
			{model = 'polmav', props = {modLivery = 0}, price = 100000}
		},

		senior_Inspector = {
			{model = 'polmav', props = {modLivery = 0}, price = 100000}
		},

		chief_Inspector = {
			{model = 'polmav', props = {modLivery = 0}, price = 100000}
		},

		superintendent = {
			{model = 'polmav', props = {modLivery = 0}, price = 100000}
		},
		chief_superintendent = {
			{model = 'polmav', props = {modLivery = 0}, price = 100000}
		},
		Director = {
			{model = 'polmav', props = {modLivery = 0}, price = 100000}
		},
		deputy_director_general = {
			{model = 'polmav', props = {modLivery = 0}, price = 100000}
		},
		director_general = {
			{model = 'polmav', props = {modLivery = 0}, price = 100000}
		},
		chief_superintendent = {
			{model = 'polmav', props = {modLivery = 0}, price = 100000}
		},

	

		boss = {
			{model = 'polmav', props = {modLivery = 0}, price = 100000}
		}
	}
}

Config.CustomPedsPO = {
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
Config.UniformsPO = {
	recruit = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 18,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 5,
			pants_1 = .0,   pants_2 = 0,
			shoes_1 = 33,   shoes_2 = 0,
			helmet_1 = 0,  helmet_2 = 0,
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
			helmet_1 = 0,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},
	police_officer_1 = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 18,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 5,
			pants_1 = .0,   pants_2 = 0,
			shoes_1 = 33,   shoes_2 = 0,
			helmet_1 = 0,  helmet_2 = 0,
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
	police_officer_2 = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 18,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 5,
			pants_1 = .0,   pants_2 = 0,
			shoes_1 = 33,   shoes_2 = 0,
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
	police_officer_3 = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 18,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 5,
			pants_1 = .0,   pants_2 = 0,
			shoes_1 = 33,   shoes_2 = 0,
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
	senior_police_officer_1 = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 18,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 5,
			pants_1 = .0,   pants_2 = 0,
			shoes_1 = 33,   shoes_2 = 0,
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
	senior_police_officer_2 = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 18,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 5,
			pants_1 = .0,   pants_2 = 0,
			shoes_1 = 33,   shoes_2 = 0,
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
	senior_police_officer_3 = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 18,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 5,
			pants_1 = .0,   pants_2 = 0,
			shoes_1 = 33,   shoes_2 = 0,
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
	senior_police_officer_3 = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 18,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 5,
			pants_1 = .0,   pants_2 = 0,
			shoes_1 = 33,   shoes_2 = 0,
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
	inspector = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 18,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 5,
			pants_1 = .0,   pants_2 = 0,
			shoes_1 = 33,   shoes_2 = 0,
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
	chief_Inspector = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 18,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 5,
			pants_1 = .0,   pants_2 = 0,
			shoes_1 = 33,   shoes_2 = 0,
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

	superintendent = {
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

	chief_superintendent = {
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

	Director = {
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

	deputy_director_general = {
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

	director_general = {
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

----AMBU






--LSCUSTOM


Config.DrawDistance      = 100.0
Config.IsMechanicJobOnly = true

Config.ZonesLS = {
	
	ls1 = { -- ,,
		Pos   = { x = -323.47399902344, y = -132.34059143066, z = 38.957599639893},
		Size  = {x = 3.0, y = 3.0, z = 0.2},
		Color = {r = 204, g = 204, b = 0},
		Marker= 1,
		Name  = _U('blip_name'),
		Hint  = _U('press_custom')
	},
	
	ls2 = { -- ,,
		Pos   = { x = -321.18768310547, y = -125.67749786377, z = 38.973445892334},
		Size  = {x = 3.0, y = 3.0, z = 0.2},
		Color = {r = 204, g = 204, b = 0},
		Marker= 1,
		Name  = _U('blip_name'),
		Hint  = _U('press_custom')
	},

	ls3 = { -- ,,
		Pos   = { x = -319.47225952148, y = -119.50443267822, z = 39.009677886963},
		Size  = {x = 3.0, y = 3.0, z = 0.2},
		Color = {r = 204, g = 204, b = 0},
		Marker= 1,
		Name  = _U('blip_name'),
		Hint  = _U('press_custom')
	},
	

}

Config.Colors = {
	{label = _U('black'), value = 'black'},
	{label = _U('white'), value = 'white'},
	{label = _U('grey'), value = 'grey'},
	{label = _U('red'), value = 'red'},
	{label = _U('pink'), value = 'pink'},
	{label = _U('blue'), value = 'blue'},
	{label = _U('yellow'), value = 'yellow'},
	{label = _U('green'), value = 'green'},
	{label = _U('orange'), value = 'orange'},
	{label = _U('brown'), value = 'brown'},
	{label = _U('purple'), value = 'purple'},
	{label = _U('chrome'), value = 'chrome'},
	{label = _U('gold'), value = 'gold'}
}

function GetColors(color)
	local colors = {}
	if color == 'black' then
		colors = {
			{ index = 0, label = _U('black')},
			{ index = 1, label = _U('graphite')},
			{ index = 2, label = _U('black_metallic')},
			{ index = 3, label = _U('caststeel')},
			{ index = 11, label = _U('black_anth')},
			{ index = 12, label = _U('matteblack')},
			{ index = 15, label = _U('darknight')},
			{ index = 16, label = _U('deepblack')},
			{ index = 21, label = _U('oil')},
			{ index = 147, label = _U('carbon')}
		}
	elseif color == 'white' then
		colors = {
			{ index = 106, label = _U('vanilla')},
			{ index = 107, label = _U('creme')},
			{ index = 111, label = _U('white')},
			{ index = 112, label = _U('polarwhite')},
			{ index = 113, label = _U('beige')},
			{ index = 121, label = _U('mattewhite')},
			{ index = 122, label = _U('snow')},
			{ index = 131, label = _U('cotton')},
			{ index = 132, label = _U('alabaster')},
			{ index = 134, label = _U('purewhite')}
		}
	elseif color == 'grey' then
		colors = {
			{ index = 4, label = _U('silver')},
			{ index = 5, label = _U('metallicgrey')},
			{ index = 6, label = _U('laminatedsteel')},
			{ index = 7, label = _U('darkgray')},
			{ index = 8, label = _U('rockygray')},
			{ index = 9, label = _U('graynight')},
			{ index = 10, label = _U('aluminum')},
			{ index = 13, label = _U('graymat')},
			{ index = 14, label = _U('lightgrey')},
			{ index = 17, label = _U('asphaltgray')},
			{ index = 18, label = _U('grayconcrete')},
			{ index = 19, label = _U('darksilver')},
			{ index = 20, label = _U('magnesite')},
			{ index = 22, label = _U('nickel')},
			{ index = 23, label = _U('zinc')},
			{ index = 24, label = _U('dolomite')},
			{ index = 25, label = _U('bluesilver')},
			{ index = 26, label = _U('titanium')},
			{ index = 66, label = _U('steelblue')},
			{ index = 93, label = _U('champagne')},
			{ index = 144, label = _U('grayhunter')},
			{ index = 156, label = _U('grey')}
		}
	elseif color == 'red' then
		colors = {
			{ index = 27, label = _U('red')},
			{ index = 28, label = _U('torino_red')},
			{ index = 29, label = _U('poppy')},
			{ index = 30, label = _U('copper_red')},
			{ index = 31, label = _U('cardinal')},
			{ index = 32, label = _U('brick')},
			{ index = 33, label = _U('garnet')},
			{ index = 34, label = _U('cabernet')},
			{ index = 35, label = _U('candy')},
			{ index = 39, label = _U('matte_red')},
			{ index = 40, label = _U('dark_red')},
			{ index = 43, label = _U('red_pulp')},
			{ index = 44, label = _U('bril_red')},
			{ index = 46, label = _U('pale_red')},
			{ index = 143, label = _U('wine_red')},
			{ index = 150, label = _U('volcano')}
		}
	elseif color == 'pink' then
		colors = {
			{ index = 135, label = _U('electricpink')},
			{ index = 136, label = _U('salmon')},
			{ index = 137, label = _U('sugarplum')}
		}
	elseif color == 'blue' then
		colors = {
			{ index = 54, label = _U('topaz')},
			{ index = 60, label = _U('light_blue')},
			{ index = 61, label = _U('galaxy_blue')},
			{ index = 62, label = _U('dark_blue')},
			{ index = 63, label = _U('azure')},
			{ index = 64, label = _U('navy_blue')},
			{ index = 65, label = _U('lapis')},
			{ index = 67, label = _U('blue_diamond')},
			{ index = 68, label = _U('surfer')},
			{ index = 69, label = _U('pastel_blue')},
			{ index = 70, label = _U('celeste_blue')},
			{ index = 73, label = _U('rally_blue')},
			{ index = 74, label = _U('blue_paradise')},
			{ index = 75, label = _U('blue_night')},
			{ index = 77, label = _U('cyan_blue')},
			{ index = 78, label = _U('cobalt')},
			{ index = 79, label = _U('electric_blue')},
			{ index = 80, label = _U('horizon_blue')},
			{ index = 82, label = _U('metallic_blue')},
			{ index = 83, label = _U('aquamarine')},
			{ index = 84, label = _U('blue_agathe')},
			{ index = 85, label = _U('zirconium')},
			{ index = 86, label = _U('spinel')},
			{ index = 87, label = _U('tourmaline')},
			{ index = 127, label = _U('paradise')},
			{ index = 140, label = _U('bubble_gum')},
			{ index = 141, label = _U('midnight_blue')},
			{ index = 146, label = _U('forbidden_blue')},
			{ index = 157, label = _U('glacier_blue')}
		}
	elseif color == 'yellow' then
		colors = {
			{ index = 42, label = _U('yellow')},
			{ index = 88, label = _U('wheat')},
			{ index = 89, label = _U('raceyellow')},
			{ index = 91, label = _U('paleyellow')},
			{ index = 126, label = _U('lightyellow')}
		}
	elseif color == 'green' then
		colors = {
			{ index = 49, label = _U('met_dark_green')},
			{ index = 50, label = _U('rally_green')},
			{ index = 51, label = _U('pine_green')},
			{ index = 52, label = _U('olive_green')},
			{ index = 53, label = _U('light_green')},
			{ index = 55, label = _U('lime_green')},
			{ index = 56, label = _U('forest_green')},
			{ index = 57, label = _U('lawn_green')},
			{ index = 58, label = _U('imperial_green')},
			{ index = 59, label = _U('green_bottle')},
			{ index = 92, label = _U('citrus_green')},
			{ index = 125, label = _U('green_anis')},
			{ index = 128, label = _U('khaki')},
			{ index = 133, label = _U('army_green')},
			{ index = 151, label = _U('dark_green')},
			{ index = 152, label = _U('hunter_green')},
			{ index = 155, label = _U('matte_foilage_green')}
		}
	elseif color == 'orange' then
		colors = {
			{ index = 36, label = _U('tangerine')},
			{ index = 38, label = _U('orange')},
			{ index = 41, label = _U('matteorange')},
			{ index = 123, label = _U('lightorange')},
			{ index = 124, label = _U('peach')},
			{ index = 130, label = _U('pumpkin')},
			{ index = 138, label = _U('orangelambo')}
		}
	elseif color == 'brown' then
		colors = {
			{ index = 45, label = _U('copper')},
			{ index = 47, label = _U('lightbrown')},
			{ index = 48, label = _U('darkbrown')},
			{ index = 90, label = _U('bronze')},
			{ index = 94, label = _U('brownmetallic')},
			{ index = 95, label = _U('Expresso')},
			{ index = 96, label = _U('chocolate')},
			{ index = 97, label = _U('terracotta')},
			{ index = 98, label = _U('marble')},
			{ index = 99, label = _U('sand')},
			{ index = 100, label = _U('sepia')},
			{ index = 101, label = _U('bison')},
			{ index = 102, label = _U('palm')},
			{ index = 103, label = _U('caramel')},
			{ index = 104, label = _U('rust')},
			{ index = 105, label = _U('chestnut')},
			{ index = 108, label = _U('brown')},
			{ index = 109, label = _U('hazelnut')},
			{ index = 110, label = _U('shell')},
			{ index = 114, label = _U('mahogany')},
			{ index = 115, label = _U('cauldron')},
			{ index = 116, label = _U('blond')},
			{ index = 129, label = _U('gravel')},
			{ index = 153, label = _U('darkearth')},
			{ index = 154, label = _U('desert')}
		}
	elseif color == 'purple' then
		colors = {
			{ index = 71, label = _U('indigo')},
			{ index = 72, label = _U('deeppurple')},
			{ index = 76, label = _U('darkviolet')},
			{ index = 81, label = _U('amethyst')},
			{ index = 142, label = _U('mysticalviolet')},
			{ index = 145, label = _U('purplemetallic')},
			{ index = 148, label = _U('matteviolet')},
			{ index = 149, label = _U('mattedeeppurple')}
		}
	elseif color == 'chrome' then
		colors = {
			{ index = 117, label = _U('brushedchrome')},
			{ index = 118, label = _U('blackchrome')},
			{ index = 119, label = _U('brushedaluminum')},
			{ index = 120, label = _U('chrome')}
		}
	elseif color == 'gold' then
		colors = {
			{ index = 37, label = _U('gold')},
			{ index = 158, label = _U('puregold')},
			{ index = 159, label = _U('brushedgold')},
			{ index = 160, label = _U('lightgold')}
		}
	end
	return colors
end

function GetWindowName(index)
	if (index == 1) then
		return "Pure Black"
	elseif (index == 2) then
		return "Darksmoke"
	elseif (index == 3) then
		return "Lightsmoke"
	elseif (index == 4) then
		return "Limo"
	elseif (index == 5) then
		return "Green"
	else
		return "Unknown"
	end
end

function GetHornName(index)
	if (index == 0) then
		return "Truck Horn"
	elseif (index == 1) then
		return "Cop Horn"
	elseif (index == 2) then
		return "Clown Horn"
	elseif (index == 3) then
		return "Musical Horn 1"
	elseif (index == 4) then
		return "Musical Horn 2"
	elseif (index == 5) then
		return "Musical Horn 3"
	elseif (index == 6) then
		return "Musical Horn 4"
	elseif (index == 7) then
		return "Musical Horn 5"
	elseif (index == 8) then
		return "Sad Trombone"
	elseif (index == 9) then
		return "Classical Horn 1"
	elseif (index == 10) then
		return "Classical Horn 2"
	elseif (index == 11) then
		return "Classical Horn 3"
	elseif (index == 12) then
		return "Classical Horn 4"
	elseif (index == 13) then
		return "Classical Horn 5"
	elseif (index == 14) then
		return "Classical Horn 6"
	elseif (index == 15) then
		return "Classical Horn 7"
	elseif (index == 16) then
		return "Scale - Do"
	elseif (index == 17) then
		return "Scale - Re"
	elseif (index == 18) then
		return "Scale - Mi"
	elseif (index == 19) then
		return "Scale - Fa"
	elseif (index == 20) then
		return "Scale - Sol"
	elseif (index == 21) then
		return "Scale - La"
	elseif (index == 22) then
		return "Scale - Ti"
	elseif (index == 23) then
		return "Scale - Do"
	elseif (index == 24) then
		return "Jazz Horn 1"
	elseif (index == 25) then
		return "Jazz Horn 2"
	elseif (index == 26) then
		return "Jazz Horn 3"
	elseif (index == 27) then
		return "Jazz Horn Loop"
	elseif (index == 28) then
		return "Star Spangled Banner 1"
	elseif (index == 29) then
		return "Star Spangled Banner 2"
	elseif (index == 30) then
		return "Star Spangled Banner 3"
	elseif (index == 31) then
		return "Star Spangled Banner 4"
	elseif (index == 32) then
		return "Classical Horn 8 Loop"
	elseif (index == 33) then
		return "Classical Horn 9 Loop"
	elseif (index == 34) then
		return "Classical Horn 10 Loop"
	elseif (index == 35) then
		return "Classical Horn 8"
	elseif (index == 36) then
		return "Classical Horn 9"
	elseif (index == 37) then
		return "Classical Horn 10"
	elseif (index == 38) then
		return "Funeral Loop"
	elseif (index == 39) then
		return "Funeral"
	elseif (index == 40) then
		return "Spooky Loop"
	elseif (index == 41) then
		return "Spooky"
	elseif (index == 42) then
		return "San Andreas Loop"
	elseif (index == 43) then
		return "San Andreas"
	elseif (index == 44) then
		return "Liberty City Loop"
	elseif (index == 45) then
		return "Liberty City"
	elseif (index == 46) then
		return "Festive 1 Loop"
	elseif (index == 47) then
		return "Festive 1"
	elseif (index == 48) then
		return "Festive 2 Loop"
	elseif (index == 49) then
		return "Festive 2"
	elseif (index == 50) then
		return "Festive 3 Loop"
	elseif (index == 51) then
		return "Festive 3"
	else
		return "Unknown Horn"
	end
end

function GetNeons()
	local neons = {
		{label = _U('white'),		r = 255, 	g = 255, 	b = 255},
		{label = "Slate Gray",		r = 112, 	g = 128, 	b = 144},
		{label = "Blue",			r = 0, 		g = 0, 		b = 255},
		{label = "Light Blue",		r = 0, 		g = 150, 	b = 255},
		{label = "Navy Blue", 		r = 0, 		g = 0, 		b = 128},
		{label = "Sky Blue", 		r = 135, 	g = 206, 	b = 235},
		{label = "Turquoise", 		r = 0, 		g = 245, 	b = 255},
		{label = "Mint Green", 	r = 50, 	g = 255, 	b = 155},
		{label = "Lime Green", 	r = 0, 		g = 255, 	b = 0},
		{label = "Olive", 			r = 128, 	g = 128, 	b = 0},
		{label = _U('yellow'), 	r = 255, 	g = 255, 	b = 0},
		{label = _U('gold'), 		r = 255, 	g = 215, 	b = 0},
		{label = _U('orange'), 	r = 255, 	g = 165, 	b = 0},
		{label = _U('wheat'), 		r = 245, 	g = 222, 	b = 179},
		{label = _U('red'), 		r = 255, 	g = 0, 		b = 0},
		{label = _U('pink'), 		r = 255, 	g = 161, 	b = 211},
		{label = _U('brightpink'),	r = 255, 	g = 0, 		b = 255},
		{label = _U('purple'), 	r = 153, 	g = 0, 		b = 153},
		{label = "Ivory", 			r = 41, 	g = 36, 	b = 33}
	}

	return neons
end

function GetPlatesName(index)
	if (index == 0) then
		return _U('blue_on_white_1')
	elseif (index == 1) then
		return _U('yellow_on_black')
	elseif (index == 2) then
		return _U('yellow_blue')
	elseif (index == 3) then
		return _U('blue_on_white_2')
	elseif (index == 4) then
		return _U('blue_on_white_3')
	end
end

Config.Menus = {
	main = {
		label		= 'LS CUSTOMS',
		parent		= nil,
		upgrades	= _U('upgrades'),
		cosmetics	= _U('cosmetics')
	},
	upgrades = {
		label			= _U('upgrades'),
		parent			= 'main',
		modEngine		= _U('engine'),
		modBrakes		= _U('brakes'),
		modTransmission	= _U('transmission'),
		modSuspension	= _U('suspension'),
		modArmor		= _U('armor'),
		modTurbo		= _U('turbo')
	},
	modEngine = {
		label = _U('engine'),
		parent = 'upgrades',
		modType = 11,
		price = {13.95, 32.56, 65.12, 139.53}
	},
	modBrakes = {
		label = _U('brakes'),
		parent = 'upgrades',
		modType = 12,
		price = {4.65, 9.3, 18.6, 13.95}
	},
	modTransmission = {
		label = _U('transmission'),
		parent = 'upgrades',
		modType = 13,
		price = {13.95, 20.93, 46.51}
	},
	modSuspension = {
		label = _U('suspension'),
		parent = 'upgrades',
		modType = 15,
		price = {3.72, 7.44, 14.88, 29.77, 40.2}
	},
	modArmor = {
		label = _U('armor'),
		parent = 'upgrades',
		modType = 16,
		price = {69.77, 116.28, 130.00, 150.00, 180.00, 190.00}
	},
	modTurbo = {
		label = _U('turbo'),
		parent = 'upgrades',
		modType = 17,
		price = {55.81}
	},
	cosmetics = {
		label				= _U('cosmetics'),
		parent				= 'main',
		bodyparts			= _U('bodyparts'),
		windowTint			= _U('windowtint'),
		modHorns			= _U('horns'),
		neonColor			= _U('neons'),
		resprays			= _U('respray'),
		modXenon			= _U('headlights'),
		plateIndex			= _U('licenseplates'),
		wheels				= _U('wheels'),
		modPlateHolder		= _U('modplateholder'),
		modVanityPlate		= _U('modvanityplate'),
		modTrimA			= _U('interior'),
		modOrnaments		= _U('trim'),
		modDashboard		= _U('dashboard'),
		modDial				= _U('speedometer'),
		modDoorSpeaker		= _U('door_speakers'),
		modSeats			= _U('seats'),
		modSteeringWheel	= _U('steering_wheel'),
		modShifterLeavers	= _U('gear_lever'),
		modAPlate			= _U('quarter_deck'),
		modSpeakers			= _U('speakers'),
		modTrunk			= _U('trunk'),
		modHydrolic			= _U('hydraulic'),
		modEngineBlock		= _U('engine_block'),
		modAirFilter		= _U('air_filter'),
		modStruts			= _U('struts'),
		modArchCover		= _U('arch_cover'),
		modAerials			= _U('aerials'),
		modTrimB			= _U('wings'),
		modTank				= _U('fuel_tank'),
		modWindows			= _U('windows'),
		modLivery			= _U('stickers')
	},

	modPlateHolder = {
		label = _U('modplateholder'),
		parent = 'cosmetics',
		modType = 25,
		price = 3.49
	},
	modVanityPlate = {
		label = _U('modvanityplate'),
		parent = 'cosmetics',
		modType = 26,
		price = 1.1
	},
	modTrimA = {
		label = _U('interior'),
		parent = 'cosmetics',
		modType = 27,
		price = 6.98
	},
	modOrnaments = {
		label = _U('trim'),
		parent = 'cosmetics',
		modType = 28,
		price = 0.9
	},
	modDashboard = {
		label = _U('dashboard'),
		parent = 'cosmetics',
		modType = 29,
		price = 4.65
	},
	modDial = {
		label = _U('speedometer'),
		parent = 'cosmetics',
		modType = 30,
		price = 4.19
	},
	modDoorSpeaker = {
		label = _U('door_speakers'),
		parent = 'cosmetics',
		modType = 31,
		price = 5.58
	},
	modSeats = {
		label = _U('seats'),
		parent = 'cosmetics',
		modType = 32,
		price = 4.65
	},
	modSteeringWheel = {
		label = _U('steering_wheel'),
		parent = 'cosmetics',
		modType = 33,
		price = 4.19
	},
	modShifterLeavers = {
		label = _U('gear_lever'),
		parent = 'cosmetics',
		modType = 34,
		price = 3.26
	},
	modAPlate = {
		label = _U('quarter_deck'),
		parent = 'cosmetics',
		modType = 35,
		price = 4.19
	},
	modSpeakers = {
		label = _U('speakers'),
		parent = 'cosmetics',
		modType = 36,
		price = 6.98
	},
	modTrunk = {
		label = _U('trunk'),
		parent = 'cosmetics',
		modType = 37,
		price = 5.58
	},
	modHydrolic = {
		label = _U('hydraulic'),
		parent = 'cosmetics',
		modType = 38,
		price = 5.12
	},
	modEngineBlock = {
		label = _U('engine_block'),
		parent = 'cosmetics',
		modType = 39,
		price = 5.12
	},
	modAirFilter = {
		label = _U('air_filter'),
		parent = 'cosmetics',
		modType = 40,
		price = 3.72
	},
	modStruts = {
		label = _U('struts'),
		parent = 'cosmetics',
		modType = 41,
		price = 6.51
	},
	modArchCover = {
		label = _U('arch_cover'),
		parent = 'cosmetics',
		modType = 42,
		price = 4.19
	},
	modAerials = {
		label = _U('aerials'),
		parent = 'cosmetics',
		modType = 43,
		price = 1.12
	},
	modTrimB = {
		label = _U('wings'),
		parent = 'cosmetics',
		modType = 44,
		price = 6.05
	},
	modTank = {
		label = _U('fuel_tank'),
		parent = 'cosmetics',
		modType = 45,
		price = 4.19
	},
	modWindows = {
		label = _U('windows'),
		parent = 'cosmetics',
		modType = 46,
		price = 4.19
	},
	modLivery = {
		label = _U('stickers'),
		parent = 'cosmetics',
		modType = 48,
		price = 9.3
	},

	wheels = {
		label = _U('wheels'),
		parent = 'cosmetics',
		modFrontWheelsTypes = _U('wheel_type'),
		modFrontWheelsColor = _U('wheel_color'),
		tyreSmokeColor = _U('tiresmoke')
	},
	modFrontWheelsTypes = {
		label				= _U('wheel_type'),
		parent				= 'wheels',
		modFrontWheelsType0	= _U('sport'),
		modFrontWheelsType1	= _U('muscle'),
		modFrontWheelsType2	= _U('lowrider'),
		modFrontWheelsType3	= _U('suv'),
		modFrontWheelsType4	= _U('allterrain'),
		modFrontWheelsType5	= _U('tuning'),
		modFrontWheelsType6	= _U('motorcycle'),
		modFrontWheelsType7	= _U('highend')
	},
	modFrontWheelsType0 = {
		label = _U('sport'),
		parent = 'modFrontWheelsTypes',
		modType = 23,
		wheelType = 0,
		price = 4.65
	},
	modFrontWheelsType1 = {
		label = _U('muscle'),
		parent = 'modFrontWheelsTypes',
		modType = 23,
		wheelType = 1,
		price = 4.19
	},
	modFrontWheelsType2 = {
		label = _U('lowrider'),
		parent = 'modFrontWheelsTypes',
		modType = 23,
		wheelType = 2,
		price = 4.65
	},
	modFrontWheelsType3 = {
		label = _U('suv'),
		parent = 'modFrontWheelsTypes',
		modType = 23,
		wheelType = 3,
		price = 4.19
	},
	modFrontWheelsType4 = {
		label = _U('allterrain'),
		parent = 'modFrontWheelsTypes',
		modType = 23,
		wheelType = 4,
		price = 4.19
	},
	modFrontWheelsType5 = {
		label = _U('tuning'),
		parent = 'modFrontWheelsTypes',
		modType = 23,
		wheelType = 5,
		price = 5.12
	},
	modFrontWheelsType6 = {
		label = _U('motorcycle'),
		parent = 'modFrontWheelsTypes',
		modType = 23,
		wheelType = 6,
		price = 3.26
	},
	modFrontWheelsType7 = {
		label = _U('highend'),
		parent = 'modFrontWheelsTypes',
		modType = 23,
		wheelType = 7,
		price = 5.12
	},
	modFrontWheelsColor = {
		label = _U('wheel_color'),
		parent = 'wheels'
	},
	wheelColor = {
		label = _U('wheel_color'),
		parent = 'modFrontWheelsColor',
		modType = 'wheelColor',
		price = 0.66
	},
	plateIndex = {
		label = _U('licenseplates'),
		parent = 'cosmetics',
		modType = 'plateIndex',
		price = 1.1
	},
	resprays = {
		label = _U('respray'),
		parent = 'cosmetics',
		primaryRespray = _U('primary'),
		secondaryRespray = _U('secondary'),
		pearlescentRespray = _U('pearlescent'),
	},
	primaryRespray = {
		label = _U('primary'),
		parent = 'resprays',
	},
	secondaryRespray = {
		label = _U('secondary'),
		parent = 'resprays',
	},
	pearlescentRespray = {
		label = _U('pearlescent'),
		parent = 'resprays',
	},
	color1 = {
		label = _U('primary'),
		parent = 'primaryRespray',
		modType = 'color1',
		price = 1.12
	},
	color2 = {
		label = _U('secondary'),
		parent = 'secondaryRespray',
		modType = 'color2',
		price = 0.66
	},
	pearlescentColor = {
		label = _U('pearlescent'),
		parent = 'pearlescentRespray',
		modType = 'pearlescentColor',
		price = 0.88
	},
	modXenon = {
		label = _U('headlights'),
		parent = 'cosmetics',
		modType = 22,
		price = 3.72
	},
	bodyparts = {
		label = _U('bodyparts'),
		parent = 'cosmetics',
		modFender = _U('leftfender'),
		modRightFender = _U('rightfender'),
		modSpoilers = _U('spoilers'),
		modSideSkirt = _U('sideskirt'),
		modFrame = _U('cage'),
		modHood = _U('hood'),
		modGrille = _U('grille'),
		modRearBumper = _U('rearbumper'),
		modFrontBumper = _U('frontbumper'),
		modExhaust = _U('exhaust'),
		modRoof = _U('roof')
	},
	modSpoilers = {
		label = _U('spoilers'),
		parent = 'bodyparts',
		modType = 0,
		price = 4.65
	},
	modFrontBumper = {
		label = _U('frontbumper'),
		parent = 'bodyparts',
		modType = 1,
		price = 5.12
	},
	modRearBumper = {
		label = _U('rearbumper'),
		parent = 'bodyparts',
		modType = 2,
		price = 5.12
	},
	modSideSkirt = {
		label = _U('sideskirt'),
		parent = 'bodyparts',
		modType = 3,
		price = 4.65
	},
	modExhaust = {
		label = _U('exhaust'),
		parent = 'bodyparts',
		modType = 4,
		price = 5.12
	},
	modFrame = {
		label = _U('cage'),
		parent = 'bodyparts',
		modType = 5,
		price = 5.12
	},
	modGrille = {
		label = _U('grille'),
		parent = 'bodyparts',
		modType = 6,
		price = 3.72
	},
	modHood = {
		label = _U('hood'),
		parent = 'bodyparts',
		modType = 7,
		price = 4.88
	},
	modFender = {
		label = _U('leftfender'),
		parent = 'bodyparts',
		modType = 8,
		price = 5.12
	},
	modRightFender = {
		label = _U('rightfender'),
		parent = 'bodyparts',
		modType = 9,
		price = 5.12
	},
	modRoof = {
		label = _U('roof'),
		parent = 'bodyparts',
		modType = 10,
		price = 5.58
	},
	windowTint = {
		label = _U('windowtint'),
		parent = 'cosmetics',
		modType = 'windowTint',
		price = 1.12
	},
	modHorns = {
		label = _U('horns'),
		parent = 'cosmetics',
		modType = 14,
		price = 1.12
	},
	neonColor = {
		label = _U('neons'),
		parent = 'cosmetics',
		modType = 'neonColor',
		price = 1.12
	},
	tyreSmokeColor = {
		label = _U('tiresmoke'),
		parent = 'wheels',
		modType = 'tyreSmokeColor',
		price = 1.12
	}

}


---
--TAXI
---


Config.DrawDistanceTaxi               = 100.0
Config.MarkerTypeTaxi                 = 1
Config.MarkerSizeTaxi                 = {x = 1.5, y = 1.5, z = 0.5}
Config.MarkerColorTaxi                = {r = 50, g = 50, b = 204}

Config.EnablePlayerManagementTaxi     = true
Config.EnableArmoryManagementTaxi     = true
Config.EnableESXIdentityTaxi          = true -- enable if you're using esx_identity
Config.EnableLicensesTaxi             = true -- enable if you're using esx_license

Config.EnableHandcuffTimerTaxi        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimerTaxi              = 10 * 60000 -- 10 mins

Config.EnableJobBlipTaxi              = true -- enable blips for cops on duty, requires esx_society
Config.EnableCustomPedsTaxi           = false -- enable custom peds in cloak room? See Config.CustomPeds below to customize peds

Config.EnableESXServiceTaxi           = false -- enable esx service?
Config.MaxInServiceTaxi               = 5


Config.taxiStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(917.24, -162.43, 74.74),
			Sprite  = 198,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29
		},

		Cloakrooms = {
			vector3(452.6, -992.8, 30.6)
		},

		Armories = {
			vector3(902.57, -154.87, 83.49)
		},

		Vehicles = {
			{
				Spawner = vector3(905.53, -152.01, 83.49),
				InsideShop = vector3(901.45, -187.47, 73.79),
				SpawnPoints = {
					{coords = vector3(916.2, -163.1, 74.7), heading = 153.65, radius = 6.0},
					{coords = vector3(908.84, -176.39, 74.19), heading = 234.71, radius = 6.0}
				}
			},

		
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
			vector3(908.89, -152.87, 83.49)
		}

	}

}


Config.AuthorizedVehiclesTaxi111 = {
	car = {
		recrue = {
			{model = 'surfer2', price = 5000}	
		},
		novice = {
			{model = 'surfer2', price = 5000}	
		},
		experimente = {
			{model = 'surfer2', price = 5000}	
		},
		uber = {
			{model = 'surfer2', price = 5000}	
		},

		boss = {
			{model = 'surfer2', price = 20000},
			{model = 'coach', price = 20000},
		}
	},

	helicopter = {
		recruit = {},

		officer = {},

		sergeant = {},

		lieutenant = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},

		boss = {
			{model = 'polmav', props = {modLivery = 0}, price = 100000}
		}
	}
}

Config.CustomPeds = {
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



------ boxer


Config.DrawDistanceBoxer               = 100.0
Config.MarkerTypeBoxer                 = 1
Config.MarkerSizeBoxer                 = {x = 1.5, y = 1.5, z = 0.5}
Config.MarkerColorBoxer                = {r = 50, g = 50, b = 204}

Config.EnablePlayerManagementBoxer     = true
Config.EnableArmoryManagementBoxer     = true
Config.EnableESXIdentityBoxer          = true -- enable if you're using esx_identity
Config.EnableLicensesBoxer             = true -- enable if you're using esx_license

Config.EnableHandcuffTimerBoxer        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimerBoxer              = 10 * 60000 -- 10 mins

Config.EnableJobBlipBoxer              = true -- enable blips for cops on duty, requires esx_society
Config.EnableCustomPedsBoxer           = false -- enable custom peds in cloak room? See Config.CustomPeds below to customize peds

Config.EnableESXServiceBoxer           = false -- enable esx service?
Config.MaxInServiceBoxer               = 5
             

Config.Boxingstations = {

	BOXING = {

		Blip = {
			Coords  = vector3(-31.47, -1230.97, 30.06),
			Sprite  = 480,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29
		},

		Cloakrooms = {
			vector3(452.6, -992.8, 30.6)
		},

		Armories = {
			vector3(-305.5, -921.77, 4.6)
		},

		Vehicles = {
			{
				Spawner = vector3(905.53, -152.01, 83.49),
				InsideShop = vector3(901.45, -187.47, 73.79),
				SpawnPoints = {
					{coords = vector3(916.2, -163.1, 74.7), heading = 153.65, radius = 6.0},
					{coords = vector3(908.84, -176.39, 74.19), heading = 234.71, radius = 6.0}
				}
			},

		
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
			vector3(-305.53, -923.66, 4.6)
		}

	}

}


Config.CustomPeds = {
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
Config.Uniforms = {
	
}



--RADIO


radioConfig = {
    Controls = {
        Activator = { -- Open/Close Radio
            Name = "INPUT_REPLAY_START_STOP_RECORDING_SECONDARY", -- Control name
            Key = 243, -- F2
        },
        Secondary = {
            Name = "INPUT_SPRINT",
            Key = 21, -- Left Shift
            Enabled = true, -- Require secondary to be pressed to open radio with Activator
        },
        Toggle = { -- Toggle radio on/off
            Name = "INPUT_CONTEXT", -- Control name
            Key = 51, -- E
        },
        Increase = { -- Increase Frequency
            Name = "INPUT_CELLPHONE_RIGHT", -- Control name
            Key = 175, -- Right Arrow
            Pressed = false,
        },
        Decrease = { -- Decrease Frequency
            Name = "INPUT_CELLPHONE_LEFT", -- Control name
            Key = 174, -- Left Arrow
            Pressed = false,
        },
        Input = { -- Choose Frequency
            Name = "INPUT_FRONTEND_ACCEPT", -- Control name
            Key = 201, -- Enter
            Pressed = false,
        },
        Broadcast = {
            Name = "INPUT_VEH_PUSHBIKE_SPRINT", -- Control name
            Key = 137, -- Caps Lock
        },
        ToggleClicks = { -- Toggle radio click sounds
            Name = "INPUT_SELECT_WEAPON", -- Control name
            Key = 37, -- Tab
        }
    },
    Frequency = {
        Private = { -- List of private frequencies
            [1] = true, -- Make 1 a private frequency
        }, -- List of private frequencies
        Current = 1, -- Don't touch
        CurrentIndex = 1, -- Don't touch
        Min = 1, -- Minimum frequency
        Max = 800, -- Max number of frequencies
        List = {}, -- Frequency list, Don't touch
        Access = {}, -- List of freqencies a player has access to
    },
    AllowRadioWhenClosed = false -- Allows the radio to be used when not open (uses police radio animation) 
}


voiceData = {}
radioData = {}
callData = {}
mumbleConfig = {
    debug = false, -- enable debug msgs
    voiceModes = {
        {2.5, "Whisper"}, -- Whisper speech distance in gta distance units
        {8.0, "Normal"}, -- Normal speech distance in gta distance units
        {20.0, "Shouting"}, -- Shout speech distance in gta distance units
    },
    speakerRange = 1.5, -- Speaker distance in gta distance units (how close you need to be to another player to hear other players on the radio or phone)
    callSpeakerEnabled = true, -- Allow players to hear all talking participants of a phone call if standing next to someone that is on the phone
    radioSpeakerEnabled = true, -- Allow players to hear all talking participants in a radio if standing next to someone that has a radio
    radioEnabled = true, -- Enable or disable using the radio
    micClicks = true, -- Are clicks enabled or not
    micClickOn = true, -- Is click sound on active
    micClickOff = true, -- Is click sound off active
    micClickVolume = 0.1, -- How loud a mic click is
    radioClickMaxChannel = 100, -- Set the max amount of radio channels that will have local radio clicks enabled
    controls = { -- Change default key binds
        proximity = {
            key = 20, -- Z
        }, -- Switch proximity mode
        radio = {
            pressed = false, -- don't touch
            key = 137, -- capital
        }, -- Use radio
        speaker = {
            key = 20, -- Z
            secondary = 21, -- LEFT SHIFT
        } -- Toggle speaker mode (phone calls)
    },
    radioChannelNames = { -- Add named radio channels (Defaults to [channel number] MHz)
        [1] = "NCPD CHANNEL 1",
        [2] = "NCPD CHANNEL 2",
        [3] = "NCEMS CHANNEL 1",
		[4] = "NCEMS CHANNEL 2",
		[69] = "RADIO NI MAYOR",
        [500] = "Hurr Durr 500 Hurr Durr",
    },
    callChannelNames = { -- Add named call channels (Defaults to [channel number])

    },
    -- use3dAudio = false, -- (currently doesn't work properly) make sure setr voice_use3dAudio true and setr voice_useSendingRangeOnly true is in your server.cfg (currently doesn't work properly)
}
resourceName = GetCurrentResourceName()

if IsDuplicityVersion() then
    function DebugMsg(msg)
        if mumbleConfig.debug then
            print("\x1b[32m[" .. resourceName .. "]\x1b[0m ".. msg)
        end
    end
else
    function DebugMsg(msg)
        if mumbleConfig.debug then
            print("[" .. resourceName .. "] ".. msg)
        end
    end

    -- Update config properties from another script
    function SetMumbleProperty(key, value)
        if mumbleConfig[key] ~= nil and mumbleConfig[key] ~= "controls" and mumbleConfig[key] ~= "radioChannelNames" then
            mumbleConfig[key] = value

            if key == "callSpeakerEnabled" then
                SendNUIMessage({ speakerOption = mumbleConfig.callSpeakerEnabled })
            end
        end
    end

    function SetRadioChannelName(channel, name)
        local channel = tonumber(channel)

        if channel ~= nil and name ~= nil and name ~= "" then
            if not mumbleConfig.radioChannelNames[channel] then
                mumbleConfig.radioChannelNames[channel] = tostring(name)
            end
        end
    end

    function SetCallChannelName(channel, name)
        local channel = tonumber(channel)

        if channel ~= nil and name ~= nil and name ~= "" then
            if not mumbleConfig.callChannelNames[channel] then
                mumbleConfig.callChannelNames[channel] = tostring(name)
            end
        end
    end

    -- Make exports available on first tick
    exports("SetMumbleProperty", SetMumbleProperty)
    exports("SetTokoProperty", SetMumbleProperty)
    exports("SetRadioChannelName", SetRadioChannelName)
    exports("SetCallChannelName", SetCallChannelName)
end

function GetPlayersInRadioChannel(channel)
    local channel = tonumber(channel)
    local players = false

    if channel ~= nil then
        if radioData[channel] ~= nil then
            players = radioData[channel]
        end
    end

    return players
end

function GetPlayersInRadioChannels(...)
    local channels = { ... }
    local players = {}

    for i = 1, #channels do
        local channel = tonumber(channels[i])

        if channel ~= nil then
            if radioData[channel] ~= nil then
                players[#players + 1] = radioData[channel]
            end
        end
    end

    return players
end

function GetPlayersInAllRadioChannels()
    return radioData
end

function GetPlayersInPlayerRadioChannel(serverId)
    local players = false

    if serverId ~= nil then
        if voiceData[serverId] ~= nil then
            local channel = voiceData[serverId].radio
            if channel > 0 then
                if radioData[channel] ~= nil then
                    players = radioData[channel]
                end
            end
        end
    end

    return players
end

exports("GetPlayersInRadioChannel", GetPlayersInRadioChannel)
exports("GetPlayersInRadioChannels", GetPlayersInRadioChannels)
exports("GetPlayersInAllRadioChannels", GetPlayersInAllRadioChannels)
exports("GetPlayersInPlayerRadioChannel", GetPlayersInPlayerRadioChannel)





Config.Usermenu = {

	{
		name  = 'license',
		label = 'Licence',
		items = {
			{label = 'Check ID', type = 'checkID'},
			{label = 'Show ID', type = 'showID'},
			{label = 'Check Driver License', type = 'checkDriver'},
			{label = 'Show Driver License', type = 'showDriver'},
			{label = 'Check Firearms License', type = 'checkFirearms'},
			{label = 'Show Firearms License', type = 'showFirearms'},
		}
	}

}



-- Blip related settings.
Config.ShowBlipsCARWASH = true     -- Show blips? ( true | false )
Config.BlipColorCARWASH = 4        -- Blip color. ( https://wiki.rage.mp/index.php?title=Blips#Blip_colors )
Config.BlipDisplayCARWASH = 2      -- Blip display (0 = Don't show, 2 = On main and minimap, 3 = Main map only, 5 = Minimap only)
Config.BlipScaleCARWASH = 0.7      -- Blip scale. Recommended: 1.0 - 0.5
Config.BlipSpriteCARWASH = 100     -- Blip type. ( https://wiki.rage.mp/index.php?title=Blips#Blip_model )



-- Marker related settings.
Config.ShowMarkersCARWASH = true   -- Show markers? ( true | false )
Config.DrawDistanceCARWASH = 50    -- How close you have to be for the markers to appear.
Config.MarkerTypeCARWASH = 1       -- Marker type. ( https://wiki.rage.mp/index.php?title=Markers )
Config.MarkerColorCARWASH = { r = 255, g = 255, b = 255, a = 35 }  -- Marker color. Red, green, blue and alpha (transparency - 0 to 100).



-- Price multiplied by dirt level. There's 16 dirt levels, from 0 to 15. Price 4 means completely dirty car costs $60 to clean.
Config.PriceCARWASH = 150



-- Specify how long it takes to clean the vehicle in seconds. Set to 0 for instant clean.
Config.TimerCARWASH = 10



-- Locations. "extents" specifies the radius of it, useful for smaller carwashes.
Config.LocationsCARWASH = {
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


---yacht


ConfigYa = {}

ConfigYa.Yacht = {
    [1] = { 
		loc = {-2072.4143066406,-1020.1676025391,5.8841509819031},
		blipName = "Yacht Heist",
		blipSprite = 108,
		blipColor = 5,
		blipScale = 0.7,
		recentlyRobbed = false,
		startPos = {-2031.47,-1037.98,2.56},
		started = false,
		keypad = {-2070.0031738281,-1019.9599804688,5.8841547966003},
		keypadHacked = false,
		currentlyHacking = false,
		vaultDoor = {-2069.3786621094,-1019.3640136719,5.8841371536255},
		vaultLocked = true,
		vaultModel = -2050208642,
		safe = {-2067.7509765625,-1018.80,5.8820877075195},
		safeRobbed = false,
		drilling = false,
		trolleyPos = {-2069.4367675781,-1021.3533325195,5.8819766044617,75.73348236084},
		cashTaken = false,
		stealing = false,
		JobPlayer = false,
		GoonsSpawned = false,
		Goons = {
			NPC1 = { x = -2077.05, y = -1021.92, z = 5.88, h = 307.71, ped = 'G_M_Y_Lost_02', animDict = 'amb@world_human_cop_idles@female@base', animName = 'base', weapon = 'WEAPON_PISTOL', },
			NPC2 = { x = -2077.48, y = -1016.60, z = 5.88, h = 243.91, ped = 'G_M_Y_MexGang_01', animDict = 'rcmme_amanda1', animName = 'stand_loop_cop', weapon = 'WEAPON_PISTOL', },
			NPC3 = { x = -2071.25, y = -1020.63, z = 5.88, h = 5.57, ped = 'G_M_Y_SalvaBoss_01', animDict = 'amb@world_human_leaning@male@wall@back@legs_crossed@base', animName = 'base', weapon = 'WEAPON_PISTOL' }
		}
	},
}

ConfigYa.PoliceDBname = "police"				-- name for policejob in database
ConfigYa.RequiredPolice = 0 					-- required police online for starting heist
ConfigYa.EnablePlayerMoneyBag = true			-- enable/disable wearing a bag after cash animation
ConfigYa.CooldownTimer = 10					-- in minutes

ConfigYa.HackerDevice = "hackerDevice"		-- database name for hacking item
ConfigYa.DrillItem = "drill"					-- database name for drill item

-- Reward Settings:
ConfigYa.RewardBasedOnCops = false	-- enable or disable rewards based on police online
ConfigYa.SafeBoxItem = "jewels"	-- database name for item in safe
ConfigYa.MinCashTake = 10				-- this value is multiplied with 100, so 3 means 300. 12 means 1200 and etc.
ConfigYa.MaxCashTake = 20				-- this value is multiplied with 100, so 6 means 600. 16 means 1600 and etc.
ConfigYa.SafeMinCash = 10				-- this value is multiplied with 1000, so 10 means 10000. 33 means 33000 and etc.
ConfigYa.SafeMaxCash = 25				-- this value is multiplied with 1000, so 25 means 25000. 145 means 145000 and etc.
ConfigYa.SafeMinItem = 12				-- this value is multiplied with 10, so 12 means 120. 21 means 210 and etc.
ConfigYa.SafeMaxItem = 30				-- this value is multiplied with 10, so 30 means 300. 112 means 1120 and etc.




ConfigFuel = {}

-- Are you using ESX? Turn this to true if you would like fuel & jerry cans to cost something.
ConfigFuel.UseESX = true

-- What should the price of jerry cans be?
ConfigFuel.JerryCanCost = 250
ConfigFuel.RefillCost = 150 -- If it is missing half of it capacity, this amount will be divided in half, and so on.

-- Fuel decor - No need to change this, just leave it.
ConfigFuel.FuelDecor = "_FUEL_LEVEL"

-- What keys are disabled while you're fueling.
ConfigFuel.DisableKeys = {0, 22, 23, 24, 29, 30, 31, 37, 44, 56, 82, 140, 166, 167, 168, 170, 288, 289, 311, 323}

-- Want to use the HUD? Turn this to true.
ConfigFuel.EnableHUD = false

-- ConfigFuelure blips here. Turn both to false to disable blips all together.
ConfigFuel.ShowNearestGasStationOnly = false
ConfigFuel.ShowAllGasStations = true

-- Modify the fuel-cost here, using a multiplier value. Setting the value to 2.0 would cause a doubled increase.
ConfigFuel.CostMultiplier = 1.0

-- ConfigFuelure the strings as you wish here.
ConfigFuel.Strings = {
	ExitVehicle = "Exit the vehicle to refuel",
	EToRefuel = "Press ~g~E ~w~to refuel",
	JerryCanEmpty = "The bid is empty",
	FullTank = "The tank is full",
	PurchaseJerryCan = "Press ~g~E ~w~to buy a drum for ~g~$" .. ConfigFuel.JerryCanCost,
	CancelFuelingPump = "Press ~g~E ~w~to cancel refueling",
	CancelFuelingJerryCan = "Press ~g~E ~w~to cancel refueling",
	NotEnoughCash = "You don't have enough money.",
	RefillJerryCan = "Press ~g~E ~w~ to fill the drum by ",
	NotEnoughCashJerryCan = "You don't have enough money to refuel",
	JerryCanFull = "The drum is full",
	TotalCost = "Price",
}

if not ConfigFuel.UseESX then
	ConfigFuel.Strings.PurchaseJerryCan = "Press ~g~E ~w~to buy a Jerry Can"
	ConfigFuel.Strings.RefillJerryCan = "Press ~g~E ~w~ to fill the Jerry Can"
end

ConfigFuel.PumpModels = {
	[-2007231801] = true,
	[1339433404] = true,
	[1694452750] = true,
	[1933174915] = true,
	[-462817101] = true,
	[-469694731] = true,
	[-164877493] = true
}

-- Blacklist certain vehicles. Use names or hashes. https://wiki.gtanet.work/index.php?title=Vehicle_Models
ConfigFuel.Blacklist = {
	--"Adder",
	--276773164
}

-- Do you want the HUD removed from showing in blacklisted vehicles?
ConfigFuel.RemoveHUDForBlacklistedVehicle = true

-- Class multipliers. If you want SUVs to use less fuel, you can change it to anything under 1.0, and vise versa.
ConfigFuel.Classes = {
	[0] = 1.0, -- Compacts
	[1] = 1.0, -- Sedans
	[2] = 1.0, -- SUVs
	[3] = 1.0, -- Coupes
	[4] = 1.0, -- Muscle
	[5] = 1.0, -- Sports Classics
	[6] = 1.0, -- Sports
	[7] = 1.0, -- Super
	[8] = 1.0, -- Motorcycles
	[9] = 1.0, -- Off-road
	[10] = 1.0, -- Industrial
	[11] = 1.0, -- Utility
	[12] = 1.0, -- Vans
	[13] = 0.0, -- Cycles
	[14] = 1.0, -- Boats
	[15] = 1.0, -- Helicopters
	[16] = 1.0, -- Planes
	[17] = 1.0, -- Service
	[18] = 1.0, -- Emergency
	[19] = 1.0, -- Military
	[20] = 1.0, -- Commercial
	[21] = 1.0, -- Trains
}

-- The left part is at percentage RPM, and the right is how much fuel (divided by 10) you want to remove from the tank every second
ConfigFuel.FuelUsage = {
	[1.0] = 1.4,
	[0.9] = 1.2,
	[0.8] = 1.0,
	[0.7] = 0.9,
	[0.6] = 0.8,
	[0.5] = 0.7,
	[0.4] = 0.5,
	[0.3] = 0.4,
	[0.2] = 0.2,
	[0.1] = 0.1,
	[0.0] = 0.0,
}

ConfigFuel.GasStations = {
	vector3(49.4187, 2778.793, 58.043),
	vector3(263.894, 2606.463, 44.983),
	vector3(1039.958, 2671.134, 39.550),
	vector3(1207.260, 2660.175, 37.899),
	vector3(2539.685, 2594.192, 37.944),
	vector3(2679.858, 3263.946, 55.240),
	vector3(2005.055, 3773.887, 32.403),
	vector3(1687.156, 4929.392, 42.078),
	vector3(1701.314, 6416.028, 32.763),
	vector3(179.857, 6602.839, 31.868),
	vector3(-94.4619, 6419.594, 31.489),
	vector3(-2554.996, 2334.40, 33.078),
	vector3(-1800.375, 803.661, 138.651),
	vector3(-1437.622, -276.747, 46.207),
	vector3(-2096.243, -320.286, 13.168),
	vector3(-724.619, -935.1631, 19.213),
	vector3(-526.019, -1211.003, 18.184),
	vector3(-70.2148, -1761.792, 29.534),
	vector3(265.648, -1261.309, 29.292),
	vector3(819.653, -1028.846, 26.403),
	vector3(1208.951, -1402.567,35.224),
	vector3(1181.381, -330.847, 69.316),
	vector3(620.843, 269.100, 103.089),
	vector3(2581.321, 362.039, 108.468),
	vector3(176.631, -1562.025, 29.263),
	vector3(176.631, -1562.025, 29.263),
	vector3(-319.292, -1471.715, 30.549),
	vector3(1784.324, 3330.55, 41.253)
}
