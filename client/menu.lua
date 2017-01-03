-- [ Menu System ] --

local textColor = { 255, 255, 255, 255 }
local titleBgColor = { 0, 44, 55, 255 }
local backgroundColor = { 15, 15, 15, 220 }
local scrollerColor = { 220, 220, 220, 190 }

local optionsTextFont = 4
local titleTextFont = 1

local optionsTextX = 0.745
local optionsTextY = 0.1245
local optionsTextGap = 0.035
local optionsTextScale = 0.5
local optionBgX = 0.845

local titleX = 0.845
local titleY = 0.098
local titleScale = 0.75
local titleTextRed = 20;

local titleBgX = 0.845
local titleBgY = 0.1175
local titleBgWidth = 0.23
local titleBgHeight = 0.085

local numOptDisplay = 10

function parseMenu(menu)
  menu = checkMenuControls(menu)

  if (menu.open == true) then
    local curMenu = menu.menu[menu.currentMenu]

    Draw_Text(curMenu.title, titleTextFont, titleX, titleY, titleScale, titleScale, textColor[1], textColor[2], textColor[3], textColor[4], true)
    Draw_Texture("CommonMenu", "interaction_bgd", titleBgX, titleBgY, titleBgWidth, titleBgHeight, 180, titleBgColor[1], titleBgColor[2], titleBgColor[3], titleBgColor[4])

    local optCount = 0
    local numToDraw = 0

    if (#curMenu.buttons <= numOptDisplay) then
      numToDraw = #curMenu.buttons
    else
      numToDraw = numOptDisplay
    end

    while(optCount < numToDraw) do
      optCount = optCount + 1
      local v = curMenu.buttons[optCount + menu.countGap]
      local y = optCount * optionsTextGap + optionsTextY
      Draw_Text(v.name, optionsTextFont, optionsTextX, y, optionsTextScale, optionsTextScale, textColor[1], textColor[2], textColor[3], textColor[4], false)
    end

    defaultMenuActions(numToDraw, menu.selection - menu.countGap)

    if (menu.selected) then
      local button = curMenu.buttons[menu.selection]
      if (button.openmenu ~= nil) then
        menu.currentMenu = button.openmenu
        menu.selection = 1
        menu.countGap = 0
      elseif (button.var ~= nil) then
        button.callback(button.var)
      else
        button.callback()
      end
      menu.selected = false
    end
  end

  return menu
end

--Text drawing functions
function Draw_Notification(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(false, false)
end

function Draw_Text(text, font, x, y, scalex, scaley, r,g,b,a, center)
  SetTextFont(font)
  --SetTextProportional(0)
  SetTextScale(scalex, scaley)
  SetTextColour(r, g, b, a)
  SetTextWrap(0.0, 1.0)
  SetTextCentre(center)
  -- SetTextEdge(1, 0, 0, 0, 255)
  SetTextDropShadow(0, 0, 0, 0, 0)
  SetTextOutline()
  SetTextEntry("STRING")
  AddTextComponentString(text)
  DrawText(x, y)
end

function Draw_Texture(streamedTexture, textureName, x, y, width, height, rotation, r,g,b,a)
  if(not HasStreamedTextureDictLoaded(streamedTexture)) then
    RequestStreamedTextureDict(streamedTexture, true)
  else
    DrawSprite(streamedTexture, textureName, x, y, width, height, rotation, r,g,b,a)
  end
end

local button_menuOpen = 190   -- DPAD Right
local button_menuUp = 188     -- DPAD Up
local button_menuDown = 187   -- DPAD Down
local button_menuSelect = 201 -- A
local button_menuBack = 202   -- B

function checkMenuControls(menu)
  if(IsControlJustReleased(1, button_menuOpen))then
    menu.open = not menu.open
    return menu
  end

  if (menu.open) then
    if(IsControlJustReleased(1, button_menuUp))then
      if (menu.selection > 1) then
        menu.selection = menu.selection - 1
        if (menu.selection < menu.countGap + 1 and menu.countGap > 0) then
          menu.countGap = menu.countGap - 1
        end
      end
    elseif(IsControlJustReleased(1, button_menuDown))then
      if (menu.selection < #menu.menu[menu.currentMenu].buttons) then
        menu.selection = menu.selection + 1
        if (menu.selection > (numOptDisplay + menu.countGap)) then
          menu.countGap = menu.countGap + 1
        end
      end
    end

    if(IsControlJustReleased(1, button_menuSelect))then
      menu.selected = true
    elseif(IsControlJustReleased(1, button_menuBack))then
      local previous = menu.menu[menu.currentMenu].previous
      if (previous == "close") then
        menu.open = false
      else
        menu.currentMenu = previous
        menu.selection = 1
        menu.countGap = 0
      end
    end
  end

  return menu
end

function defaultMenuActions(numToDraw, selection)
  HideHelpTextThisFrame()
  SetCinematicButtonActive(0)
  HideHudComponentThisFrame(10)
  HideHudComponentThisFrame(6)
  HideHudComponentThisFrame(7)
  HideHudComponentThisFrame(9)
  HideHudComponentThisFrame(8)
  DisableControlAction(2, INPUT_NEXT_CAMERA, true)
  DisableControlAction(2, INPUT_PHONE, true)
  DisableControlAction(2, INPUT_VEH_CIN_CAM, true)
  DisableControlAction(2, INPUT_SELECT_CHARACTER_FRANKLIN, true)
  DisableControlAction(2, INPUT_SELECT_CHARACTER_MICHAEL, true)
  DisableControlAction(2, INPUT_SELECT_CHARACTER_TREVOR, true)
  DisableControlAction(2, INPUT_SELECT_CHARACTER_MULTIPLAYER, true)
  DisableControlAction(2, INPUT_CHARACTER_WHEEL, true)
  DisableControlAction(2, INPUT_MELEE_ATTACK_LIGHT, true)
  DisableControlAction(2, INPUT_MELEE_ATTACK_HEAVY, true)
  DisableControlAction(2, INPUT_MELEE_ATTACK_ALTERNATE, true)
  DisableControlAction(2, INPUT_MULTIPLAYER_INFO, true)
  DisableControlAction(2, INPUT_MAP_POI, true)
  DisableControlAction(2, INPUT_PHONE, true)

  DrawRect(optionBgX, (((numToDraw * 0.035) / 2) + 0.159), 0.23, (numToDraw * 0.035), backgroundColor[1], backgroundColor[2], backgroundColor[3], backgroundColor[4])
  DrawRect(optionBgX, ((selection * 0.035) + 0.1415), 0.23, 0.035, scrollerColor[1], scrollerColor[2], scrollerColor[3], scrollerColor[4])
end
