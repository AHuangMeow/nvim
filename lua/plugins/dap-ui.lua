vim.pack.add({
	"https://github.com/mfussenegger/nvim-dap",
	"https://github.com/jay-babu/mason-nvim-dap.nvim",
	"https://github.com/rcarriga/nvim-dap-ui",
})

require("mason-nvim-dap").setup({
	handlers = {},
})

local dap, dapui = require("dap"), require("dapui")
dapui.setup({})

dap.listeners.before.attach.dapui_config = function()
	dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
	dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
	dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
	dapui.close()
end

local function launch(n)
	return function()
		if dap.session() then
			dap.continue()
			return
		end
		local config = (dap.configurations[vim.bo.filetype] or {})[n]
		if config then
			dap.run(config)
		else
			dap.continue()
		end
	end
end

vim.keymap.set("n", "<leader>d", "", { desc = "Debug" })
vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
vim.keymap.set("n", "<leader>dc", function()
	dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
end, { desc = "Conditional breakpoint" })
vim.keymap.set("n", "<leader>dd", launch(1), { desc = "Launch / Continue" })
vim.keymap.set("n", "<leader>da", launch(2), { desc = "Launch (args)" })
vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "Step into" })
vim.keymap.set("n", "<leader>do", dap.step_out, { desc = "Step out" })
vim.keymap.set("n", "<leader>dv", dap.step_over, { desc = "Step over" })
vim.keymap.set("n", "<leader>dl", dap.run_last, { desc = "Run last" })
vim.keymap.set("n", "<leader>dr", dap.repl.toggle, { desc = "REPL" })
vim.keymap.set("n", "<leader>dt", dap.terminate, { desc = "Terminate" })

vim.keymap.set("n", "<leader>du", dapui.toggle, { desc = "Toggle UI" })
vim.keymap.set({ "n", "v" }, "<leader>de", dapui.eval, { desc = "Eval" })
