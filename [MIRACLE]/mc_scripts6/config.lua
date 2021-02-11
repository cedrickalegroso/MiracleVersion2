Config = {}
Config.Locale = 'en'

ConfigPlastic = {}
ConfigPlastic.Locale = 'en'

ConfigPlastic.MarkerType   = 1
ConfigPlastic.DrawDistance = 100.0
ConfigPlastic.MarkerSize   = {x = 2.0, y = 2.0, z = 1.0}
ConfigPlastic.MarkerColor  = {r = 102, g = 102, b = 204}

ConfigPlastic.BlipPlasticSurgery = {
	Sprite = 403,
	Color = 0,
	Display = 2,
	Scale = 1.0
}

ConfigPlastic.Price = 5000 -- Edit to your liking.

ConfigPlastic.EnableUnemployedOnly = false -- If true it will only show Blips to Unemployed Players | false shows it to Everyone.
ConfigPlastic.EnableBlips = true -- If true then it will show blips | false does the Opposite.
ConfigPlastic.EnablePeds = true -- If true then it will add Peds on Markers | false does the Opposite.

ConfigPlastic.Locations = {
	{ x = -446.93240356445, y = -324.05795288086, z =33.910820007324, heading = 69.39 }, -- Police Booking Room
--	{ x = 260.3, y = -1343.68, z = 23.54, heading = 257.66 }, -- Hospital Bottom Floor
--	{ x = 340.0, y = -581.9, z = 27.79, heading = 281.39 } -- Pillbox Hill MLO
}

ConfigPlastic.Zones = {}

for i=1, #ConfigPlastic.Locations, 1 do
	ConfigPlastic.Zones['Shop_' .. i] = {
		Pos   = ConfigPlastic.Locations[i],
		Size  = ConfigPlastic.MarkerSize,
		Color = ConfigPlastic.MarkerColor,
		Type  = ConfigPlastic.MarkerType
	}
end


ConfigTackle                            	= {}
ConfigTackle.TackleDistance				= 3.0


ConfigCarwash = {}



-- Possible languages: 'en'
ConfigCarwash.Locale = 'en'



-- Blip related settings.
ConfigCarwash.ShowBlips = true     -- Show blips? ( true | false )
ConfigCarwash.BlipColor = 4        -- Blip color. ( https://wiki.rage.mp/index.php?title=Blips#Blip_colors )
ConfigCarwash.BlipDisplay = 2      -- Blip display (0 = Don't show, 2 = On main and minimap, 3 = Main map only, 5 = Minimap only)
ConfigCarwash.BlipScale = 0.7      -- Blip scale. Recommended: 1.0 - 0.5
ConfigCarwash.BlipSprite = 100     -- Blip type. ( https://wiki.rage.mp/index.php?title=Blips#Blip_model )



-- Marker related settings.
ConfigCarwash.ShowMarkers = true   -- Show markers? ( true | false )
ConfigCarwash.DrawDistance = 50    -- How close you have to be for the markers to appear.
ConfigCarwash.MarkerType = 1       -- Marker type. ( https://wiki.rage.mp/index.php?title=Markers )
ConfigCarwash.MarkerColor = { r = 255, g = 255, b = 255, a = 35 }  -- Marker color. Red, green, blue and alpha (transparency - 0 to 100).



-- Price multiplied by dirt level. There's 16 dirt levels, from 0 to 15. Price 4 means completely dirty car costs $60 to clean.
ConfigCarwash.Price = 150



-- Specify how long it takes to clean the vehicle in seconds. Set to 0 for instant clean.
ConfigCarwash.Timer = 2



-- Locations. "extents" specifies the radius of it, useful for smaller carwashes.
ConfigCarwash.Locations = {
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


ConfigChop = {}

ConfigChop.Locale = 'en'
ConfigChop.DrawDistance = 100.0 -- Change the distance before you can see the marker. Less is better performance.
ConfigChop.EnableBlips = true -- Set to false to disable blips.
ConfigChop.MarkerType = 27
ConfigChop.MarkerColor = { r = 255, g = 0, b = 0 } -- Change the marker color.

-- Set the time (in minutes) during the player is markered
ConfigChop.Timer = 2

ConfigChop.CooldownMinutes = 8

ConfigChop.CallCops = false -- Set to true if you want cops to be alerted when chopping is in progress
ConfigChop.CallCopsPercent = 1 -- (min1) if 1 then cops will be called every time=100%, 2=50%, 3=33%, 4=25%, 5=20%.
ConfigChop.CopsRequired = 1
ConfigChop.ShowCopsMisbehave = true --show notification when cops steal too

ConfigChop.NPCEnable = false -- Set to false to disable NPC Ped at shop location.
ConfigChop.NPCHash = 68070371 --Hash of the npc ped. Change only if you know what you are doing.
ConfigChop.NPCShop = { x = -55.42, y = 6392.8, z = 30.5, h = 46.0 } -- Location of the shop For the npc.

ConfigChop.RemovePart = 1000

ConfigChop.GiveBlack = true --- Give dirty cash
ConfigChop.AnyoneCanChop = true -- Pesonal Cars chop ### CAUTION WILL DELETE VEHICLES FROM DATABASE

ConfigChop.Zones = {
  Chopshop = {coords = vector3(-555.22, - 1697.99, 18.75 + 0.99), name = _U('map_blip'), color = 49, sprite = 225, radius = 100.0, Pos = { x = -555.22, y = -1697.99, z = 19.13 - 0.95 }, Size = { x = 5.0, y = 5.0, z = 0.5 }, },
  StanleyShop = {coords = vector3(-55.42, 6392.8, 30.5), name = _U('map_blip_shop'), color = 50, sprite = 120, radius = 25.0, Pos = { x = -55.42, y = 6392.8, z = 30.5}, Size = { x = 3.0, y = 3.0, z = 1.0 }, },

}

ConfigChop.Items = {
  -- Item and Price $
  "battery",
  "muffler",
  "hood",
  "trunk",
  "doors",
  "engine",
  "waterpump",
  "oilpump",
  "speakers",
  "radio",
  "rims",
  "subwoofer",
  "steeringwheel"
}


ConfigChop.ItemsPrices = {
  -- Item and Price $
  battery = 50,
  muffler = 180,
  hood = 325,
  trunk = 300,
  doors = 185,
  engine = 680,
  waterpump = 260,
  oilpump = 240,
  speakers = 165,
  radio = 200,
  rims = 700,
  subwoofer = 120,
  steeringwheel = 100
}
-- Jobs in this table are considered as cops
ConfigChop.WhitelistedCops = {
  'police'
}




ConfigYacht = {}

ConfigYacht.Yacht = {
  [1] = { 
  loc = {-2072.4143066406,-1020.1676025391,5.8841509819031},
  blipName = "Yacht Heist",
  blipSprite = 108,
  blipColor = 5,
  blipScale = 0.7,
  recentlyRobbed = false,
  startPos = {-2083.3264160156,-1017.8063964844,12.781908988953},
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

ConfigYacht.PoliceDBname = "police"				-- name for policejob in database
ConfigYacht.RequiredPolice = 7 					-- required police online for starting heist
ConfigYacht.EnablePlayerMoneyBag = true			-- enable/disable wearing a bag after cash animation
ConfigYacht.CooldownTimer = 10					-- in minutes

ConfigYacht.HackerDevice = "hackerDevice"		-- database name for hacking item
ConfigYacht.DrillItem = "drill"					-- database name for drill item

-- Reward Settings:
ConfigYacht.RewardBasedOnCops = false	-- enable or disable rewards based on police online
ConfigYacht.SafeBoxItem = "jewels"	-- database name for item in safe
ConfigYacht.MinCashTake = 10				-- this value is multiplied with 100, so 3 means 300. 12 means 1200 and etc.
ConfigYacht.MaxCashTake = 20				-- this value is multiplied with 100, so 6 means 600. 16 means 1600 and etc.
ConfigYacht.SafeMinCash = 10				-- this value is multiplied with 1000, so 10 means 10000. 33 means 33000 and etc.
ConfigYacht.SafeMaxCash = 25				-- this value is multiplied with 1000, so 25 means 25000. 145 means 145000 and etc.
ConfigYacht.SafeMinItem = 12				-- this value is multiplied with 10, so 12 means 120. 21 means 210 and etc.
ConfigYacht.SafeMaxItem = 30				-- this value is multiplied with 10, so 30 means 300. 112 means 1120 and etc.


ConfigNitro = {}

ConfigNitro.Nitro = {
  Power = 100.0,
  Torque = 100.0
}

ConfigNitro.consumption = 85