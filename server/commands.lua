require "resources.mx.shared"
require "resources.mx.server.common"

function stringsplit(self, delimiter)
  local a = self:Split(delimiter)
  local t = {}

  for i = 0, #a - 1 do
     table.insert(t, a[i])
  end

  return t
end

AddEventHandler('chatMessage', function(source, color, message)
	command = stringsplit(message, " ")

	print(color .. ":" .. message)

	if(message:sub(1, 1) == "/")then
		CancelEvent()
  else
    CancelEvent()
    return
  end

  if command[1] == "/help" then
    SendPlayerChatMessage(source, "💡 Commands:")
		SendPlayerChatMessage(source, " /suicide")
		SendPlayerChatMessage(source, " /vehicle name")
		SendPlayerChatMessage(source, " /weapon name")
  elseif(command[1] == "/suicide") then
    TriggerClientEvent("setHealth", source, 0)
  elseif(command[1] == "/vehicle") then
		if(command[2] ~= nil) then
			TriggerClientEvent("createCarAtPlayerPos", source, command[2], false)
		end
	elseif(command[1] == "/weapon") then
		if(command[2] ~= nil) then
			local spawn_wep = nil

			for i, name in ipairs(meleeWeapons) do
				if(string.lower(string.sub(name, 8)) == command[2]) then
					TriggerClientEvent("spawnWeaponForPlayer", source, name)
					return
				end
			end

      for i, name in ipairs(pistolWeapons) do
				if(string.lower(string.sub(name, 8)) == command[2]) then
					TriggerClientEvent("spawnWeaponForPlayer", source, name)
					return
				end
			end

      for i, name in ipairs(smgWeapons) do
				if(string.lower(string.sub(name, 8)) == command[2]) then
					TriggerClientEvent("spawnWeaponForPlayer", source, name)
					return
				end
			end

      for i, name in ipairs(assualtWeapons) do
				if(string.lower(string.sub(name, 8)) == command[2]) then
					TriggerClientEvent("spawnWeaponForPlayer", source, name)
					return
				end
			end

      for i, name in ipairs(shotgunWeapons) do
				if(string.lower(string.sub(name, 8)) == command[2]) then
					TriggerClientEvent("spawnWeaponForPlayer", source, name)
					return
				end
			end

      for i, name in ipairs(sniperWeapons) do
				if(string.lower(string.sub(name, 8)) == command[2]) then
					TriggerClientEvent("spawnWeaponForPlayer", source, name)
					return
				end
			end

      for i, name in ipairs(throwableWeapons) do
				if(string.lower(string.sub(name, 8)) == command[2]) then
					TriggerClientEvent("spawnWeaponForPlayer", source, name)
					return
				end
			end

      for i, name in ipairs(mgWeapons) do
				if(string.lower(string.sub(name, 8)) == command[2]) then
					TriggerClientEvent("spawnWeaponForPlayer", source, name)
					return
				end
			end

      for i, name in ipairs(heavyWeapons) do
				if(string.lower(string.sub(name, 8)) == command[2]) then
					TriggerClientEvent("spawnWeaponForPlayer", source, name)
					return
				end
			end

      for i, name in ipairs(specialWeapons) do
				if(string.lower(string.sub(name, 8)) == command[2]) then
					TriggerClientEvent("spawnWeaponForPlayer", source, name)
					return
				end
			end

			SendPlayerChatMessage(source, "Weapon not found: " .. name)
		end
  end
end)
