vim.pack.add({
	"https://github.com/akinsho/toggleterm.nvim",
})

require("toggleterm").setup({
	size = function(term)
		if term.direction == "vertical" then
			return 40
		elseif term.direction == "horizontal" then
			return 10
		end
	end,
})

local Terminal = require("toggleterm.terminal").Terminal

local horizontal = Terminal:new({
	direction = "horizontal",
	on_open = function(term)
		vim.keymap.set("n", "q", "<cmd>close<CR>", { buffer = term.bufnr, silent = true })
	end,
})
local vertical = Terminal:new({
	direction = "vertical",
	on_open = function(term)
		vim.keymap.set("n", "q", "<cmd>close<CR>", { buffer = term.bufnr, silent = true })
	end,
})
local float = Terminal:new({
	direction = "float",
	on_open = function(term)
		vim.keymap.set("n", "q", "<cmd>close<CR>", { buffer = term.bufnr, silent = true })
	end,
})

vim.keymap.set("n", "<leader>t", "", { desc = "Terminal" })

vim.keymap.set("n", "<leader>tt", function()
	horizontal:toggle()
end, { desc = "Horizontal" })
vim.keymap.set("n", "<leader>tv", function()
	vertical:toggle()
end, { desc = "Vertical" })
vim.keymap.set("n", "<leader>tf", function()
	float:toggle()
end, { desc = "Float" })
