-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- plugins
local plugins = {
	"lewis6991/impatient.nvim",
	-- UI
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		lazy = false,
		config = function()
			vim.o.termguicolors = true
		end,
	},
	{ "nvim-tree/nvim-tree.lua", dependencies = { { "nvim-tree/nvim-web-devicons" } } },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
		},
	},
	-- LSP
	{ "williamboman/mason.nvim", build = ":MasonUpdate" },
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	{ "L3MON4D3/LuaSnip", version = "1.*" },
	{
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"jose-elias-alvarez/null-ls.nvim",
		},
	},
	"RubixDev/mason-update-all",
	{
		"glepnir/lspsaga.nvim",
		event = "LspAttach",
		config = function()
			require("lspsaga").setup({})
		end,
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" },
			{ "nvim-treesitter/nvim-treesitter" },
		},
	},
	-- Completion
	{ "hrsh7th/nvim-cmp", event = "InsertEnter" },
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"saadparwaiz1/cmp_luasnip",
	"onsails/lspkind-nvim",
	-- Formatter and utils
	"jose-elias-alvarez/null-ls.nvim",
	"lukas-reineke/indent-blankline.nvim",
	-- Status Lines
	"nvim-lualine/lualine.nvim",
	{ "akinsho/bufferline.nvim", version = "v3.*", dependencies = "nvim-tree/nvim-web-devicons" },
	-- Term
	{ "akinsho/toggleterm.nvim", version = "*" },
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},
	-- Commenting
	"numToStr/Comment.nvim",
	"JoosepAlviste/nvim-ts-context-commentstring",
	-- Other
	{ "jdhao/better-escape.vim", event = "InsertEnter" },
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	{
		"ahmedkhalf/project.nvim",
		config = function()
			require("project_nvim").setup({
				patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "venv", "main.py" },
			})
		end,
	},
}

local opts = {
	install = {
		missing = true,
		colorscheme = { "gruvbox" },
	},
}

require("lazy").setup(plugins, opts)
