fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'surs1de'
description 'This is my fourth script description'
version '1.0.0'

resource_type 'gametype' {name ='Tutorial type!'}

-- 
-- Server
--
server_scripts {
    'server/server.lua'
}

--
-- Client
--
client_scripts {
    'client/client.lua'
}