vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Write" })
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })
vim.keymap.set("n", "<leader>!", "<cmd>q!<CR>", { desc = "Discard" })

vim.keymap.set("n", "<leader>s", "<cmd>wa<CR>", { desc = "Save" })
vim.keymap.set("n", "<leader>x", "<cmd>wqa!<CR>", { desc = "Exit" })

vim.keymap.set("n", "<Esc>", "<cmd>noh<CR>")

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("n", "<C-Up>", "<cmd>resize -2<CR>")
vim.keymap.set("n", "<C-Down>", "<cmd>resize +2<CR>")
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<CR>")

vim.keymap.set("n", "<S-Left>", "<cmd>tabprevious<CR>")
vim.keymap.set("n", "<S-Right>", "<cmd>tabnext<CR>")
vim.keymap.set("n", "<S-Down>", "<cmd>tabclose<CR>")

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")
