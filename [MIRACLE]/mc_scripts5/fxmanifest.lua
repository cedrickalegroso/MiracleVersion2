fx_version 'adamant'

game 'gta5'

description 'ESX Advanced Garage'

Author 'Cedrick Alegroso'

version '1.0.0'


server_scripts {
  '@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
  '@es_extended/locale.lua',
  'config.lua',
  'locales/en.lua',

  --cartires
  'cartireschancing/server/main.lua',

  --extraitems
  'esx_extraitems/server/main.lua',

  --garbage
 -- 'esx_garbagecrew/server/main.lua',

  --gps
  'gps/server/main.lua',

  --delcar
  'nef_delcar/server/server.lua',

  --stress
--  'stress/utils.lua',
 -- 'stress/server.lua',

  --tats
  'server.lua',

    --tats
   -- 't1ger_drugs/server.lua',

  --carwash
--  'esx_pun_carwash/server.lua'

}

client_scripts {
  '@es_extended/locale.lua',
  'locales/en.lua',
  'config.lua',

   --cartires
   'cartireschancing/client/main.lua',
 
    --extraitems
  'esx_extraitems/client/main.lua',

    --extraitems
    'cl_emsid.lua',


--garbage
 -- 'esx_garbagecrew/client/main.lua',
--gps
  'gps/client/main.lua',

  'cl_blips.lua',

  --delcar
  'nef_delcar/client/client.lua',
    'nef_delcar/client/entityiter.lua',

    --holster
    'Reload_Holster/client.lua',

    --stress
  --  'stress/utils.lua',
   -- 'stress/client.lua',

       --tats
     --  't1ger_drugs/client.lua',
    

    --watermark
    "watermark/watermark.lua",

  --tats
    'jaymenu.lua',
    'client.lua',

    --carwash
  --  'esx_pun_carwash/client.lua'
}


file 'AllTattoos.json'



