local Terminal = require("toggleterm.terminal").Terminal

local opencode = Terminal:new({
	direction = "float",
	cmd = "opencode",
	on_open = function(term)
		vim.keymap.set("n", "q", "<cmd>close<CR>", { buffer = term.bufnr, silent = true })
	end,
})

vim.keymap.set("n", "<leader>o", function()
	opencode:toggle()
end, { desc = "Opencode" })
