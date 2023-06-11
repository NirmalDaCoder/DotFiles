vim.o.termguicolors = true
vim.o.t_Co = 256

require("catppuccin").setup({
	compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
	integrations = {
		bufferline = true,
		cmp = true,
		nvimtree = true,
		telescope = true,
		notify = true,
		indent_blankline = {
			enabled = true,
			colored_indent_levels = false,
		},
		lsp_saga = true,
		mason = true,
		noice = true,
		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = { "italic" },
				hints = { "italic" },
				warnings = { "italic" },
				information = { "italic" },
			},
			underlines = {
				errors = { "underline" },
				hints = { "underline" },
				warnings = { "underline" },
				information = { "underline" },
			},
		},
		treesitter = true,
		lsp_trouble = true,
		illuminate = true,
	},
})

vim.cmd.colorscheme("catppuccin-mocha")
