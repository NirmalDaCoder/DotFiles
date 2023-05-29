require("config.imports")

---  Rules
awful.rules.rules = {
	{
		rule = {},
		properties = {
			border_width = beautiful.border_width,
			border_color = beautiful.border_normal,
			focus = awful.client.focus.filter,
			raise = true,
			keys = clientkeys,
			buttons = clientbuttons,
			screen = awful.screen.preferred,
			placement = awful.placement.no_overlap + awful.placement.no_offscreen,
			size_hints_honor = false,
		},
	},

	{
		rule_any = {
			instance = {
				"DTA", -- Firefox addon DownThemAll.
				"copyq", -- Includes session name in class.
				"pinentry",
			},
			class = {
				"Arandr",
				"Blueman-manager",
				"Gpick",
				"Kruler",
				"MessageWin", -- kalarm.
				"Sxiv",
				"Tor Browser", -- Needs a fixed window size to avoid fingerprinting by screen size.
				"Wpa_gui",
				"veromix",
				"xtightvncviewer",
				"main.py",
			},
			name = {
				"Event Tester", -- xev.
				"Super Bunny",
			},
			role = {
				"AlarmWindow", -- Thunderbird's calendar.
				"ConfigManager", -- Thunderbird's about:config.
				"pop-up", -- e.g. Google Chrome's (detached) Developer Tools.
			},
		},
		properties = { floating = true, placement = awful.placement.centered },
	},
	{
		rule_any = { type = { "dialog" } },
		properties = { titlebars_enabled = true, placement = awful.placement.centered },
	},
	{
		rule = { class = "firefox" },
		properties = { screen = 1, tag = "2" },
	},
	{
		rule = { class = "WebApp-EduCompetishun4327" },
		properties = { floating = false },
	},
	{
		rule_any = {
			class = {
				"Polkit-gnome-authentication-agent-1",
				"Arcolinux-calamares-tool.py",
			},
		},
		properties = { floating = true },
		callback = function(c)
			awful.placement.centered(c, nil)
		end,
	},
}
