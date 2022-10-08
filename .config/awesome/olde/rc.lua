pcall(require, "luarocks.loader")

-- Standard awesome library
require("awful.autofocus")

-- Theme handling library
local beautiful = require("beautiful")

-- Themes :

-- choose your theme here
local accents = {
    "otis-forest",			-- 1
    "kripton",				-- 2
    "hornet",				-- 3
	"cherry-blossom",		-- 4
}
-- choose your theme here
local chosen_accents = accents[3]
local theme_path = string.format("%s/.config/awesome/themes/accents/%s.lua", os.getenv("HOME"), chosen_accents)
beautiful.init(theme_path)

-- Configs :

-- Notifications :
--require("configuration.notifications")

-- keybinds :
require("configuration.keys")

-- Layouts :
require("configuration.layouts")

-- Rules :
require("configuration.rules")

-- Titlebars :
require("ui.titlebar")

-- Menu :
require("ui.menu")

-- Bar :
require("ui.bar")

-- Exec some apps
--awful.spawn.with_shell("./autorun.sh")

