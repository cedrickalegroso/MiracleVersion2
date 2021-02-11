--[[local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},

     {title="Example 1", colour=10, id=446, x = -347.291, y = -133.370, z = 38.009},
     {title="Example 2", colour=10, id=108, x = 260.130, y = 204.308, z = 109.287}
  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
	end]]

	ConfigRead                            = {}
	
	ConfigRead.PoliceStations = {

		LSPD = {
	
			Blip = {
				Coords  = vector3(-750.20245361328,4321.5400390625,141.962890625),
				Sprite  = 9,
				Display = 4,
				Scale   = 0.3,
				alpha = 80,
				Colour  = 75
			},

		},
	
		LSPD1 = {
	
			Blip = {
				Coords  = vector3(1671.5419921875,6648.6499023438,10.49685382843),
				Sprite  = 9,
				Display = 4,
				Scale   = 0.3,
				alpha = 80,
				Colour  = 75
			},

		},
		
		LSPD2 = {
			Blip = {
				Coords  = vector3(	-1384.1893310547,4634.7299804688,76.998954772949),
				Sprite  = 9,
				Display = 4,
				Scale   = 0.3,
				alpha = 80,
				Colour  = 75
			},

		},

		LSPD3 = {
	
			Blip = {
				Coords  = vector3(	448.4489440918,3521.1000976562,33.642322540283),
				Sprite  = 9,
				Display = 4,
				Scale   = 0.3,
				alpha = 80,
				Colour  = 75
			},

		},

		LSPD4 = {
	
			Blip = {
				Coords  = vector3(	706.65808105469,-966.85021972656,36.854167938232),
				Sprite  = 9,
				Display = 4,
				Scale   = 0.3,
				alpha = 80,
				Colour  = 75
			},

		},

		LSPD5 = {
	
			Blip = {
				Coords  = vector3(	-1969.5408935547,-516.38763427734,22.225372314453),
				Sprite  = 9,
				Display = 4,
				Scale   = 0.3,
				alpha = 80,
				Colour  = 75
			},

		},
	

		LSPD6 = {
	
			Blip = {
				Coords  = vector3(-2017.1909179688,559.60198974609,108.28341674805),
				Sprite  = 9,
				Display = 4,
				Scale   = 0.3,
				alpha = 80,
				Colour  = 75
			},

		},


		
		LSPD7 = {
	
			Blip = {
				Coords  = vector3(-2017.1909179688,559.60198974609,108.28341674805),
				Sprite  = 9,
				Display = 4,
				Scale   = 0.3,
				alpha = 80,
				Colour  = 75
			},

		},

		LSPD8 = {
	
			Blip = {
				Coords  = vector3(2328.9096679688,2571.3601074219,50.56175994873),
				Sprite  = 9,
				Display = 4,
				Scale   = 0.3,
				alpha = 80,
				Colour  = 75
			},

		},

		LSPD9 = {
	
			Blip = {
				Coords  = vector3(-58.771686553955,-2245.2800292969,8.9563179016113),
				Sprite  = 9,
				Display = 4,
				Scale   = 0.3,
				alpha = 80,
				Colour  = 75
			},

		},

		LSPD10 = {
	
			Blip = {
				Coords  = vector3(	1714.5056152344,-1598.1314697266,113.81474304199),
				Sprite  = 9,
				Display = 4,
				Scale   = 0.3,
				alpha = 80,
				Colour  = 75
			},

		},
	
			
		LSPD11 = {
	
			Blip = {
				Coords  = vector3(	3334.6369628906,5164.3911132812,18.322059631348),
				Sprite  = 9,
				Display = 4,
				Scale   = 0.3,
				alpha = 80,
				Colour  = 75
			},

		},

		LSPD12 = {
	
			Blip = {
				Coords  = vector3(	1704.9241943359,3845.4831542969,34.932487487793),
				Sprite  = 9,
				Display = 4,
				Scale   = 0.3,
				alpha = 80,
				Colour  = 75
			},

		},

		LSPD12 = {
	
			Blip = {
				Coords  = vector3(1961.0584716797,5185.107421875,47.9446144104),
				Sprite  = 9,
				Display = 4,
				Scale   = 0.3,
				alpha = 80,
				Colour  = 75
			},

		},

	

		LSPD14 = {
	
			Blip = {
				Coords  = vector3(1705.0472412109,3845.5581054688,34.931602478027),
				Sprite  = 9,
				Display = 4,
				Scale   = 0.3,
				alpha = 80,
				Colour  = 75
			},
			
			
			
		LSPD15 = {
	
			Blip = {
				Coords  = vector3(1705.0472412109,3845.5581054688,34.931602478027),
				Sprite  = 9,
				Display = 4,
				Scale   = 0.3,
				alpha = 80,
				Colour  = 75
			},

		},
		

		LSPD16 = {
	
			Blip = {
				Coords  = vector3(-2505.5407714844,763.47686767578,321.87582397461),
				Sprite  = 9,
				Display = 4,
				Scale   = 0.3,
				alpha = 80,
				Colour  = 75
			},

		},
		
	}
}

	ConfigRead.Cartel = {

		LSPD = {
	
			Blip = {
				Coords  = vector3(-2505.5375976562,763.47692871094,316.64825439453),
				Sprite  = 9,
				Display = 4,
				Scale   = 0.3,
				alpha = 80,
				Colour  = 75
			},

		},
		
	}
	
	ConfigRead.TheLost = {

		LSPD = {
	
			Blip = {
				Coords  = vector3(966.82,-126.39,74.35),
				Sprite  = 9,
				Display = 4,
				Scale   = 0.3,
				alpha = 80,
				Colour  = 75
			},

		},
		
	}
	
	ConfigRead.MS13 = {

		LSPD = {
	
			Blip = {
				Coords  = vector3(100.62630462646,-1965.2235107422,23.712602615356),
				Sprite  = 9,
				Display = 4,
				Scale   = 0.3,
				alpha = 80,
				Colour  = 75
			},

		},
		
	}

	ConfigRead.Sill = {

		LSPD = {
	
			Blip = {
				Coords  = vector3(-1413.0625,661.54437255859,186.9994354248),
				Sprite  = 9,
				Display = 4,
				Scale   = 0.3,
				alpha = 80,
				Colour  = 75
			},

		},
		
	}

	ConfigRead.gamb = {

		LSPD = {
	
			Blip = {
				Coords  = vector3(-65.664321899414,814.05798339844,227.58245849609),
				Sprite  = 9,
				Display = 4,
				Scale   = 0.3,
				alpha = 80,
				Colour  = 75
			},

		},
		
	}


	
	
	ConfigRead.Cuatro = {

		LSPD = {
	
			Blip = {
				Coords  = vector3(-1889.3,2047.19,148.44),
				Sprite  = 9,
				Display = 4,
				Scale   = 0.3,
				alpha = 80,
				Colour  = 75
			},

		},
		
	}

-- Create blips
Citizen.CreateThread(function()

		  -- Load the textures
		  RequestStreamedTextureDict("world_blips", 1)
		  while not HasStreamedTextureDictLoaded("world_blips") do
			  Wait(0)
		  end



	for k,v in pairs(ConfigRead.PoliceStations) do
		local blip = AddBlipForCoord(v.Blip.Coords)

		SetBlipSprite (blip, 3)
		SetBlipScale  (blip, 2.5)
		SetBlipColour (blip, v.Blip.Colour)
		SetBlipShrink(blip, true)
		SetBlipAsShortRange(blip, true)
		SetBlipAlpha(blip, 90)

		
		BeginTextCommandSetBlipName('STRING')
		AddTextComponentSubstringPlayerName('RED ZONE')
		EndTextCommandSetBlipName(blip)

		
	end



	
	for k,v in pairs(ConfigRead.gamb) do
		local blip = AddBlipForCoord(v.Blip.Coords)

		SetBlipSprite (blip, 3)
		SetBlipScale  (blip, 2.5)
		SetBlipColour (blip, v.Blip.Colour)
		SetBlipShrink(blip, true)
		SetBlipAsShortRange(blip, true)
		SetBlipAlpha(blip, 90)

		
		BeginTextCommandSetBlipName('STRING')
		AddTextComponentSubstringPlayerName('RED ZONE')
		EndTextCommandSetBlipName(blip)
		
		BeginTextCommandSetBlipName('STRING')
		AddTextComponentSubstringPlayerName('Gambino Mansion')
		EndTextCommandSetBlipName(blip)

	end

	
	
	for k,v in pairs(ConfigRead.MS13) do
		local blip = AddBlipForCoord(v.Blip.Coords)

		SetBlipSprite (blip, 3)
		SetBlipScale  (blip, 2.5)
		SetBlipColour (blip, v.Blip.Colour)
		SetBlipShrink(blip, true)
		SetBlipAsShortRange(blip, true)
		SetBlipAlpha(blip, 90)

		
		BeginTextCommandSetBlipName('STRING')
		AddTextComponentSubstringPlayerName('RED ZONE')
		EndTextCommandSetBlipName(blip)
		
		BeginTextCommandSetBlipName('STRING')
		AddTextComponentSubstringPlayerName('MS-13 Mansion')
		EndTextCommandSetBlipName(blip)

	end

	

	for k,v in pairs(ConfigRead.Sill) do
		local blip = AddBlipForCoord(v.Blip.Coords)

		SetBlipSprite (blip, 3)
		SetBlipScale  (blip, 2.5)
		SetBlipColour (blip, v.Blip.Colour)
		SetBlipShrink(blip, true)
		SetBlipAsShortRange(blip, true)
		SetBlipAlpha(blip, 90)

		
		BeginTextCommandSetBlipName('STRING')
		AddTextComponentSubstringPlayerName('RED ZONE')
		EndTextCommandSetBlipName(blip)
		
		BeginTextCommandSetBlipName('STRING')
		AddTextComponentSubstringPlayerName('Sillian Mansion')
		EndTextCommandSetBlipName(blip)

	end
	
	for k,v in pairs(ConfigRead.Cartel) do
		local blip = AddBlipForCoord(v.Blip.Coords)

		SetBlipSprite (blip, 3)
		SetBlipScale  (blip, 2.5)
		SetBlipColour (blip, v.Blip.Colour)
		SetBlipShrink(blip, true)
		SetBlipAsShortRange(blip, true)
		SetBlipAlpha(blip, 90)

		
		BeginTextCommandSetBlipName('STRING')
		AddTextComponentSubstringPlayerName('RED ZONE')
		EndTextCommandSetBlipName(blip)
		
		BeginTextCommandSetBlipName('STRING')
		AddTextComponentSubstringPlayerName('Cartel Mansion')
		EndTextCommandSetBlipName(blip)

	end
	
end)