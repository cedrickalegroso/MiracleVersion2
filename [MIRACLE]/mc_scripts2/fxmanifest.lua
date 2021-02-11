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
  
--garage

 -- 'esx_advancedgarage/server/main.lua',
  
    --vehiclesop
 -- 'esx_advancedvehiclesop/server/main.lua',
  
 --esx_scoreboard
  'esx_scoreboard/server/main.lua',

  --moneywash
  'esx_moneywash/server/main.lua',
  'esx_moneywash/version.lua',
  
  --basicneeds
 -- 'esx_basicneeds/server/main.lua',

  --clotheshop
  'esx_clotheshop/server/main.lua',

  --nkreapir
  'nk_repair/server.lua',

  --holdup
  'esx_holdup/server/main.lua',

  
 --holdupbank
-- 'esx_holdupbank/server/server.lua',

 --sakit
 --'esx_disease/server/main.lua',


   --drugs
  -- 'esx_drugsv2/server/server.lua',

   --duty
  'esx_duty/server/main.lua',

  --Jail
  'esx_qallejail/server/server.lua',

  --Ruski
  'esx_ruskiarrest/server/main.lua',

  --'egn_morgue/server/main.lua',

  --doorlock
  'esx_doorlock/server/main.lua',

   --holdupbank
   'esx_holdupbank/server/server.lua',

   'jsfour-idcard/server.lua'

 
}

client_scripts {
  '@es_extended/locale.lua',
  'locales/en.lua',
  'config.lua',

  --garage
 -- 'esx_advancedgarage/client/main.lua',
  

  --vehiclesop
	--'esx_advancedvehiclesop/client/utils.lua',
  --'esx_advancedvehiclesop/client/main.lua',
  

  --cahingrooms
  'ChangingRooms/client.lua',

  --moneywash
  'esx_moneywash/client/main.lua',

  --basicneeds
 -- 'esx_basicneeds/client/main.lua',

  --clotheshop
  'esx_clotheshop/client/main.lua',

  --nkrepair
  'nk_repair/client.lua',

  --tp
  'simpletp/client.lua',

   --holdup
   'esx_holdup/client/main.lua',

      --holdupbank
  --    'esx_holdupbank/client/server.lua',

      --sakit
 --     'esx_disease/client/main.lua',

      --drugs
     -- 'esx_drugsv2/client/client.lua',

       --duty
 'esx_duty/client/main.lua',


  --Jail
	'esx_qallejail/client/utils.lua',
  'esx_qallejail/client/client.lua',
  
  --Ruski
  'esx_ruskiarrest/client/main.lua',

  --Mourge
  --'egn_morgue/client/main.lua',

    --doorlock
    'esx_doorlock/client/main.lua',

       --holdupbank
   'esx_holdupbank/client/client.lua',

   
   'jsfour-idcard/client.lua',


  


}


files {
	'html/index.html',
	'html/assets/css/*.css',
	'html/assets/js/*.js',
	'html/assets/fonts/roboto/*.woff',
	'html/assets/fonts/roboto/*.woff2',
	'html/assets/fonts/justsignature/JustSignature.woff',
	'html/assets/images/*.png'
}




dependencies {
	'es_extended',
--  'esx_property',
	'esx_dmvschool',
  'esx_licenseshop',
  'esx_status'
}



export 'GeneratePlate'