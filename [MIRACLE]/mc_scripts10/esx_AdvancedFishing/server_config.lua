Server_ConfigFishing = {}
	-------------------------------------------
	--=====Prices of the items players can sell==========--
	--------------------------------------------------------
	--First amount minimum price second maximum amount (the amount player will get is random between those two numbers)
	Server_ConfigFishing.FishPrice = {a = 2000, b = 3500} -- Will get clean money THIS PRICE IS FOR EVERY 5 FISH ITEMS (5 kg)
	Server_ConfigFishing.TurtlePrice = {a = 10000, b = 10000} -- Will get dirty money
	Server_ConfigFishing.SharkPrice = {a = 40000, b = 50000} -- Will get dirty money

	Server_ConfigFishing.RentalBoats = {
		-- Fee and Deposit is 50% of the price, you get the deposit returned
		-- Add more boats if you want
		{model = "smallboat", price = 1000},
	}