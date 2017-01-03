-- [Player Spawning]
local gmPlayerJoined = 0

RegisterNetEvent("setHealth")
AddEventHandler("setHealth", function(health)
	SetEntityHealth(GetPlayerPed(-1), health)
end)

RegisterNetEvent("spawnWeaponForPlayer")
AddEventHandler('spawnWeaponForPlayer', function(weapon)
  Citizen.CreateThread(function()
    Citizen.Wait(50)
    local weaponid = GetHashKey(weapon)
    local playerPed = GetPlayerPed(-1)
    if playerPed and playerPed ~= -1 then
			--TriggerEvent('chatMessage', 'SYSTEM', {0, 255, 0}, "🔫 Weapon spawned")
	     GiveWeaponToPed(playerPed, weaponid, 500, true, true)
    end
  end)
end)

local playerVehicle = nil
local lastSpawnedVehicle = nil

function myDeleteVehicle(vehicleID)
	Citizen.InvokeNative(0xEA386986E786A54F, Citizen.PointerValueIntInitialized(lastSpawnedVehicle))
end

RegisterNetEvent("createCarAtPlayerPos")
AddEventHandler('createCarAtPlayerPos', function(message, personal)
    Citizen.CreateThread(function()
        Citizen.Wait(50)
        local carid = GetHashKey(message)
        local playerPed = GetPlayerPed(-1)
        if playerPed and playerPed ~= -1 then
            RequestModel(carid)
            while not HasModelLoaded(carid) do
                Citizen.Wait(0)
            end
            local playerCoords = GetEntityCoords(playerPed)
            playerCoords = playerCoords + vector3(0, 2, 0)

			if(lastSpawnedVehicle ~= nil)then
				myDeleteVehicle(lastSpawnedVehicle)
			end

    	lastSpawnedVehicle = CreateVehicle(carid, playerCoords, 0.0, true, false)
			-- SetVehicleEnginePowerMultiplier(lastSpawnedVehicle, 10000000.0)
			TaskWarpPedIntoVehicle(playerPed, lastSpawnedVehicle, -1)

			if(personal)then
				playerVehicle = lastSpawnedVehicle
			end
        end
    end)
end)

RegisterNetEvent("upgradePlayerVehicle")
AddEventHandler("upgradePlayerVehicle", function()
	if(playerVehicle ~= nil)then
		SetVehicleModKit(playerVehicle, 0)
		ToggleVehicleMod(playerVehicle, 18, true)
		ToggleVehicleMod(playerVehicle, 22, true)
		SetVehicleMod(playerVehicle, 16, 5, true)
		SetVehicleMod(playerVehicle, 12, 2, true)
		SetVehicleMod(playerVehicle, 11, 3, true)
		SetVehicleMod(playerVehicle, 14, 14, true)
		SetVehicleMod(playerVehicle, 15, 3, true)
		SetVehicleMod(playerVehicle, 13, 2, true)
		SetVehicleWheelType(playerVehicle, 6)
		SetVehicleWindowTint(playerVehicle, 5)
		SetVehicleMod(playerVehicle, 23, 19, true)
		SetVehicleMod(playerVehicle, 0, 1, true)
		SetVehicleMod(playerVehicle, 1, 1, true)
		SetVehicleMod(playerVehicle, 2, 1, true)
		SetVehicleMod(playerVehicle, 3, 1, true)
		SetVehicleMod(playerVehicle, 4, 1, true)
		SetVehicleMod(playerVehicle, 5, 1, true)
		SetVehicleMod(playerVehicle, 6, 1, true)
		SetVehicleMod(playerVehicle, 7, 1, true)
		SetVehicleMod(playerVehicle, 8, 1, true)
		SetVehicleMod(playerVehicle, 9, 1, true)
		SetVehicleMod(playerVehicle, 10, 1, true)
	end
end)

RegisterNetEvent("fixPersonalVehicle")
AddEventHandler("fixPersonalVehicle", function()
	if(playerVehicle ~= nil)then
		SetVehicleFixed(playerVehicle)
	end
end)
