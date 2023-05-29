require("config.imports")
local freedesktop = require("libs.freedesktop")

--- Menus
myawesomemenu = {
	{
		"Hotkeys",
		function()
			hotkeys_popup.show_help(nil, awful.screen.focused())
		end,
	},
	{ "Manual", terminal .. " -e man awesome" },
	{ "Edit Config", editor_cmd .. " " .. awesome.conffile },
	{ "Restart", awesome.restart },
	{
		"Quit",
		function()
			awesome.quit()
		end,
	},
}

mypowermenu = {
	{ "Shutdown", "shutdown now" },
	{ "Restart", "reboot" },
	{ "Suspend", "systemctl suspend" },
	{
		"Logout",
		function()
			awesome.quit()
		end,
	},
}

mymainmenu = freedesktop.menu.build({
	before = {
		{ "Awesome", myawesomemenu, beautiful.awesome_icon },
	},
	after = {
		{ "Terminal", terminal },
		{ "Browser", browser },
		{ "Power Menu", mypowermenu },
	},
})

menubar.utils.terminal = terminal
