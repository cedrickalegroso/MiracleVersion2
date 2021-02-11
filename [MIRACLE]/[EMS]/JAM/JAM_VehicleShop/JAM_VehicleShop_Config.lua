JAM.VehicleShop = {}
local JVS = JAM.VehicleShop
JVS.ESX = JAM.ESX

JVS.DrawTextDist = 4.0
JVS.MenuUseDist = 3.0
JVS.SpawnVehDist = 50.0
JVS.VehRetDist = 5.0

JVS.CarDealerJobLabel = "cardealer"
JVS.DealerMarkerPos = vector3(-788.93, -216.09, 37.00)

-- Why vector4's, you ask?
-- X, Y, Z, Heading.

JVS.PurchasedCarPos = vector4(-774.56, -233.6, 37.08, 205.59)
JVS.PurchasedUtilPos = vector4(-17.88, -1113.94, 26.67, 158.04)

JVS.SmallSpawnVeh = 'zentorno'
JVS.SmallSpawnPos = vector4(-800.79, -231.74, 37.00, 86.58)

JVS.LargeSpawnVeh = 'towtruck'
JVS.LargeSpawnPos = vector4(-18.57, -1103.14, 26.67, 159.95)

JVS.DisplayPositions = {
	[1] = vector4(-785.37, -245.16, 37.00, 71.74),
	[2] = vector4(-787.13, -240.7, 37.00, 71.74),
	[3] = vector4(-789.95, -235.75, 37.00, 71.74),
	[4] = vector4(-793.2, -228.81, 37.00, 71.74),
	[5] = vector4(-792.23, -231.67, 37.00, 71.74),
--	[5] = vector4(-783.21, -223.06, 37.32, 129.39),
	
}

JVS.Blips = {
	CityShop = {
		Zone = "Vehicle Shop",
		Sprite = 225,
		Scale = 1.0,
		Display = 4,
		Color = 4,
		Pos = { x = -788.13, y = -233.81, z = 37.08 },
	},
}
