vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.softtabstop = 4
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.expandtab = true
vim.opt.fileencoding = "utf-8"
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.pumheight = 10
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.showmode = false
vim.opt.showtabline = 2
vim.opt.timeoutlen = 500
vim.opt.undofile = true
vim.opt.updatetime = 50
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.completeopt = menu, menuone, noselect
vim.opt.list = true
vim.opt.listchars:append("eol:↴")
vim.opt.colorcolumn = "80"
vim.opt.termguicolors = true

vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0

-- Neovide
if vim.g.neovide then
	vim.o.guifont = "JetBrainsMono Nerd Font:h14"
	vim.g.neovide_refresh_rate = 165
	vim.g.neovide_cursor_vfx_mode = "pixiedust"
end
