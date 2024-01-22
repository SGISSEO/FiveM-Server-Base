Config = {}
Config.Locale = GetConvar("epyi_administration:locale", "en")

Config.MenuStyle = {
	Margins = { left = 10, top = 10 }, -- [table] → Set the menu margins
	BannerStyle = {
		Color = { r = 150, g = 50, b = 50, a = 100 }, -- [table] → Set the banner color if no custom banner image is set
		UseGlareEffect = true, -- [boolean] → Use the glare effect or not
		UseInstructionalButtons = true, -- [boolean] → Use the instructionals buttons or not
		ImageUrl = nil, -- [nil/string] → Set a custom image url if you want (if set, it will disable the Color configuration)
		ImageSize = { Width = 512, Height = 128 }, -- [table] → Set the image (ImageUrl) size un pixels
		widthOffset = 0, -- [integer] → Offset of the menu (default: 0, max: 100)
	},
}

Config.Keys = { -- [table] → The the menu keys
	Menu = "F10",
	NoClip = {
		use = "F3",
		forward = "Z",
		backward = "S",
		left = "Q",
		right = "D",
		up = "A",
		down = "W",
		speed = "LEFTSHIFT",
	},
}

Config.others = {
	fullPerfProperties = { -- [table] → Full perf properties table
		modEngine = 3,
		modBrakes = 2,
		modTransmission = 2,
		modSuspension = 3,
		modArmor = true,
	},
}

Config.Groups = {
	admin = {
		Priority = 99,
		Label = "Admin",
		Color = "~r~",
		Access = {
			-- Main menu
			["mainmenu_open"] = true, -- can open the admin menu

			-- Submenu → Personnal
			["submenu_personnal_access"] = true, -- can access personnal options
			["submenu_personnal_health_management"] = true, -- can use the health management list
			["submenu_personnal_appearance"] = true, -- can change ped
			["submenu_personnal_noclip"] = true, -- can use noclip
			["submenu_personnal_godmode"] = true, -- can use god mode
			["submenu_personnal_invisibility"] = true, -- can use invisibility
			["submenu_personnal_fastwalk"] = true, -- can use fastwalk
			["submenu_personnal_fastswim"] = true, -- can use fastswim
			["submenu_personnal_superjump"] = true, -- can use superjump
			["submenu_personnal_stayinvehicle"] = true, -- can use stay in vehicle
			["submenu_personnal_seethrough"] = true, -- can use thermal vision
			["submenu_personnal_shownames"] = true, -- can use show names

			-- Submenu → Players
			["submenu_players_access"] = true, -- can access list of players
			["submenu_players_interact"] = true, -- can interact with a player from list of players
			["submenu_players_interact_highergroup"] = true, -- can interact with a player who have a higher rank
			["submenu_players_interact_managemoney"] = true, -- can manage money of a player
			["submenu_players_interact_goto"] = true, -- can teleport to a player
			["submenu_players_interact_bring"] = true, -- can bring a player
			["submenu_players_interact_dm"] = true, -- can send private message to a player
			["submenu_players_interact_kick"] = true, -- can kick a player
			["submenu_players_interact_ban"] = true, -- can ban a player

			-- Submenu → Vehicles
			["submenu_vehicles_access"] = true, -- can access vehicles management menu
			["submenu_vehicles_current_access"] = true, -- can access current vehicle management menu
			["submenu_vehicles_favorites_access"] = true, -- can access favorites vehicles management menu
			["submenu_vehicles_spawn_access"] = true, -- can access vehicle spawning menu
			["submenu_vehicles_current_repair"] = true, -- can repair his vehicle
			["submenu_vehicles_current_clean"] = true, -- can clean his vehicle
			["submenu_vehicles_current_flip"] = true, -- can flip his vehicle
			["submenu_vehicles_current_engine"] = true, -- can turn on/off the engine of his vehicle
			["submenu_vehicles_current_freeze"] = true, -- can freeze his vehicle
			["submenu_vehicles_current_opendoor"] = true, -- can open doors of his vehicle
			["submenu_vehicles_current_boost"] = true, -- can use the torque multiplier on his vehicle
			["submenu_vehicles_current_custom_fullperf"] = true, -- can use fullperf on his vehicle
			["submenu_vehicles_current_custom_plate"] = true, -- can change plate of his vehicle
			["submenu_vehicles_current_custom_color_main"] = true, -- can change the primary color of his vehicle
			["submenu_vehicles_current_custom_color_secondary"] = true, -- can change the secondary color of his vehicle
			["submenu_vehicles_current_custom_livery"] = true, -- change his vehicle's livery
			["submenu_vehicles_current_custom_mods"] = true, -- can change his vehicle's mods and mods variant
			["submenu_vehicles_current_fuel"] = true, -- can refuel his vehicle

			-- Submenu → Reports
			["submenu_reports_access"] = true, -- can access report and manage them

			-- Submenu → Server
			["submenu_server_access"] = true, -- can access advanced server options
			["submenu_server_weather"] = true, -- can change the weather of the server
			["submenu_server_time"] = true, -- can change the time of the server
			["submenu_server_blackout"] = true, -- can set the server as blackout
			["submenu_server_clearall"] = true, -- can remove vehicles and peds in an area
			["submenu_server_clearvehicles"] = true, -- can remove vehicles in an area
			["submenu_server_clearpeds"] = true, -- can remove peds in an area
		},
	},
	superAdmin = {
		Priority = 99,
		Label = "superAdmin",
		Color = "~b~",
		Access = {
			-- Main menu
			["mainmenu_open"] = true, -- can open the admin menu

			-- Submenu → Personnal
			["submenu_personnal_access"] = true, -- can access personnal options
			["submenu_personnal_health_management"] = true, -- can use the health management list
			["submenu_personnal_appearance"] = true, -- can change ped
			["submenu_personnal_noclip"] = true, -- can use noclip
			["submenu_personnal_godmode"] = true, -- can use god mode
			["submenu_personnal_invisibility"] = true, -- can use invisibility
			["submenu_personnal_fastwalk"] = true, -- can use fastwalk
			["submenu_personnal_fastswim"] = true, -- can use fastswim
			["submenu_personnal_superjump"] = true, -- can use superjump
			["submenu_personnal_stayinvehicle"] = true, -- can use stay in vehicle
			["submenu_personnal_seethrough"] = true, -- can use thermal vision
			["submenu_personnal_shownames"] = true, -- can use show names

			-- Submenu → Players
			["submenu_players_access"] = true, -- can access list of players
			["submenu_players_interact"] = true, -- can interact with a player from list of players
			["submenu_players_interact_highergroup"] = true, -- can interact with a player who have a higher rank
			["submenu_players_interact_managemoney"] = true, -- can manage money of a player
			["submenu_players_interact_goto"] = true, -- can teleport to a player
			["submenu_players_interact_bring"] = true, -- can bring a player
			["submenu_players_interact_dm"] = true, -- can send private message to a player
			["submenu_players_interact_kick"] = true, -- can kick a player
			["submenu_players_interact_ban"] = true, -- can ban a player

			-- Submenu → Vehicles
			["submenu_vehicles_access"] = true, -- can access vehicles management menu
			["submenu_vehicles_current_access"] = true, -- can access current vehicle management menu
			["submenu_vehicles_favorites_access"] = true, -- can access favorites vehicles management menu
			["submenu_vehicles_spawn_access"] = true, -- can access vehicle spawning menu
			["submenu_vehicles_current_repair"] = true, -- can repair his vehicle
			["submenu_vehicles_current_clean"] = true, -- can clean his vehicle
			["submenu_vehicles_current_flip"] = true, -- can flip his vehicle
			["submenu_vehicles_current_engine"] = true, -- can turn on/off the engine of his vehicle
			["submenu_vehicles_current_freeze"] = true, -- can freeze his vehicle
			["submenu_vehicles_current_opendoor"] = true, -- can open doors of his vehicle
			["submenu_vehicles_current_boost"] = true, -- can use the torque multiplier on his vehicle
			["submenu_vehicles_current_custom_fullperf"] = true, -- can use fullperf on his vehicle
			["submenu_vehicles_current_custom_plate"] = true, -- can change plate of his vehicle
			["submenu_vehicles_current_custom_color_main"] = true, -- can change the primary color of his vehicle
			["submenu_vehicles_current_custom_color_secondary"] = true, -- can change the secondary color of his vehicle
			["submenu_vehicles_current_custom_livery"] = true, -- change his vehicle's livery
			["submenu_vehicles_current_custom_mods"] = true, -- can change his vehicle's mods and mods variant
			["submenu_vehicles_current_fuel"] = true, -- can refuel his vehicle

			-- Submenu → Reports
			["submenu_reports_access"] = true, -- can access report and manage them

			-- Submenu → Server
			["submenu_server_access"] = true, -- can access advanced server options
			["submenu_server_weather"] = true, -- can change the weather of the server
			["submenu_server_time"] = true, -- can change the time of the server
			["submenu_server_blackout"] = true, -- can set the server as blackout
			["submenu_server_clearall"] = true, -- can remove vehicles and peds in an area
			["submenu_server_clearvehicles"] = true, -- can remove vehicles in an area
			["submenu_server_clearpeds"] = true, -- can remove peds in an area
		},
	},
	modo = {
		Priority = 50,
		Label = "Modérateur",
		Color = "~y~",
		Access = {
			-- Main menu
			["mainmenu_open"] = true, -- can open the admin menu

			-- Submenu → Personnal
			["submenu_personnal_access"] = true, -- can access personnal options
			["submenu_personnal_health_management"] = true, -- can use the health management list
			["submenu_personnal_appearance"] = true, -- can change ped
			["submenu_personnal_noclip"] = true, -- can use noclip
			["submenu_personnal_godmode"] = true, -- can use god mode
			["submenu_personnal_invisibility"] = true, -- can use invisibility
			["submenu_personnal_fastwalk"] = true, -- can use fastwalk
			["submenu_personnal_fastswim"] = true, -- can use fastswim
			["submenu_personnal_superjump"] = true, -- can use superjump
			["submenu_personnal_stayinvehicle"] = true, -- can use stay in vehicle
			["submenu_personnal_seethrough"] = true, -- can use thermal vision
			["submenu_personnal_shownames"] = true, -- can use show names

			-- Submenu → Players
			["submenu_players_access"] = true, -- can access list of players
			["submenu_players_interact"] = true, -- can interact with a player from list of players
			["submenu_players_interact_highergroup"] = true, -- can interact with a player who have a higher rank
			["submenu_players_interact_managemoney"] = true, -- can manage money of a player
			["submenu_players_interact_goto"] = true, -- can teleport to a player
			["submenu_players_interact_bring"] = true, -- can bring a player
			["submenu_players_interact_dm"] = true, -- can send private message to a player
			["submenu_players_interact_kick"] = true, -- can kick a player
			["submenu_players_interact_ban"] = true, -- can ban a player

			-- Submenu → Vehicles
			["submenu_vehicles_access"] = true, -- can access vehicles management menu
			["submenu_vehicles_current_access"] = true, -- can access current vehicle management menu
			["submenu_vehicles_favorites_access"] = true, -- can access favorites vehicles management menu
			["submenu_vehicles_spawn_access"] = true, -- can access vehicle spawning menu
			["submenu_vehicles_current_repair"] = true, -- can repair his vehicle
			["submenu_vehicles_current_clean"] = true, -- can clean his vehicle
			["submenu_vehicles_current_flip"] = true, -- can flip his vehicle
			["submenu_vehicles_current_engine"] = true, -- can turn on/off the engine of his vehicle
			["submenu_vehicles_current_freeze"] = true, -- can freeze his vehicle
			["submenu_vehicles_current_opendoor"] = true, -- can open doors of his vehicle
			["submenu_vehicles_current_boost"] = true, -- can use the torque multiplier on his vehicle
			["submenu_vehicles_current_custom_fullperf"] = true, -- can use fullperf on his vehicle
			["submenu_vehicles_current_custom_plate"] = true, -- can change plate of his vehicle
			["submenu_vehicles_current_custom_color_main"] = true, -- can change the primary color of his vehicle
			["submenu_vehicles_current_custom_color_secondary"] = true, -- can change the secondary color of his vehicle
			["submenu_vehicles_current_custom_livery"] = true, -- change his vehicle's livery
			["submenu_vehicles_current_custom_mods"] = true, -- can change his vehicle's mods and mods variant
			["submenu_vehicles_current_fuel"] = true, -- can refuel his vehicle

			-- Submenu → Reports
			["submenu_reports_access"] = true, -- can access report and manage them

			-- Submenu → Server
			["submenu_server_access"] = false, -- can access advanced server options
			["submenu_server_weather"] = false, -- can change the weather of the server
			["submenu_server_time"] = false, -- can change the time of the server
			["submenu_server_blackout"] = false, -- can set the server as blackout
			["submenu_server_clearall"] = true, -- can remove vehicles and peds in an area
			["submenu_server_clearvehicles"] = true, -- can remove vehicles in an area
			["submenu_server_clearpeds"] = true, -- can remove peds in an area
		},
	},
	anim = {
		Priority = 10,
		Label = "Animateur",
		Color = "~g~",
		Access = {
			-- Main menu
			["mainmenu_open"] = true, -- can open the admin menu

			-- Submenu → Personnal
			["submenu_personnal_access"] = false, -- can access personnal options
			["submenu_personnal_health_management"] = true, -- can use the health management list
			["submenu_personnal_appearance"] = true, -- can change ped
			["submenu_personnal_noclip"] = true, -- can use noclip
			["submenu_personnal_godmode"] = true, -- can use god mode
			["submenu_personnal_invisibility"] = true, -- can use invisibility
			["submenu_personnal_fastwalk"] = true, -- can use fastwalk
			["submenu_personnal_fastswim"] = true, -- can use fastswim
			["submenu_personnal_superjump"] = true, -- can use superjump
			["submenu_personnal_stayinvehicle"] = true, -- can use stay in vehicle
			["submenu_personnal_seethrough"] = true, -- can use thermal vision
			["submenu_personnal_shownames"] = true, -- can use show names

			-- Submenu → Players
			["submenu_players_access"] = true, -- can access list of players
			["submenu_players_interact"] = true, -- can interact with a player from list of players
			["submenu_players_interact_highergroup"] = false, -- can interact with a player who have a higher rank
			["submenu_players_interact_managemoney"] = false, -- can manage money of a player
			["submenu_players_interact_goto"] = true, -- can teleport to a player
			["submenu_players_interact_bring"] = true, -- can bring a player
			["submenu_players_interact_dm"] = true, -- can send private message to a player
			["submenu_players_interact_kick"] = false, -- can kick a player
			["submenu_players_interact_ban"] = false, -- can ban a player

			-- Submenu → Vehicles
			["submenu_vehicles_access"] = true, -- can access vehicles management menu
			["submenu_vehicles_current_access"] = true, -- can access current vehicle management menu
			["submenu_vehicles_favorites_access"] = true, -- can access favorites vehicles management menu
			["submenu_vehicles_spawn_access"] = true, -- can access vehicle spawning menu
			["submenu_vehicles_current_repair"] = true, -- can repair his vehicle
			["submenu_vehicles_current_clean"] = true, -- can clean his vehicle
			["submenu_vehicles_current_flip"] = true, -- can flip his vehicle
			["submenu_vehicles_current_engine"] = true, -- can turn on/off the engine of his vehicle
			["submenu_vehicles_current_freeze"] = true, -- can freeze his vehicle
			["submenu_vehicles_current_opendoor"] = true, -- can open doors of his vehicle
			["submenu_vehicles_current_boost"] = true, -- can use the torque multiplier on his vehicle
			["submenu_vehicles_current_custom_fullperf"] = true, -- can use fullperf on his vehicle
			["submenu_vehicles_current_custom_plate"] = true, -- can change plate of his vehicle
			["submenu_vehicles_current_custom_color_main"] = true, -- can change the primary color of his vehicle
			["submenu_vehicles_current_custom_color_secondary"] = true, -- can change the secondary color of his vehicle
			["submenu_vehicles_current_custom_livery"] = true, -- change his vehicle's livery
			["submenu_vehicles_current_custom_mods"] = true, -- can change his vehicle's mods and mods variant
			["submenu_vehicles_current_fuel"] = true, -- can refuel his vehicle

			-- Submenu → Reports
			["submenu_reports_access"] = false, -- can access report and manage them

			-- Submenu → Server
			["submenu_server_access"] = false, -- can access advanced server options
			["submenu_server_weather"] = false, -- can change the weather of the server
			["submenu_server_time"] = false, -- can change the time of the server
			["submenu_server_blackout"] = false, -- can set the server as blackout
			["submenu_server_clearall"] = true, -- can remove vehicles and peds in an area
			["submenu_server_clearvehicles"] = true, -- can remove vehicles in an area
			["submenu_server_clearpeds"] = true, -- can remove peds in an area
		},
	},
	user = {
		Priority = 0,
		Label = "User",
		Color = "~s~",
		Access = {
			-- Main menu
			["mainmenu_open"] = false, -- can open the admin menu

			-- Submenu → Personnal
			["submenu_personnal_access"] = false, -- can access personnal options
			["submenu_personnal_health_management"] = false, -- can use the health management list
			["submenu_personnal_appearance"] = false, -- can change ped
			["submenu_personnal_noclip"] = false, -- can use noclip
			["submenu_personnal_godmode"] = false, -- can use god mode
			["submenu_personnal_invisibility"] = false, -- can use invisibility
			["submenu_personnal_fastwalk"] = false, -- can use fastwalk
			["submenu_personnal_fastswim"] = false, -- can use fastswim
			["submenu_personnal_superjump"] = false, -- can use superjump
			["submenu_personnal_stayinvehicle"] = false, -- can use stay in vehicle
			["submenu_personnal_seethrough"] = false, -- can use thermal vision
			["submenu_personnal_shownames"] = false, -- can use show names

			-- Submenu → Players
			["submenu_players_access"] = false, -- can access list of players
			["submenu_players_interact"] = false, -- can interact with a player from list of players
			["submenu_players_interact_highergroup"] = false, -- can interact with a player who have a higher rank
			["submenu_players_interact_managemoney"] = false, -- can manage money of a player
			["submenu_players_interact_goto"] = false, -- can teleport to a player
			["submenu_players_interact_bring"] = false, -- can bring a player
			["submenu_players_interact_dm"] = false, -- can send private message to a player
			["submenu_players_interact_kick"] = false, -- can kick a player
			["submenu_players_interact_ban"] = false, -- can ban a player

			-- Submenu → Vehicles
			["submenu_vehicles_access"] = false, -- can access vehicles management menu
			["submenu_vehicles_current_access"] = false, -- can access current vehicle management menu
			["submenu_vehicles_favorites_access"] = false, -- can access favorites vehicles management menu
			["submenu_vehicles_spawn_access"] = false, -- can access vehicle spawning menu
			["submenu_vehicles_current_repair"] = false, -- can repair his vehicle
			["submenu_vehicles_current_clean"] = false, -- can clean his vehicle
			["submenu_vehicles_current_flip"] = false, -- can flip his vehicle
			["submenu_vehicles_current_engine"] = false, -- can turn on/off the engine of his vehicle
			["submenu_vehicles_current_freeze"] = false, -- can freeze his vehicle
			["submenu_vehicles_current_opendoor"] = false, -- can open doors of his vehicle
			["submenu_vehicles_current_boost"] = false, -- can use the torque multiplier on his vehicle
			["submenu_vehicles_current_custom_fullperf"] = false, -- can use fullperf on his vehicle
			["submenu_vehicles_current_custom_plate"] = false, -- can change plate of his vehicle
			["submenu_vehicles_current_custom_color_main"] = false, -- can change the primary color of his vehicle
			["submenu_vehicles_current_custom_color_secondary"] = false, -- can change the secondary color of his vehicle
			["submenu_vehicles_current_custom_livery"] = false, -- change his vehicle's livery
			["submenu_vehicles_current_custom_mods"] = false, -- can change his vehicle's mods and mods variant
			["submenu_vehicles_current_fuel"] = false, -- can refuel his vehicle

			-- Submenu → Reports
			["submenu_reports_access"] = false, -- can access report and manage them

			-- Submenu → Server
			["submenu_server_access"] = false, -- can access advanced server options
			["submenu_server_weather"] = false, -- can change the weather of the server
			["submenu_server_time"] = false, -- can change the time of the server
			["submenu_server_blackout"] = false, -- can set the server as blackout
			["submenu_server_clearall"] = false, -- can remove vehicles and peds in an area
			["submenu_server_clearvehicles"] = false, -- can remove vehicles in an area
			["submenu_server_clearpeds"] = false, -- can remove peds in an area
		},
	},
}
