fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Script - Motrion Map - Prompt Studio'
description 'Easy script to manage the entityset for Prompts Sandy Church Map'
version '1.0.0'

dependencies {
    'ox_lib',
}

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_script 'client.lua'

server_script 'server.lua'

lua54 'yes'
