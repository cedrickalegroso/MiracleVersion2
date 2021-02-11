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

  --Comserve
  'ESX_CommunityService/server/main.lua',

   --carkeys
 'ESX_GiveCarKeys/server/main.lua',

 --zipties
 'esx_zipties/server.lua',

 --RAD
 'rad_gsr/server/main.lua',

 --MFBOXING
 --'MF_Boxing/utils.lua',
  --'MF_Boxing/server.lua',



  --truck rob
 -- 'esx_TruckRobbery/server.lua',



  --HUMANE
 -- 'esx_borrmaskin/server/main.lua',
 -- 'esx_borrmaskin_humane/server/main.lua',
  --'esx-br-rob-humane/server/server.lua',

  --Pacific
 -- 'PacificStandard/incl.lua',
 -- 'PacificStandard/utils.lua',
 -- 'PacificStandard/server.lua',
  
  --Fuel
  --'LegacyFuel/source/fuel_server.lua',
  
  --jewel
  'esx_vangelico_robbery/server/esx_vangelico_robbery_sv.lua',

  --velock
  'esx_vehiclelock/server/main.lua',





  --JOBS
  'esx_jobs/jobs/fisherman.lua',
	'esx_jobs/jobs/fueler.lua',
	'esx_jobs/jobs/lumberjack.lua',
	'esx_jobs/jobs/miner.lua',
	'esx_jobs/jobs/reporter.lua',
	'esx_jobs/jobs/slaughterer.lua',
  'esx_jobs/jobs/tailor.lua',

  'esx_jobs/jobs/sv_scrap.lua',
 
  'esx_jobs/jobs/sv_burger.lua',
  
  --'esx_jobs/jobs/farmerserver.lua',
  'esx_jobs/jobs/milkmanserver.lua',

  'esx_jobs/server/main.lua',
  
   --jobli
  'esx_joblisting/server/main.lua',

 
   --tatto
  -- 'esx_tattoosShops/server/server.lua',

   --dsicbase
  -- 'disc-base/utils.lua',
  --  'disc-base/server/items.lua',
  --  'disc-base/server/main.lua',
  --  'disc-base/server/cron.lua',

   --discammo
   'disc-ammo/server/main.lua',

   --attachment
   'esx_attachments_bleiker/server/main.lua',

   --armor
   'esx_Armour/server/sv_armour.lua',

    --accee
    'esx_accessories/server/main.lua',

  'RealisticVehicleFailure/server.lua'
}

client_scripts {
  '@es_extended/locale.lua',
  'locales/en.lua',
  'config.lua',

  --Comserve
  'ESX_CommunityService/client/main.lua',

  
 --carkeys
 'ESX_GiveCarKeys/client/main.lua',

 --zipties
 'esx_zipties/client.lua',

 --velock
 'esx_vehiclelock/client/main.lua',


 --RAD
 'rad_gsr/client/main.lua',

 --MF BOXING
-- 'MF_Boxing/utils.lua',
-- 'MF_Boxing/client.lua',

  
  --truck rob
--  'esx_TruckRobbery/client.lua',

  --banking
--  'new_banking/client/client.lua',

 

  --HUMANE
 -- 'esx_borrmaskin/client/main.lua',
 -- 'esx_borrmaskin_humane/client/main.lua',
  --'esx-br-rob-humane/client/client.lua',

  --pacific
 -- 'PacificStandard/utils.lua',
	--'PacificStandard/client.lua',
  
  --Fuel
	--'LegacyFuel/functions/functions_client.lua',
  --'LegacyFuel/source/fuel_client.lua',
  
  --jewel
  'esx_vangelico_robbery/client/esx_vangelico_robbery_cl.lua',

--Jobs
  'esx_jobs/jobs/fisherman.lua',
	'esx_jobs/jobs/fueler.lua',
	'esx_jobs/jobs/lumberjack.lua',
	'esx_jobs/jobs/miner.lua',
	'esx_jobs/jobs/reporter.lua',
	'esx_jobs/jobs/slaughterer.lua',
  'esx_jobs/jobs/tailor.lua',
--  'esx_jobs/jobs/farmerclient.lua',
  'esx_jobs/jobs/milkmanclient.lua',
  'esx_jobs/jobs/cl_burger.lua',
  'esx_jobs/jobs/cl_scrap.lua',


  'esx_jobs/client/main.lua',
  
   --jobli
   'esx_joblisting/client/main.lua',
   
   --tattoo
  -- 'esx_tattoosShops/client/client.lua',
 -- 'esx_tattoosShops/client/tattoosList/list.lua',

  --disc base
 -- 'disc-base/client/main.lua',
 --   'disc-base/utils.lua',
 --  'disc-base/client/markers.lua',


  --disc ammo
  'disc-ammo/client/main.lua',


  --tlg ads
  'TLG-ADS/client.lua',


  --attachment
  'esx_attachments_bleiker/client/main.lua',

  --arromor
  'esx_Armour/client/cl_armour.lua',


  --realistic
  'RealisticVehicleFailure/client.lua',


    --push
   'esx-kr-vehicle-push/client.lua',


    --servername
    'pausemenu-title/server_name.lua',


      --accee
      'esx_accessories/client/main.lua',

      'utk_fingerprint/client.lua'

}


ui_page "movies/movie.html"

files {
  "movies/script.js",
  "movies/style.css",
  "movies/intro.gif",
  "movies/success.gif",
  "movies/fail.gif",
  "movies/blank.png",
  "movies/movie.html",
}




dependencies {
	'es_extended',
 -- 'esx_property',
	'esx_dmvschool',
  'esx_licenseshop',

}


exports {
  'GeneratePlate',
	'GetFuel',
	'SetFuel'
}


