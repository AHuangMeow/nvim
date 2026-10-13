vim.pack.add({
	"https://github.com/ibhagwan/fzf-lua",
})

require("fzf-lua").setup({})
require("fzf-lua").register_ui_select()

local fzf_ui_select = vim.ui.select
vim.ui.select = function(items, opts, on_choice)
	if opts and opts.kind == "mason.ui.language-filter" then
		return fzf_ui_select(items, opts, function(choice, idx)
			if on_choice then
				on_choice(choice, idx)
			end
			vim.defer_fn(function()
				for _, win in ipairs(vim.api.nvim_list_wins()) do
					if vim.bo[vim.api.nvim_win_get_buf(win)].filetype == "mason" then
						return
					end
				end
				require("mason.ui").open()
			end, 50)
		end)
	end
	return fzf_ui_select(items, opts, on_choice)
end
