function commandKillSelf()
  TriggerEvent("setHealth", 0)
end

function commandSpawnVehicle(vehicle)
  if (vehicle ~= nil) then
    TriggerEvent("createCarAtPlayerPos", vehicle)
  end
end

local mainMenu = {
  currentMenu = "main",
  open = false,
  selection = 1,
  selected = false,
  countGap = 0,
  menu = {
		["main"] = {
			title = "Freeroam Menu",
			name = "main",
      previous = "close",
			buttons = {
				{name = "Vehicle Spawn", openmenu = "vehiclespawn"},
				{name = "Kill Self", callback = commandKillSelf}
			}
		},
    ["vehiclespawn"] = {
      title = "Vehicle Spawn",
      name = "vehiclespawn",
      previous = "main",
      buttons = {
        {name = "Sports", openmenu = "veh_sports"},
        {name = "Sports Classics", openmenu = "veh_sportsclassics"},
        {name = "Super", openmenu = "veh_super"},
      }
    },
    ["veh_sports"] = {
      title = "Sports",
      name = "veh_sports",
      previous = "vehiclespawn",
      buttons = {
        {name = "9F", callback = commandSpawnVehicle, var = "ninef"},
				{name = "9F Cabrio", callback = commandSpawnVehicle, var = "ninef2"},
				{name = "Alpha", callback = commandSpawnVehicle, var = "alpha"},
				{name = "Banshee", callback = commandSpawnVehicle, var = "banshee"},
				{name = "Bestia GTS", callback = commandSpawnVehicle, var = "bestiagts"},
				{name = "Blista Compact", callback = commandSpawnVehicle, var = "blista"},
				{name = "Buffalo", callback = commandSpawnVehicle, var = "buffalo"},
				{name = "Buffalo S", callback = commandSpawnVehicle, var = "buffalo2"},
				{name = "Carbonizzare", callback = commandSpawnVehicle, var = "carbonizzare"},
				{name = "Comet", callback = commandSpawnVehicle, var = "comet2"},
				{name = "Coquette", callback = commandSpawnVehicle, var = "coquette"},
				{name = "Drift Tampa", callback = commandSpawnVehicle, var = "tampa2"},
				{name = "Feltzer", callback = commandSpawnVehicle, var = "feltzer2"},
				{name = "Furore GT", callback = commandSpawnVehicle, var = "furoregt"},
				{name = "Fusilade", callback = commandSpawnVehicle, var = "fusilade"},
				{name = "Jester", callback = commandSpawnVehicle, var = "jester"},
				{name = "Jester(Racecar)", callback = commandSpawnVehicle, var = "jester2"},
				{name = "Kuruma", callback = commandSpawnVehicle, var = "kuruma"},
				{name = "Lynx", callback = commandSpawnVehicle, var = "lynx"},
				{name = "Massacro", callback = commandSpawnVehicle, var = "massacro"},
				{name = "Massacro(Racecar)", callback = commandSpawnVehicle, var = "massacro2"},
				{name = "Omnis", callback = commandSpawnVehicle, var = "omnis"},
				{name = "Penumbra", callback = commandSpawnVehicle, var = "penumbra"},
				{name = "Rapid GT", callback = commandSpawnVehicle, var = "rapidgt"},
				{name = "Rapid GT Convertible", callback = commandSpawnVehicle, var = "rapidgt2"},
				{name = "Schafter V12", callback = commandSpawnVehicle, var = "schafter3"},
				{name = "Sultan", callback = commandSpawnVehicle, var = "sultan"},
				{name = "Surano", callback = commandSpawnVehicle, var = "surano"},
				{name = "Tropos", callback = commandSpawnVehicle, var = "tropos"},
				{name = "Verkierer", callback = commandSpawnVehicle, var = "verlierer2"}
      }
    },
    ["veh_sportsclassics"] = {
      title = "Sports Classics",
      name = "veh_sportsclassics",
      previous = "vehiclespawn",
      buttons = {
        {name = "Casco", callback = commandSpawnVehicle, var = "casco"},
        {name = "Coquette Classic", callback = commandSpawnVehicle, var = "coquette2"},
        {name = "Fränken Stange", callback = commandSpawnVehicle, var = "btype2"},
        {name = "JB 700", callback = commandSpawnVehicle, var = "jb700"},
        {name = "Mamba", callback = commandSpawnVehicle, var = "mamba"},
        {name = "Manana", callback = commandSpawnVehicle, var = "manana"},
        {name = "Monroe", callback = commandSpawnVehicle, var = "monroe"},
        {name = "Peyote", callback = commandSpawnVehicle, var = "peyote"},
        {name = "Pigalle", callback = commandSpawnVehicle, var = "pigalle"},
        {name = "Stinger", callback = commandSpawnVehicle, var = "stinger"},
        {name = "Stinger GT", callback = commandSpawnVehicle, var = "stingergt"},
        {name = "Stirling GT", callback = commandSpawnVehicle, var = "feltzer3"},
        {name = "Tornado", callback = commandSpawnVehicle, var = "tornado"},
        {name = "Z-Type", callback = commandSpawnVehicle, var = "ztype"}
      }
    },
    ["veh_super"] = {
      title = "Super",
      name = "veh_super",
      previous = "vehiclespawn",
      buttons = {
        {name = "Adder", callback = commandSpawnVehicle, var = "adder"},
				{name = "Banshee 900R", callback = commandSpawnVehicle, var = "banshee2"},
				{name = "Bullet", callback = commandSpawnVehicle, var = "bullet"},
				{name = "Cheetah", callback = commandSpawnVehicle, var = "cheetah"},
				{name = "Entity XF", callback = commandSpawnVehicle, var = "entityxf"},
				{name = "ETR1", callback = commandSpawnVehicle, var = "sheava"},
				{name = "FMJ", callback = commandSpawnVehicle, var = "fmj"},
				{name = "Infernus", callback = commandSpawnVehicle, var = "infernus"},
				{name = "Osiris", callback = commandSpawnVehicle, var = "osiris"},
				{name = "RE-7B", callback = commandSpawnVehicle, var = "le7b"},
				{name = "Reaper", callback = commandSpawnVehicle, var = "reaper"},
				{name = "Sultan RS", callback = commandSpawnVehicle, var = "sultanrs"},
				{name = "T20", callback = commandSpawnVehicle, var = "t20"},
				{name = "Turismo R", callback = commandSpawnVehicle, var = "turismor"},
				{name = "Tyrus", callback = commandSpawnVehicle, var = "tyrus"},
				{name = "Vacca", callback = commandSpawnVehicle, var = "vacca"},
				{name = "Voltic", callback = commandSpawnVehicle, var = "voltic"},
				{name = "X80 Proto", callback = commandSpawnVehicle, var = "prototipo"},
				{name = "Zentorno", callback = commandSpawnVehicle, var = "zentorno"}
      }
    },
  }
}

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1)

    mainMenu = exports.mx:parseMenu(mainMenu)
  end
end)
