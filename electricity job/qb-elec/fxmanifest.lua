fx_version "cerulean"
game "gta5"
name "qb-elec"
description "electricity job"
author "Panther"
version "1.0.0"

shared_script { 
	'config/config.lua',
}

client_scripts {
	"@PolyZone/client.lua",
	'client/client.lua',
	"@PolyZone/CircleZone.lua",
	'@PolyZone/EntityZone.lua',
}

server_script {
	'server/server.lua',
}
