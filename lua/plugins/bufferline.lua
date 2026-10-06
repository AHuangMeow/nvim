vim.pack.add({
	"https://github.com/akinsho/bufferline.nvim",
})

require("bufferline").setup({
	options = {
		style = "minimal",
		separator_style = "none",
		offsets = {
			{
				filetype = "neo-tree",
				text = " Neovim",
				text_align = "left",
				highlight = "Directory",
			},
		},
	},
})

vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<S-j>", ":bdelete<CR>")
