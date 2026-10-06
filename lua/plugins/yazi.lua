local Terminal = require("toggleterm.terminal").Terminal

local opencode = Terminal:new({
	direction = "float",
	cmd = "yazi",
	on_open = function(term)
		vim.keymap.set("n", "q", "<cmd>close<CR>", { buffer = term.bufnr, silent = true })
	end,
})

vim.keymap.set("n", "<leader>y", function()
	opencode:toggle()
end, { desc = "Yazi" })
