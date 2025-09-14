author 'Eddie'
description 'Set default vehicle handling'
version '1.0.0'
lua54 'yes'

fx_version 'cerulean'
game 'gta5'

client_scripts {
	'@ox_lib/init.lua',
	'config.lua',
	'client.lua',
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'config.lua',
	'server.lua',
}