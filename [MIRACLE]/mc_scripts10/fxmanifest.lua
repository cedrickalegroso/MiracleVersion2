fx_version 'adamant'

game 'gta5'

description 'ESX Advanced Garage'

Author 'Human Tree92 | Velociti Entertainment'

version '1.0.0'


ui_page 'html/index.html'


server_scripts {
  '@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
  '@es_extended/locale.lua',
  'config.lua',
  'locales/en.lua',
  

  'retro_logs/server/server.lua',
  'retro_logs/versioncheck.lua',

    'esx_TruckRobbery/server.lua',
	
	'esx_AdvancedFishing/server.lua',
	'esx_AdvancedFishing/server_config.lua',
	
	'esx-ecobottles/server/main.lua',
	
 -- 'AddictionRentBoats/server.lua',
 -- 'emsbeds/server.lua',

  'chat_com.lua'
 
}

client_scripts {
  '@es_extended/locale.lua',
  'locales/en.lua',
  'config.lua',

 'retro_logs/client/client.lua',
 'chat_com.lua',

 --'HideInTrunk/client.lua',

 'esx_TruckRobbery/client.lua',
 
 'esx_AdvancedFishing/client.lua',
 
-- 'ragdoll/client.lua',
 
 'esx-ecobottles/client/main.lua',
 
-- 'AddictionRentBoats/client.lua',
-- 'emsbeds/client.lua' 

}


file 'retro_logs/postals.json'
postal_file 'retro_logs/postals.json'
file 'retro_logs/version.json'

