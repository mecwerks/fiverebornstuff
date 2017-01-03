
function ShowNotification(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(false, false)
end

AddEventHandler('playerSpawned', function(spawn)
  TriggerServerEvent("mxPlayerSpawned")

	if gmPlayerJoined == 1 then
		ShowNotification('Welcome to ~r~ Marxy Freeroam ~b~' .. GetPlayerName(player) .. '~w~, enjoy your time!')
		gmPlayerJoined = 2
	end
end)

AddEventHandler('onPlayerJoining', function(netId, name)
	if gmPlayerJoined == 0 then
		gmPlayerJoined = 1
	end
end)
