fx_version'adamant'
game 'gta5'

author 'Cedrick Alegroso'
description 'Optmized scripts pack '
version '2.1'




client_script {
  '@es_extended/locale.lua',
  'locales/en.lua',
  'config.lua',

  --Em
  'Emergency/client.lua',

  --hospital
 'esx_hospital/client.lua',

  --Ktackle
  'esx_ktackle/client/main.lua',

   --Plastic
  -- 'esx_plasticsurgery/client/main.lua',

   --carwash
   'esx_pun_carwash/client.lua',

   --yachts
 --  'esx_YachtHeist/client.lua',


    --push
    'esx-kr-vehicle-push/client.lua',


    --heli
    'heli/heli_client.lua',

    --choppy
 --   'Lenzh_chopshop/client/cl_main.lua',


     --mdt
  --   'cl_mdt.lua',

        --basicneeds
    'esx_basicneeds/client/main.lua',

     --nitro
     --'nitro/client.lua'
    
   
   
}


server_script {
  '@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
  '@es_extended/locale.lua',
  'config.lua',
  'locales/en.lua',

  --Em
  'Emergency/server.lua',

  --hospital
  'esx_hospital/server.lua',

   --Ktackle
   'esx_ktackle/server/main.lua',

   --Plastic
 --  'esx_plasticsurgery/server/main.lua',

    --carwash
    'esx_pun_carwash/server.lua',

      --yacht
--   'esx_YachtHeist/server.lua',


   --heli
   'heli/heli_server.lua',

      --choppy
--      'Lenzh_chopshop/server/sv_main.lua',


       --mdt
   --  'sv_mdt.lua',

     --basicneeds
    'esx_basicneeds/server/main.lua',

       --nitro
     --  'nitro/server.lua'
    
}


