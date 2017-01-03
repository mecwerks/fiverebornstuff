description 'Mx Mod'

client_scripts {
  'client/commands.lua',
  'client/spawning.lua',
  'client/menu.lua',
  'client/gui.lua'
}

exports {
  'parseMenu'
}

server_scripts {
  'server/spawning.lua',
  'server/commands.lua'
}
