--[[ Lists ]]--

local melees = {
  "WEAPON_KNIFE",
  "WEAPON_NIGHTSTICK",
  "WEAPON_HAMMER",
  "WEAPON_BAT",
  "WEAPON_GOLFCLUB",
  "WEAPON_CROWBAR",
  "WEAPON_DAGGER",
  "WEAPON_HATCHET",
  "WEAPON_KNUCKLE",
  "WEAPON_BOTTLE",
  "WEAPON_SWITCHBLADE",
  "WEAPON_MACHETE",
  "WEAPON_FLASHLIGHT"
}

local pistols = {
  "WEAPON_PISTOL",
  "WEAPON_COMBATPISTOL",
  "WEAPON_APPISTOL",
  "WEAPON_PISTOL50",
  "WEAPON_SNSPISTOL",
  "WEAPON_HEAVYPISTOL",
  "WEAPON_VINTAGEPISTOL",
  "WEAPON_REVOLVER",
  "WEAPON_MARKSMANPISTOL",
  "WEAPON_MACHINEPISTOL"
}

local smgs = {
  "WEAPON_SMG",
  "WEAPON_ASSAULTSMG",
  "WEAPON_MICROSMG",
  "WEAPON_GUSENBERG",
  "WEAPON_COMBATPDW"
}

local assualts = {
  "WEAPON_ASSAULTRIFLE",
  "WEAPON_CARBINERIFLE",
  "WEAPON_ADVANCEDRIFLE",
  "WEAPON_SPECIALCARBINE",
  "WEAPON_BULLPUPRIFLE",
  "WEAPON_COMPACTRIFLE"
}

local shotguns = {
  "WEAPON_MUSKET",
  "WEAPON_SAWNOFFSHOTGUN",
  "WEAPON_ASSAULTSHOTGUN",
  "WEAPON_BULLPUPSHOTGUN",
  "WEAPON_PUMPSHOTGUN",
  "WEAPON_HEAVYSHOTGUN",
  "WEAPON_DBSHOTGUN"
}

local snipers = {
  "WEAPON_SNIPERRIFLE",
  "WEAPON_HEAVYSNIPER",
  "WEAPON_MARKSMANRIFLE",
}

local throwables = {
  "WEAPON_MOLOTOV",
  "WEAPON_PROXMINE",
  "WEAPON_GRENADE",
  "WEAPON_STICKYBOMB",
  "WEAPON_FLARE",
  "WEAPON_SMOKEGRENADE",
  "WEAPON_BZGAS",
  "WEAPON_SNOWBALL"
}

local mgs = {
  "WEAPON_MG",
  "WEAPON_COMBATMG"
}

local heavys = {
  "WEAPON_HOMINGLAUNCHER",
  "WEAPON_MINIGUN",
  "WEAPON_GRENADELAUNCHER",
  "WEAPON_GRENADELAUNCHER_SMOKE",
  "WEAPON_RPG",
  "WEAPON_RAILGUN"
}

local specials = {
  "WEAPON_STUNGUN",
  "WEAPON_FIREEXTINGUISHER",
  "WEAPON_PETROLCAN",
  "WEAPON_FIREWORK",
  "WEAPON_FLAREGUN"
}

RegisterServerEvent("mxPlayerSpawned")
AddEventHandler('mxPlayerSpawned', function()
	TriggerClientEvent("spawnWeaponForPlayer", source, assualts[math.random(#assualts)])
	TriggerClientEvent("spawnWeaponForPlayer", source, shotguns[math.random(#shotguns)])
	TriggerClientEvent("spawnWeaponForPlayer", source, pistols[math.random(#pistols)])
	TriggerClientEvent("spawnWeaponForPlayer", source, throwables[math.random(#throwables)])
end)
