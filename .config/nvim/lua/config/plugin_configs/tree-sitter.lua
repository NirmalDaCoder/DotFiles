require("nvim-treesitter.configs").setup({
	ensure_installed = { "lua", "vim", "python", "bash" },
	sync_install = false,
	auto_install = true,
	context_commentstring = {
		enable = true,
		enable_autocmd = true,
	},
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},
})
