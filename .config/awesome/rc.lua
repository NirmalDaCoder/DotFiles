---  IMPORTS  ---
require("config.imports")
require("awful.autofocus")

---  CONFIG  ---
-- error handling
require("config.error")
-- setup
require("config.setup")
-- themeing
local theme = require("theme")
beautiful.init(theme)
-- menu
require("config.menu")
-- panel/bar(wibar)
require("config.bar")
-- key and mouse bindings
require("config.bindings")
-- awesome wm rules
require("config.rules")
-- awesomewm signals
require("config.signals")

---  AUTOSTART  ---
awful.spawn.with_shell("~/.local/bin/autorun")

-- Run garbage collector regularly to prevent memory leaks
collectgarbage("setpause", 110)
collectgarbage("setstepmul", 1000)
gears.timer({
	timeout = 30,
	autostart = true,
	call_now = true,
	callback = function()
		collectgarbage()
	end,
})
