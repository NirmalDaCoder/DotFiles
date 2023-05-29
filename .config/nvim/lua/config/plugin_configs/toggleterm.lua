require("toggleterm").setup({
	open_mapping = [[<c-\>]],
	size = 20,
	autochdir = true,
	hide_numbers = true,
	direction = "float",
	auto_scroll = true,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	shell = "/bin/bash",
	float_opts = {
		border = "curved",
	},
})
