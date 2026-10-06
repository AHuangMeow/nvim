vim.pack.add({
	"https://github.com/saghen/blink.cmp",
})

local cmp = require("blink.cmp")
cmp.build():pwait()
cmp.setup({
	keymap = {
		preset = "none",

		["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
		["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
		["<C-n>"] = { "select_next" },
		["<C-p>"] = { "select_prev" },
		["<Down>"] = { "select_next", "fallback" },
		["<Up>"] = { "select_prev", "fallback" },

		["<CR>"] = { "accept", "fallback" },
		["<C-c>"] = { "cancel", "fallback" },

		["<C-x>"] = { "show" },

		["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
		["<C-b>"] = { "scroll_documentation_up", "fallback" },
		["<C-f>"] = { "scroll_documentation_down", "fallback" },
		["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
	},
})
