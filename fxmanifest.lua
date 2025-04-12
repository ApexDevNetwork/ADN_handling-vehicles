--========================================================--
-- ADN - Handling Vehicles Editor
-- Adaptado y modificado: Carri - ByLcarma | https://discord.com/invite/HUZZDazJAm
-- Basado en un script original de Jameslroll con licencia MIT
--========================================================--

fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Carri - ByLcarma'
description 'Editor visual de handling en vivo para vehículos con estadísticas de rendimiento'
version '1.0.0'

ui_page 'html/index.html'

files {
    'html/index.css',
    'html/index.html',
    'html/index.js',
}

client_scripts {
    'cl_config.lua',
    'cl_debugger.lua',
}