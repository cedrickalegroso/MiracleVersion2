key_to_teleport = 38

positions = {



    
    --[[
    {{Teleport1 X, Teleport1 Y, Teleport1 Z, Teleport1 Heading}, {Teleport2 X, Teleport 2Y, Teleport 2Z, Teleport2 Heading}, {Red, Green, Blue}, "Text for Teleport"}
    ]]
    {{290.02, 269.18, 104.40, 0}, {1138.13, -3198.71, -39., 0},{36,237,0}, "laundry Mat"}, -- Outside the Sheriff's Station
    {{-43.81, -1248.31, 28.20, 0}, {-309.81510000, -922.855400000, 3.60233100, 0},{255, 157, 0}, "Boxing Office"},
    {{-418.65420532227,-345.05426025391,23.23168182373, 0}, {-436.09432983398,-359.8772277832,33.949741363525, 0},{255, 157, 0}, "HP"},
    {{-493.48532104492,-326.80395507812,41.307823181152, 0}, {-499.93530273438,-324.2878112793,72.168067932129, 0},{255, 157, 0}, "HP ROOFTOP"},
    {{ -452.52569580078,-288.43405151367, 33.949485778809, 0}, {-452.74658203125,-288.63134765625,-131.84104919434, 0},{255, 157, 0}, "HP Surgery"},
    {{ -493.57077026367,-327.32824707031,68.504486083984, 0}, {-490.63366699219,-327.66870117188,41.307163238525, 0},{255, 157, 0}, "HP 3rd Floor"},
    {{ 240.58642578125,-1004.84765625,-99.999855041504, 0}, {31.855525970459,-903.75085449219,28.964279174805, 0},{255, 157, 0}, "Exit to Public Garage"},
	{{ -1418.21,655.23,196.1}, {-1418.46,655.21,201.15},{255, 157, 0}, "Exit to Public Garage"},
    --{{ -1805.0865478516,436.79449462891,127.83467102051, 0}, { -1407.4208984375,-2629.8903808594,-92.985565185547, 0},{255, 157, 0}, "CUATRO HERMANOS"},

    
}

-----------------------------------------------------------------------------
-------------------------DO NOT EDIT BELOW THIS LINE-------------------------
-----------------------------------------------------------------------------

local player = GetPlayerPed(-1)

Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(5)
        local player = GetPlayerPed(-1)
        local playerLoc = GetEntityCoords(player)

        for _,location in ipairs(positions) do
            teleport_text = location[4]
            loc1 = {
                x=location[1][1],
                y=location[1][2],
                z=location[1][3],
                heading=location[1][4]
            }
            loc2 = {
                x=location[2][1],
                y=location[2][2],
                z=location[2][3],
                heading=location[2][4]
            }
            Red = location[3][1]
            Green = location[3][2]
            Blue = location[3][3]

            DrawMarker(1, loc1.x, loc1.y, loc1.z, 0, 0, 0, 0, 0, 0, 1.501, 1.5001, 0.5001, Red, Green, Blue, 200, 0, 0, 0, 0)
            DrawMarker(1, loc2.x, loc2.y, loc2.z, 0, 0, 0, 0, 0, 0, 1.501, 1.5001, 0.5001, Red, Green, Blue, 200, 0, 0, 0, 0)

            if CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, loc1.x, loc1.y, loc1.z, 2) then 
                alert(teleport_text)
                
                if IsControlJustReleased(1, key_to_teleport) then
                    if IsPedInAnyVehicle(player, true) then
                        SetEntityCoords(GetVehiclePedIsUsing(player), loc2.x, loc2.y, loc2.z)
                        SetEntityHeading(GetVehiclePedIsUsing(player), loc2.heading)
                    else
                        SetEntityCoords(player, loc2.x, loc2.y, loc2.z)
                        SetEntityHeading(player, loc2.heading)
                    end
                end

            elseif CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, loc2.x, loc2.y, loc2.z, 2) then
                alert(teleport_text)

                if IsControlJustReleased(1, key_to_teleport) then
                    if IsPedInAnyVehicle(player, true) then
                        SetEntityCoords(GetVehiclePedIsUsing(player), loc1.x, loc1.y, loc1.z)
                        SetEntityHeading(GetVehiclePedIsUsing(player), loc1.heading)
                    else
                        SetEntityCoords(player, loc1.x, loc1.y, loc1.z)
                        SetEntityHeading(player, loc1.heading)
                    end
                end
            end            
        end
    end
end)

function CheckPos(x, y, z, cx, cy, cz, radius)
    local t1 = x - cx
    local t12 = t1^2

    local t2 = y-cy
    local t21 = t2^2

    local t3 = z - cz
    local t31 = t3^2

    return (t12 + t21 + t31) <= radius^2
end

function alert(msg)
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0,0,1,-1)
end