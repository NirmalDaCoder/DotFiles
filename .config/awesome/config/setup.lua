require("config.imports")
require("libs.collision")()
local quake = require("libs.lain.util.quake")

---  Variable definitions
terminal = "alacritty"
editor = "nvim"
editor_cmd = terminal .. " -e " .. editor
modkey = "Mod4"
altkey = "Mod1"
browser = "firefox"
quaketerm = quake({
	app = "xterm",
	name = "QuakeTerm",
	extra = "-e /bin/zsh",
	height = 560,
	width = 840,
	vert = "center",
	horiz = "center",
})
awful.layout.layouts = { awful.layout.suit.tile }

naughty.config.defaults.timeout = 3
package.loaded["naughty.dbus"] = {}
