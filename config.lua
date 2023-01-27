Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 0.5 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.Type         = 20

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true
Config.EnableNonFreemodePeds      = false
Config.EnableLicenses             = true

Config.EnableHandcuffTimer        = true 
Config.HandcuffTimer              = 10 * 60000 

Config.EnableJobBlip              = false 

Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.WhitelistedCops = {
	'avocat'
}

Config.pos = {

	garage = {
		position = {x = -1900.71, y = -560.38, z = 10.90} 
	},

	spawnvoiture = {
		position = {x = -1900.71, y = -560.38, z = 10.90} 
	},
        pos  = {
            {pos = vector3(-1900.71, -560.38, 10.90), heading = 318.42},  
            {pos = vector3(-1900.71, -560.38, 10.90), heading = 318.42}, 
        },
    }

Config.Pads = {


		{
			Text = 'Appuyer sur ~INPUT_CONTEXT~ pour rentrer dans le cabinet.', 
			Marker = vector3(-1898.49, -572.43, 10.85),
			MarkerSettings = {r = 255, g = 55, b = 55, a = 250, type = 23, x = 1.5, y = 1.5, z = 0.5},
			TeleportPoint = { coords = vector3(-1902.31, -572.57, 18.10), h = 131.39}
		},
	
		{
			Text = 'Appuyer sur ~INPUT_CONTEXT~ pour sortir du cabinet.',
			Marker = vector3(-1902.31, -572.57, 18.10),
			MarkerSettings = {r = 255, g = 55, b = 55, a = 250, type = 23, x = 1.5, y = 1.5, z = 0.5},
			TeleportPoint = { coords = vector3(-1898.49, -572.43, 11.85), h = 236.18}
		}
}