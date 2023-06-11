require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
	ensure_installed = { "lua-language-server", "pyright", "jedi-language-server", "debugpy" },
})
require("mason-lspconfig").setup()
require("mason-update-all").setup()
