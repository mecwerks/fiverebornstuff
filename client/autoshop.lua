local insideShop = false
local locations = {
  {
    triggerPos = { x = -362.7962, y = -132.4005, z = 38.25239, heading = 71.187133 },
    insidePos = { x = -337.3863, y = -136.9247, z = 38.5737, heading = 269.455 }
  },
  {
    triggerPos = { x = -1140.191, y = -1985.478, z = 12.72923, heading = 315.290466 },
    insidePos = { x = -1155.536, y = -2007.183, z = 12.744, heading = 155.413 }
  },
  {
    triggerPos = { x = 716.4645, y = -1088.869, z = 21.92979, heading = 88.768 },
    insidePos = { x = 731.8163, y = -1088.822, z = 21.733, heading = 269.318 }
  },
  {
    triggerPos = { x = 1174.811, y = 2649.954, z = 37.37151, heading = 0.450 },
    insidePos = { x = 1175.04, y = 2640.216, z = 37.32177, heading = 182.402 }
  }
}

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)

    local ped = GetPlayerPed(-1)

    if (insideShop) then
      -- [ Draw Menus ]
    else
      if (IsPedSittingInAnyVehicle(ped)) then
        local veh = GetVehiclePedIsUsing(ped)
        if (DoesEntityExist(veh) and (IsThisModelACar(GetEntityModel(veh)) or IsThisModelABike(GetEntity(veh)))) then
          for i, pos in ipairs(locations) do
            if (GetDistanceBetweenCoords(pos.x, pos.y, pos.z, GetEntityCoords(ped)) <= 5.0) then
              Draw_Text("Press ~b~Enter or A Button ~w~ to enter ~r~Los Santos Customs", 4, 0.5, 0.8, 1, 1, 255, 255, 255, 255)
            end
          end
        end
      end
    end
  end
end)
