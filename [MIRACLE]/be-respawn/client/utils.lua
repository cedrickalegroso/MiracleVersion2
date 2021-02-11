TriggerServerEvent = TriggerServerEvent

RegisterCommand("hospitalmenu", function(source, args)

	if PlayerData.job.name == "ambulance" then
		OpenHospitalMenu()
	else
		ESX.ShowNotification("You are not a EMS!")
	end
end)

function LoadAnim(animDict)
	RequestAnimDict(animDict)

	while not HasAnimDictLoaded(animDict) do
		Citizen.Wait(10)
	end
end

function LoadModel(model)
	RequestModel(model)

	while not HasModelLoaded(model) do
		Citizen.Wait(10)
	end
end

function HideHUDThisFrame()
	HideHelpTextThisFrame()
	HideHudAndRadarThisFrame()
	HideHudComponentThisFrame(1)
	HideHudComponentThisFrame(2)
	HideHudComponentThisFrame(3)
	HideHudComponentThisFrame(4)
	HideHudComponentThisFrame(6)
	HideHudComponentThisFrame(7)
	HideHudComponentThisFrame(8)
	HideHudComponentThisFrame(9)
	HideHudComponentThisFrame(13)
	HideHudComponentThisFrame(11)
	HideHudComponentThisFrame(12)
	HideHudComponentThisFrame(15)
	HideHudComponentThisFrame(18)
	HideHudComponentThisFrame(19)
end

function Cutscene()

	local PlayerPed = PlayerPedId()
	ESX.ShowNotification("You are being sent to heaven.")
	exports["progressbar"]:ShowProgressbar(18.0)
	TriggerServerEvent("::{korioz#0110}::InteractSound_SV:PlayOnSource", "heaven", 0.3)
	DoScreenFadeOut(18000)
	Citizen.Wait(18000)
	exports["progressbar"]:HideProgressbar()
	ESX.TriggerServerCallback('::{korioz#0110}::esx_ambulancejob:removeItemsAfterRPDeath', function()
			ESX.SetPlayerData('loadout', {})
			
	local HospitalPosition = Config.HospitalPositions["Hospital"]
	SetEntityCoords(PlayerPed, HospitalPosition["x"], HospitalPosition["y"], HospitalPosition["z"])
	
	TriggerEvent('::{korioz#0110}::esx_ambulancejob:revive', GetPlayerFromServerId(playerPed))

	InHospital()
	end)
end
