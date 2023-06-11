vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<leader>sv", ":vsplit<CR>")
vim.keymap.set("n", "<leader>sh", ":split<CR>")

vim.keymap.set("n", "<c-s-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-s-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-s-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-s-l>", ":wincmd l<CR>")

vim.api.nvim_set_keymap("n", "<leader>bn", "<cmd>BufferLineCycleNext<CR>", { noremap = false })
vim.api.nvim_set_keymap("n", "<leader>bp", "<cmd>BufferLineCyclePrev<CR>", { noremap = false })
vim.api.nvim_set_keymap("n", "<leader>bf", ":bfirst<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "<leader>bl", ":blast<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "<leader>bd", ":bdelete<enter>", { noremap = false })

vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", { silent = true, noremap = true })
