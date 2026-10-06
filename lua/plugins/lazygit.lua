local Terminal = require("toggleterm.terminal").Terminal

local lazygit = Terminal:new({
	direction = "float",
	cmd = "lazygit",
	on_open = function(term)
		vim.keymap.set("n", "q", "<cmd>close<CR>", { buffer = term.bufnr, silent = true })
	end,
})

vim.keymap.set("n", "<leader>g", "", { desc = "Git" })
vim.keymap.set("n", "<leader>gg", function()
	lazygit:toggle()
end, { desc = "Lazygit" })
