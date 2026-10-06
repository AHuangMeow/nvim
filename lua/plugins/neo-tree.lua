vim.pack.add({
	{
		src = "https://github.com/nvim-neo-tree/neo-tree.nvim",
		version = vim.version.range("3"),
	},
})

require("neo-tree").setup({
	window = {
		width = 30,
		mappings = {
			["<space>"] = "none",
			["h"] = "open_split",
			["v"] = "open_vsplit",
			["s"] = "none",
			["S"] = "none",
		},
	},
})

vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", {
	desc = "Toggle explorer",
})
