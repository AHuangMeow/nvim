vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.fillchars:append({ eob = "." })

vim.opt.clipboard = "unnamedplus"

vim.opt.wrap = false
vim.opt.sidescrolloff = 8

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2

local indents = {
	go = { size = 4, tab = true },
	make = { size = 8, tab = true },
	rust = { size = 4 },
	zig = { size = 4 },
	c = { size = 4 },
	cpp = { size = 4 },
	java = { size = 4 },
	kotlin = { size = 4 },
	python = { size = 4 },
}

vim.api.nvim_create_autocmd("FileType", {
	callback = function(args)
		local opt = indents[vim.bo[args.buf].filetype]
		if not opt then
			return
		end
		vim.bo[args.buf].expandtab = not opt.tab
		vim.bo[args.buf].tabstop = opt.size
		vim.bo[args.buf].shiftwidth = opt.size
		vim.bo[args.buf].softtabstop = opt.size
	end,
})
