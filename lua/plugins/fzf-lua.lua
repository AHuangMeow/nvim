vim.pack.add({
	"https://github.com/ibhagwan/fzf-lua",
})

require("fzf-lua").setup({})
require("fzf-lua").register_ui_select()
