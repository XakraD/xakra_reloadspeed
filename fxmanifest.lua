author '<Discord:Xakra#8145:https://discord.gg/kmsqB6xQjH>'

fx_version "cerulean"
game "rdr3"
rdr3_warning "I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships."

shared_scripts {
    'config.lua',
}

server_scripts {
	'server/server.lua',
}

files {
    'files/reloadspeeds.meta',
}

data_file 'WEAPONINFO_FILE_PATCH' 'files/reloadspeeds.meta'