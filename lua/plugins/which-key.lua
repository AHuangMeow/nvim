vim.pack.add({
	"https://github.com/folke/which-key.nvim",
})

require("which-key").setup({
	preset = "helix",
	win = {
		border = "single",
		title = false,
	},
	delay = 0,
})
