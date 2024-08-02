vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", function()
  vim.lsp.buf.format() -- Format the buffer
  vim.cmd("w!") -- Force write
end, { desc = "Force write and format" })
vim.keymap.set("n", "<leader>q", ":q!<CR>", { desc = "Force quit" })

