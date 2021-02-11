fx_version 'bodacious'

game 'gta5'

description 'OH RAYT!'

Author 'Cedrick Alegroso'

data_file 'DLC_ITYP_REQUEST' 'stream/v_int_shop.ytyp'
data_file 'DLC_ITYP_REQUEST' 'houseRobberies/stream/v_int_shop.ytyp'

server_scripts {
  '@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
  '@es_extended/locale.lua',
  'config.lua',
  'locales/en.lua',

 -- 'esx_hotwire/server/main.lua',

--  'Pawnshop/server.lua',

 -- 'houseRobberies/server.lua',

 -- 'esx_skimmer/server.lua',

  --'Log/server/main.lua',

  'yate/server/main.lua',

 -- 'xray/server/main.lua',

  --'sv_des.lua',

  'sv_reply.lua',

  'sv_whitelist.lua',

  'fiveph_overwatch/server.lua',

 -- 'esx_inventoryhud_glovebox/server/classes/c_glovebox.lua',
 -- 'esx_inventoryhud_glovebox/server/glovebox.lua',
 -- 'esx_inventoryhud_glovebox/server/esx_glovebox-sv.lua'
  --'esx_drugeffects/server/main.lua'

}

client_scripts {
  '@es_extended/locale.lua',
  'locales/en.lua',
  'config.lua',

--  'esx_hotwire/client/main.lua',

--  'Pawnshop/client.lua',
 
 -- 'houseRobberies/client.lua',

 -- 'houseRobberies/safeCracking.lua',

--  'esx_skimmer/client.lua',

  --'Log/client/main.lua',

  'yate/client/main.lua',

 'cl_reply.lua',

  'cl_time.lua',
  
 -- 'xray/client/main.lua',

 -- 'xray/client/utils.lua',

  'cl_whitelist.lua',

 -- 'cl_des.lua',

 -- 'esx_inventoryhud_glovebox/client/esx_glovebox-cl.lua'

  --'esx_drugeffects/client/main.lua'
  
}


files {
--	'stream/v_int_shop.ytyp',
	--'houseRobberies/stream/v_int_shop.ytyp'
   }
   

