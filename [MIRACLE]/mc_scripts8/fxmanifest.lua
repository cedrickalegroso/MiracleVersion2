fx_version 'bodacious'

game 'gta5'

description 'OH RAYT!'

Author 'Cedrick Alegroso'

version '1.0.0'


ui_page 'jsfour-idcard/html/index.html'




server_scripts {
  '@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
  '@es_extended/locale.lua',
  'config.lua',
  'locales/en.lua',

  'jsfour-idcard/server/main.lua',

  'jsfour-licenseplate/server.lua',

  'esx_outlawalert/server/main.lua',


 -- 'JAM_Pillbox/config.lua',
  --'JAM_Pillbox/utils.lua',
	--'JAM_Pillbox/server.lua',

	--'sp_weazelnews/server/main.lua',

	'esx_barbershop/server/main.lua',

	'gamz-food/server/main.lua',

	--'esx_bike/translations/en.lua',
	--'esx_bike/translations/cz.lua',
	--'esx_bike/server.lua'

  'be-mining/sv_pawnshop.lua',
  'be-mining/server.lua',



}

client_scripts {
  '@es_extended/locale.lua',
  'locales/en.lua',
  'config.lua',

  'jsfour-idcard/client/main.lua',

  'jsfour-licenseplate/client.lua',

  'esx_outlawalert/client/main.lua',

  
  'be-mining/cl_pawnshop.lua',
  'be-mining/client.lua',


--'JAM_Pillbox/config.lua',
--'JAM_Pillbox/utils.lua',
 -- '--JAM_Pillbox/client.lua',

  --'sp_weazelnews/client/main.lua',
   --'sp_weazelnews/client/annonce.lua', 
  --'sp_weazelnews/client/client.lua',

  'esx_barbershop/client/main.lua',

  'gamz-food/client/main.lua',
  'gamz-food/client/utils.lua',


  --'esx_bike/translations/en.lua',
  --'esx_bike/translations/cz.lua',
  --'warmenu.lua',
  --'esx_bike/client.lua'
 
  
}




files {
	'jsfour-idcard/html/index.html',
	'jsfour-idcard/html/css/*.css',
	'jsfour-idcard/html/js/*.js',
	'jsfour-idcard/html/fonts/*',
	'jsfour-idcard/html/img/*.png'
}


