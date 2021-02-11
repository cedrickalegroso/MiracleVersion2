Config.Jobs.applejob = {

	BlipInfos = {
		Sprite = 103,
		Color = 1
	},

	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = "bison3",
			Trailer = "",
			HasCaution = false
		}

	},

	Zones = {

		CloakRoom = {
			Pos = {x = -419.94, y = 267.37, z = 82.29},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 0, g = 255, b = 125},
			Marker = 23,
			Blip = true,
			Name = ("Przebieralnia"),
			Type = "cloakroom",
			Hint = _U("cloak_change")
		},

		Apple = {
			Pos = {x = 220.06, y = 6499.35, z = 30.45},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 0, g = 255, b = 125},
			Marker = 23,
			Blip = true,
			Name = ("Zbieranie jabłek"),
			Type = "workapple",
			Item = {
				{
					name = ("Jabłka"),
					db_name = "jablko",
					time = 3000,
					max = 20,
					add = 1,
					remove = 1,
					requires = "nothing",
					requires_name = "Nothing",
					drop = 100
				}
			},
			Hint = ("~y~Naciśnij ~INPUT_PICKUP~ aby zebrać jabłka")
		},

		UmyjApple = {
			Pos = {x = -2187.02, y = 4250.09, z = 48.0},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 0, g = 255, b = 125},
			Marker = 23,
			Blip = true,
			Name = ("Mycie jabłek"),
			Type = "workumyjapple",
			Item = {
				{
					name = ("Mycie jabłek"),
					db_name = "appleumyte",
					time = 4000,
					max = 20,
					add = 1,
					remove = 1,
					requires = "apple",
					requires_name = ("Jabłko"),
					drop = 100
				}
			},
			Hint = ("~y~Naciśnij ~INPUT_PICKUP~ aby umyć jabłka")
		},

		SokApple = {
			Pos = {x = -1165.03, y = -1566.53, z = 3.5},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 0, g = 255, b = 125},
			Marker = 23,
			Blip = true,
			Name = ("Przerabianie jabłek na sok"),
			Type = "work",
			Item = {
				{
					name = ("Przerabianie jabłek na sok"),
					db_name = "applejuice",
					time = 3500,
					max = 100,
					add = 5,
					remove = 1,
					requires = "appleumyte",
					requires_name = ("Umyte jabłko"),
					drop = 100
				}
			},
			Hint = ("~y~Naciśnij ~INPUT_PICKUP~ aby przerobić jabłka na sok")
		},

		VehicleSpawner = {
			Pos = {x = -412.96, y = 263.77, z = 82.18},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 0, g = 255, b = 125},
			Marker = 23,
			Blip = false,
			Name = _U("spawn_veh"),
			Type = "vehspawner",
			Spawner = 1,
			Hint = _U("spawn_veh_button"),
			Caution = 0
		},

		VehicleSpawnPoint = {
			Pos = {x = -412.62, y = 256.95, z = 83.21},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Marker = -1,
			Blip = false,
			Name = _U("service_vh"),
			Type = "vehspawnpt",
			Spawner = 1,
			Heading = 85.40
		},

		VehicleDeletePoint = {
			Pos = {x = -410.89, y = 276.23, z = 82.33},
			Size = {x = 5.0, y = 5.0, z = 1.0},
			Color = {r = 255, g = 0, b = 0},
			Marker = 23,
			Blip = false,
			Name = _U("return_vh"),
			Type = "vehdelete",
			Hint = _U("return_vh_button"),
			Spawner = 1,
			Caution = 0,
			GPS = 0,
			Teleport = 0
		},

		Delivery = {
			Pos = {x = 1088.35, y = 6508.51, z = 20.2},
			Color = {r = 0, g = 255, b = 125},
			Size = {x = 2.0, y = 2.0, z = 2.0},
			Marker = 23,
			Blip = true,
			Name = ("Sprzedaż soku z jabłka"),
			Type = "delivery",
			Spawner = 1,
			Item = {
				{
					name = _U("delivery"),
					time = 1700,
					remove = 1,
					max = 100, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 200,
					requires = "applejuice",
					requires_name = ("Sok jabłkowy"),
					drop = 100
				}
			},
			Hint = ("~y~Naciśnij ~INPUT_PICKUP~ aby sprzedaż sok jabłkowy")
		}

	}
}