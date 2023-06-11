require("lualine").setup({
	options = {
		icons_enables = true,
		theme = "catppuccin",
	},
	sections = {
		lualine_a = {
			{
				"filename",
				path = 1,
			},
		},
		lualine_x = {
			{
				require("noice").api.status.message.get_hl,
				cond = require("noice").api.status.message.has,
			},
			{
				require("noice").api.status.command.get,
				cond = require("noice").api.status.command.has,
			},
			{
				require("noice").api.status.mode.get,
				cond = require("noice").api.status.mode.has,
			},
			{
				require("noice").api.status.search.get,
				cond = require("noice").api.status.search.has,
			},
		},
	},
})
