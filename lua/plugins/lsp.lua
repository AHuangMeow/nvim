vim.lsp.config("*", {
	capabilities = require("blink.cmp").get_lsp_capabilities(),
})

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			runtime = { version = "LuaJIT" },
			workspace = {
				checkThirdParty = false,
				library = { vim.env.VIMRUNTIME },
			},
		},
	},
})

vim.diagnostic.config({
	virtual_text = true,
	severity_sort = true,
	float = { border = "single" },
})

local aug = vim.api.nvim_create_augroup("lsp", { clear = true })

vim.api.nvim_create_autocmd("BufWritePre", {
	group = aug,
	callback = function(args)
		local clients = vim.lsp.get_clients({ bufnr = args.buf, method = "textDocument/formatting" })
		if #clients > 0 then
			vim.lsp.buf.format({ async = false, timeout_ms = 2000 })
		end
	end,
})

vim.api.nvim_create_autocmd("LspAttach", {
	group = aug,
	callback = function(ev)
		local map = function(mode, lhs, rhs, desc)
			vim.keymap.set(mode, lhs, rhs, { buffer = ev.buf, desc = desc })
		end

		map("n", "<leader>j", "", "Jump")
		map("n", "<leader>jf", vim.lsp.buf.definition, "Definition")
		map("n", "<leader>jc", vim.lsp.buf.declaration, "Declaration")
		map("n", "<leader>jt", vim.lsp.buf.type_definition, "Type definition")
		map("n", "<leader>ji", vim.lsp.buf.implementation, "Implementation")
		map("n", "<leader>jr", vim.lsp.buf.references, "References")

		map("n", "<leader>l", "", "LSP")
		map("n", "<leader>lh", vim.lsp.buf.hover, "Hover document")
		map("n", "<leader>lr", vim.lsp.buf.rename, "Rename")
		map("n", "<leader>lf", function()
			vim.lsp.buf.format({ async = true })
		end, "Format")
		map({ "n", "x" }, "<leader>lc", vim.lsp.buf.code_action, "Code action")
		map("n", "<leader>ll", vim.diagnostic.setloclist, "Local diagnostic")
		map("n", "<leader>lg", vim.diagnostic.setqflist, "Global diagnostic")
		map("n", "<leader>ld", vim.lsp.buf.document_symbol, "Document symbol")
		map("n", "<leader>lw", vim.lsp.buf.workspace_symbol, "Workspace symbol")

		map("n", "]d", function()
			vim.diagnostic.jump({ count = 1 })
		end, "Next diagnostic")
		map("n", "[d", function()
			vim.diagnostic.jump({ count = -1 })
		end, "Previous diagnostic")
	end,
})
