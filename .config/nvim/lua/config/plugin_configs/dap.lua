local dap = require("dap")
local dapui = require("dapui")

dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end

local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
require("dap-python").setup(path)
require("nvim-dap-virtual-text").setup({})

local map = vim.keymap.set

map("n", "<leader>dtb", "<cmd> DapToggleBreakpoint <CR>")
map("n", "<leader>dso", "<cmd> DapStepOver <CR>")
map("n", "<leader>dsi", "<cmd> DapStepInto <CR>")
map("n", "<leader>dc", "<cmd> DapContinue <CR>")
map("n", "<leader>dpr", function()
	require("dap-python").test_method()
end)
