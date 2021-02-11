--	esx-qalle-jail
--		2018
--		Carl "Qalle"
--		2018
--	esx-qalle-jail

resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'Send to Heaven Script Modified by BE-AX1S for Miracle City ESX'

server_scripts {
	"@mysql-async/lib/MySQL.lua",
	"config.lua",
	"server/server.lua"
}

client_scripts {
	"config.lua",
	"client/utils.lua",
	"client/client.lua"
}