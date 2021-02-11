fx_version 'adamant'

game 'gta5'

description 'NEF OPTMIZED SCRIPTS FOR WHITELISTED'

Author 'CEDRICK ALEGROSO'

version '2.0.0'

--ui_page 'rp-radio/index.html'

--ui_page 'mumble-voip/ui/index.html'

ui_page 'rp-radio/index.html'

server_scripts {
  '@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
  '@es_extended/locale.lua',
  'config.lua',
  'locales/en.lua',

   --ls
 'esx_lscustom/server/main.lua',

  --mech
--  'esx_mechanicjob/server/main.lua',

  --police
  --'esx_policejob/server/main.lua',

  --ambulance
 -- 'esx_ambulancejob/server/main.lua',

 

  --taxi
 -- 'taxijobv2/server/main.lua',


   --boxer
  --'boxerjob/server/main.lua',

      --car
  --    'sp_vehicleshop/server/main.lua',

     
    --  'rp-radio/server.lua',

   --   'mumble-voip/server.lua',

  -- 'rp-radio/server.lua',

  
  --'sv_bot.lua',

  --'GodZilla/godzillaanticheats.lua'

  'vSync/vs_server.lua',

--  'utk_shiftlog/server.lua',

--  'esx_autopaybills/server.lua',
  'eiiy_antigodmode/server.lua',


  'eiiy_triggerlogs/eiiy_config.lua',
  'eiiy_triggerlogs/eiiy_ban.lua',
  

  'sv_annc.lua',


 -- 'esx_YachtHeist/server.lua'

 -- 'sv_log.lua',
  --'esx_pun_carwash/server.lua'

 -- 'nef_principalBank/incl.lua',
  --'nef_principalBank/utils.lua',
	--'nef_principalBank/server.lua',
  
 
}

client_scripts {
  '@es_extended/locale.lua',
  'locales/en.lua',
  'config.lua',

--  'nef_principalBank/incl.lua',
--  'nef_principalBank/utils.lua',
--	'nef_principalBank/client.lua',

 -- 'esx_YachtHeist/client.lua',

 -- 'cl_log.lua',

 'vSync/vs_client.lua',

 'recoil.lua',

 --'nefbot/Client.lua',

 --'nefbot/Weapons.lua',
    --ls
   'esx_lscustom/client/main.lua',

  --mech
--  'esx_mechanicjob/client/main.lua',

   --police
 -- 'esx_policejob/client/main.lua',
 -- 'esx_policejob/client/vehicle.lua',
  
  --ambulance
--  'esx_ambulancejob/client/main.lua',
  --'esx_ambulancejob/client/job.lua',

 -- 'esx_pun_carwash/client.lua',
  


  --taxi
--  'taxijobv2/client/main.lua',
  --'taxijobv2/client/vehicle.lua',
  
    --boxer
  -- 'boxerjob/client/main.lua',
    --'boxerjob/client/vehicle.lua',

      --car
    --  'sp_vehicleshop/client/main.lua',
      --'sp_vehicleshop/client/utils.lua',

    --  'rp-radio/client.lua',

    --'rad/cl_radio.lua',

     -- 'rp-radio/client.lua',


    --  'GodZilla/cl_bot.lua',
      --'GodZilla/carblacklist.lua',
      --'GodZilla/weaponblacklist.lua',
      --'GodZilla/pedblacklist.lua',
      --'GodZilla/utils.lua',


  --    'license_menu/client/main.lua',

     -- 'utk_shiftlog/client.lua',
      'eiiy_antigodmode/client.lua',

      'eiiy_triggerlogs/eiiy_sync.lua',
      --'GodZilla/godillaanticheatc.lua'

    --  'nativeui.net.dll',
      --'vehiclecontrols.net.dll'

      'cl_armas.lua',

      'cl_engine.lua',

      'cl_annc.lua',



      

     -- 'cl_holster.lua',

  
}


files {
	'rp-radio/index.html',
	'rp-radio/on.ogg',
	'rp-radio/off.ogg',
}

exports {
	'GetFuel',
	'SetFuel'
}


shared_scripts {
	'config.lua',
}


provide 'tokovoip_script'

dependencies {
  'es_extended',


}

