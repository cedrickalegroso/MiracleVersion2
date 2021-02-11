fx_version 'adamant'

game 'gta5'

description 'OH RAYT!'

Author 'Cedrick Alegroso'

version '1.0.0'


server_scripts {
  '@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
  '@es_extended/locale.lua',
  'config.lua',
  'locales/en.lua',

   --ambu
   'esx_ambulancejob/server/main.lua',



   --ambu
 'esx_policejob/server/main.lua',

   --ambu
 -- 'nef_guerrero/server/main.lua',
  -- 'nef_tamasak/server/main.lua',

   --loaf
-- 'loaf_garage/server.lua',
 -- 'loaf_housing/server.lua',
 -- 'loaf_housing/functions.lua',


 
 

}

client_scripts {
  '@es_extended/locale.lua',
  'locales/en.lua',
  'config.lua',

   --ambu
   'esx_ambulancejob/client/job.lua',
   'esx_ambulancejob/client/main.lua',

   --popo
  'esx_policejob/client/vehicle.lua',
   'esx_policejob/client/main.lua',

   --gang1
  -- 'nef_guerrero/client/vehicle.lua',
   --'nef_guerrero/client/main.lua',

   --gang2
 --  'nef_tamasak/client/vehicle.lua',
   --'nef_tamasak/client/main.lua',

    --gang2
    'license_menu/client/main.lua',




       --loaf
 --'loaf_garage/client.lua',
  -- 'loaf_housing/client.lua',
  --'loaf_housing/functions.lua',


   'cctv.lua',



  
  --prop
 -- 'b1g_props/prop.lua'
}



