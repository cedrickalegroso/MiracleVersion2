fx_version 'adamant'

game 'gta5'

description 'ANTI CHEAT BABY'

Author 'Cedrick Alegroso'

version '1.0.0'

server_scripts {
  '@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
  '@es_extended/locale.lua',
  'config.lua',
  'locales/en.lua',
  'sv_bot.lua',

}

client_scripts {
  '@es_extended/locale.lua',
  'locales/en.lua',
  'config.lua',

  'cl_bot.lua',
  'carblacklist.lua',
  'weaponblacklist.lua',
  'pedblacklist.lua',
  'utils.lua',

}


