fx_version 'adamant'

game 'gta5'

description 'ESX STUFFS BUT MINIFIED BY ME '

Author 'CEDRICK ALEGROSO'

version '1.0.0'




server_scripts {
  '@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
  '@es_extended/locale.lua',
  'config.lua',
  'locales/en.lua',


  --cron
  'cron/server/main.lua',

  --addonacc
  'esx_addonaccount/server/main.lua',
  'esx_addonaccount/server/classes/addonaccount.lua',

  --addonin
  'esx_addoninventory/server/main.lua',
  'esx_addoninventory/server/classes/addoninventory.lua',

  --billing
  'esx_billing/server/main.lua',

  --data
  'esx_datastore/server/main.lua',
  'esx_datastore/server/classes/datastore.lua',

  --license
  'esx_license/server/main.lua',

  --service
--  'esx_service/server/main.lua',

  --skin
--  'esx_skin/server/main.lua',

  --soc
  --'esx_society/server/main.lua',

  --fxmigrant
--  'server/**/publish/*.net.dll',

  --instance
 -- 'instance/server/main.lua'

 

 
}

client_scripts {
  '@es_extended/locale.lua',
  'locales/en.lua',
  'config.lua',

  --bliing
  'esx_billing/client/main.lua',

  --service
  'esx_service/client/main.lua',

  --skin
 -- 'esx_skin/client/main.lua',

  --soc
 -- 'esx_society/client/main.lua',

  --instance
  'instance/client/main.lua',

  --pvp
  'pvp/client.lua',

  --skin
  'skinchanger/client/main.lua'







}

