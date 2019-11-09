-- Jeśli potrzebujesz pomocy dołącz na https://discord.gg/GgaMnNC

Config = {}

Config.chance = 50--Ile % na wytworzenie broni
Config.damage = 10--Ile dmg ma otrzymać gracz po nieudanym wytworzeniu broni

Config.Zones = {
	make_weapons = {
		Pos = {x = 287.24, y = -1065.82, z = 28.52},
        Size  = {x = 2.0, y = 2.0, z = 2.0},
        Color = {r = 136, g = 243, b = 216},
        Name  = "Tworzenie broni",
		Text = "Nacisnij ~INPUT_CONTEXT~ aby wytworzyć broń",
        Type  = 27,
		menu_label = "make_weapons"
	},
	barrel = {
		Pos = {x = 277.24, y = -1065.82, z = 28.52},
        Size  = {x = 2.0, y = 2.0, z = 2.0},
        Color = {r = 136, g = 243, b = 216},
        Name  = "Tworzenie lufy",
		Text = "Nacisnij ~INPUT_CONTEXT~ aby wytworzyć lufe",
        Type  = 27,
		menu_label = "barrel_craft"
	},
	spring = {
		Pos = {x = 277.24, y = -1060.82, z = 28.52},
        Size  = {x = 2.0, y = 2.0, z = 2.0},
        Color = {r = 136, g = 243, b = 216},
        Name  = "Tworzenie sprężyny",
		Text = "Nacisnij ~INPUT_CONTEXT~ aby wytworzyć sprężyne",
        Type  = 27,
		menu_label = "spring_craft"
	},
	lock = {
		Pos = {x = 277.24, y = -1055.82, z = 28.52},
        Size  = {x = 2.0, y = 2.0, z = 2.0},
        Color = {r = 136, g = 243, b = 216},
        Name  = "Tworzenie zamka",
		Text = "Nacisnij ~INPUT_CONTEXT~ aby wytworzyć zamek",
        Type  = 27,
		menu_label = "lock_craft"
	}
	
}
