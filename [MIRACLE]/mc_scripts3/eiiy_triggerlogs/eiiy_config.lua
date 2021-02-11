--[[
    (c) Eiiy Lang Malakas!
]]--

-- wag galawin
AC_Lite = {}
AC = AC_Lite

-- dagdag ka trigger dito. :D
AC.Event = {
	'esx_moneywash',
	'esx_ambulancejob:reRETROvive',
    'esx_biRETROlling:sendBill',
    'esx-qalle-jail:openJailMenu',
    'esx_society:openBosRETROsMenu',
    'esx_ambulancejob:heal',
    'esx:spawnVehicle',
    'esx:deleteVehicle',
    'esx:giRETROveInventoryItem',
    'esx:removeInventoryItem',
    'esx:useItem',
    'esx_trunk:getItem',
    'esx_trunk:putItem'
   



}

-- Webhook mo
AC.Webhook = "https://discordapp.com/api/webhooks/765801761440006144/kz2XCnDw0RNcEpOo5ZJqaa3CeCpRrgBUZtFoVv3XkmszYwc6W9R5vKvp_IR1fMA8ramQ"

-- wag galawin
RegisterServerEvent("EiiyHasBeenFuckYou:Sync")
AddEventHandler("EiiyHasBeenFuckYou:Sync", function()
	TriggerClientEvent("EiiyHasBeenFuckYou:GetSync", source, AC)
    function AC:Sync()
        for i=1, #self.Event, 1 do
        	AddEventHandler(self.Event[i], function()
                TriggerEvent('EiiyHasBeenFuckYou:Detect', self.Event[i], source)
        	end)
        end
    end AC:Sync()
end)
