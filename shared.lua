function listWeapons(cat)
  if (cat == nil) then
    local list = meleeWeapons
    for k,v in pairs(pistolWeapons) do table.insert(list, v) end
    for k,v in pairs(smgWeapons) do table.insert(list, v) end
    for k,v in pairs(assualtWeapons) do table.insert(list, v) end
    for k,v in pairs(shotgunWeapons) do table.insert(list, v) end
    for k,v in pairs(sniperWeapons) do table.insert(list, v) end
    for k,v in pairs(throwableWeapons) do table.insert(list, v) end
    for k,v in pairs(mgWeapons) do table.insert(list, v) end
    for k,v in pairs(heavyWeapons) do table.insert(list, v) end
    for k,v in pairs(specialWeapons) do table.insert(list, v) end
    return list
  elseif (cat == "melee") then return meleeWeapons
  elseif (cat == "pistol") then return pistolWeapons
  elseif (cat == "smg") then return smgWeapons
  elseif (cat == "assult") then return assualtWeapons
  elseif (cat == "shotgun") then return shotgunWeapons
  elseif (cat == "sniper") then return sniperWeapons
  elseif (cat == "throwable") then return throwableWeapons
  elseif (cat == "mg") then return mgWeapons
  elseif (cat == "heavy") then return heavyWeapons
  elseif (cat == "special") then return specialWeapons end
end

--[[ Lists ]]--

meleeWeapons = {
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

pistolWeapons = {
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

smgWeapons = {
  "WEAPON_SMG",
  "WEAPON_ASSAULTSMG",
  "WEAPON_MICROSMG",
  "WEAPON_GUSENBERG",
  "WEAPON_COMBATPDW"
}

assualtWeapons = {
  "WEAPON_ASSAULTRIFLE",
  "WEAPON_CARBINERIFLE",
  "WEAPON_ADVANCEDRIFLE",
  "WEAPON_SPECIALCARBINE",
  "WEAPON_BULLPUPRIFLE",
  "WEAPON_COMPACTRIFLE"
}

shotgunWeapons = {
  "WEAPON_MUSKET",
  "WEAPON_SAWNOFFSHOTGUN",
  "WEAPON_ASSAULTSHOTGUN",
  "WEAPON_BULLPUPSHOTGUN",
  "WEAPON_PUMPSHOTGUN",
  "WEAPON_HEAVYSHOTGUN",
  "WEAPON_DBSHOTGUN"
}

sniperWeapons = {
  "WEAPON_SNIPERRIFLE",
  "WEAPON_HEAVYSNIPER",
  "WEAPON_MARKSMANRIFLE",
}

throwableWeapons = {
  "WEAPON_MOLOTOV",
  "WEAPON_PROXMINE",
  "WEAPON_GRENADE",
  "WEAPON_STICKYBOMB",
  "WEAPON_FLARE",
  "WEAPON_SMOKEGRENADE",
  "WEAPON_BZGAS",
  "WEAPON_SNOWBALL"
}

mgWeapons = {
  "WEAPON_MG",
  "WEAPON_COMBATMG"
}

heavyWeapons = {
  "WEAPON_HOMINGLAUNCHER",
  "WEAPON_MINIGUN",
  "WEAPON_GRENADELAUNCHER",
  "WEAPON_GRENADELAUNCHER_SMOKE",
  "WEAPON_RPG",
  "WEAPON_RAILGUN"
}

specialWeapons = {
  "WEAPON_STUNGUN",
  "WEAPON_FIREEXTINGUISHER",
  "WEAPON_PETROLCAN",
  "WEAPON_FIREWORK",
  "WEAPON_FLAREGUN"
}
