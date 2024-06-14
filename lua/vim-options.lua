vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set clipboard+=unnamedplus") -- use the system clipboard
vim.cmd("set smartindent")
vim.cmd("set autoindent")
vim.cmd("set relativenumber")
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>bd", ":bd<CR>") -- close buffer
vim.keymap.set("n", "<leader>w", ":w<CR>") -- save buffer
vim.keymap.set("n", "<leader>qq", ":wqa<CR>") -- save all buffers and close
vim.keymap.set("n", "<leader>q", ":q<CR>") -- quit
