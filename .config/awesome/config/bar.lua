require("config.imports")

---  Wibar
-- widgets
os.setlocale(os.getenv("LANG"))
local mytextclock = wibox.widget.textclock("%H:%M")
local mydate = wibox.widget.textclock("%a %b %d")

mypowerbutton = awful.widget.launcher({
	image = "/home/nirmal/.config/awesome/theme/icons/powericon.png",
	command = "bash /home/nirmal/.config/rofi/powermenu/powermenu.sh",
	resize = true,
	downscale = true,
})

local taglist_buttons = gears.table.join(
	awful.button({}, 1, function(t)
		t:view_only()
	end),
	awful.button({ modkey }, 1, function(t)
		if client.focus then
			client.focus:move_to_tag(t)
		end
	end),
	awful.button({}, 3, awful.tag.viewtoggle),
	awful.button({ modkey }, 3, function(t)
		if client.focus then
			client.focus:toggle_tag(t)
		end
	end),
	awful.button({}, 4, function(t)
		awful.tag.viewnext(t.screen)
	end),
	awful.button({}, 5, function(t)
		awful.tag.viewprev(t.screen)
	end)
)

local tasklist_buttons = gears.table.join(
	awful.button({}, 1, function(c)
		if c == client.focus then
			c.minimized = true
		else
			c:emit_signal("request::activate", "tasklist", { raise = true })
		end
	end),
	awful.button({}, 3, function()
		awful.menu.client_list({ theme = { width = 250 } })
	end),
	awful.button({}, 4, function()
		awful.client.focus.byidx(1)
	end),
	awful.button({}, 5, function()
		awful.client.focus.byidx(-1)
	end)
)

local function set_wallpaper(s)
	if beautiful.wallpaper then
		local wallpaper = beautiful.wallpaper
		if type(wallpaper) == "function" then
			wallpaper = wallpaper(s)
		end
		gears.wallpaper.maximized(wallpaper, s, true)
	end
end

screen.connect_signal("property::geometry", set_wallpaper)

awful.screen.connect_for_each_screen(function(s)
	set_wallpaper(s)

	awful.tag({ "1", "2", "3", "4", "5" }, s, awful.layout.layouts[1])

	s.mypromptbox = awful.widget.prompt()

	s.mytaglist = awful.widget.taglist({
		screen = s,
		filter = awful.widget.taglist.filter.all,
		buttons = taglist_buttons,
	})

	s.mytasklist = awful.widget.tasklist({
		screen = s,
		filter = awful.widget.tasklist.filter.currenttags,
		buttons = tasklist_buttons,
	})

	s.mywibox = awful.wibar({ position = "top", screen = s, border_width = 5 })

	s.mywibox:setup({
		layout = wibox.layout.align.horizontal,
		{
			layout = wibox.layout.fixed.horizontal,
			s.mytaglist,
			s.mypromptbox,
		},
		wibox.container.margin(s.mytasklist, 2, 2, 2, 2), -- Middle widget
		{
			layout = wibox.layout.fixed.horizontal,
			spacing = 10,
			wibox.container.margin(wibox.widget.systray(), 2, 2, 2, 2),
			mydate,
			mytextclock,
			wibox.container.margin(mypowerbutton, 3, 3, 3, 3),
		},
	})
end)
