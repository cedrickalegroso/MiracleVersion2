local delay = 1000 * 30 * 1 -- Edit this to your needed delay (30 minutes in this example).
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(delay) 
        ExecuteCommand("restart RadarWhileDriving") -- replace 'your-resoruce' with what you would like to restart.
    end
end)