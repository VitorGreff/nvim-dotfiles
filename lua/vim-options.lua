vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", ":w!<CR>", { desc = "Force write" })
vim.keymap.set("n", "<leader>q", ":q!<CR>", { desc = "Force quit" })

