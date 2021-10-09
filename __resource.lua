resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ra1der&c0dex'

version '1.0.0'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'config.lua',
	'server.lua'
}

client_scripts {
	'config.lua',
	'client.lua'
}
