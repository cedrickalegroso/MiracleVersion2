--dependency 'essentialmode'
dependency 'es_extended'
--dependency 'esx_knatusblowtorch'
--dependency 'mhacking'
client_scripts {

	'@es_extended/locale.lua',
	'locales/en.lua',
	'locales/es.lua',
	'locales/tr.lua',
	'locales/fr.lua',
	'config.lua',
	'client/client.lua',
	--'blow_cl_main.lua'
}

server_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'locales/es.lua',
	'locales/tr.lua',
	'locales/fr.lua',
	'config.lua',
	'server/server.lua'
}
