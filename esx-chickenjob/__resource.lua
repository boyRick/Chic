resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'


client_scripts {
  '@es_extended/locale.lua',
  'locales/en.lua',
  'client/chicken_c.lua',
}

server_scripts {
  '@mysql-async/lib/MySQL.lua',
  '@es_extended/locale.lua',
  'locales/en.lua',
  'server/chicken_s.lua',
}

dependencies {
	'es_extended'
}