vim.pack.add({
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/mason-org/mason-lspconfig.nvim",
})

require("mason").setup({})
require("mason-lspconfig").setup({
	automatic_enable = true,
})

vim.keymap.set("n", "<leader>m", "<cmd>Mason<CR>", { desc = "Mason" })
