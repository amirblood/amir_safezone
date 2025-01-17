fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Amir'
description 'FiveM Basic SafeZone Script for RP/DM/Military servers with ox_lib'
version '1.0.0'

shared_scripts {
    '@ox_lib/init.lua',
    'shared.lua'
}

client_script 'client.lua'

dependencies {
    'ox_lib'
}