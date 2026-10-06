vim.pack.add({
	"https://github.com/sindrets/diffview.nvim",
})

require("diffview").setup({
	enhanced_diff_hl = true,
})

vim.keymap.set("n", "<leader>go", "<cmd>DiffviewOpen<CR>", { desc = "Open diffview" })
vim.keymap.set("n", "<leader>gq", "<cmd>DiffviewClose<CR>", { desc = "Close diffview" })
vim.keymap.set("n", "<leader>gc", "<cmd>DiffviewFileHistory %<CR>", { desc = "File history (current)" })
vim.keymap.set("n", "<leader>gr", "<cmd>DiffviewFileHistory<CR>", { desc = "File history (repo)" })
