local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>tf", builtin.find_files, {})
vim.keymap.set("n", "<leader>to", builtin.oldfiles, {})
vim.keymap.set("n", "<leader>tg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>tb", builtin.buffers, {})
vim.keymap.set("n", "<leader>th", builtin.help_tags, {})
vim.keymap.set("n", "<leader>tk", builtin.keymaps, {})

require("telescope").setup()

require("telescope").load_extension("projects")
require("telescope").load_extension("noice")

vim.keymap.set("n", "<leader>tp", "<cmd>Telescope projects<CR>", {})
