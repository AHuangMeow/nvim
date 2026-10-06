vim.pack.add({
	"https://github.com/folke/noice.nvim",
})

require("noice").setup({
	views = {
		cmdline_popup = {
			position = { row = "10%" },
			border = { style = "single" },
		},
	},
})
