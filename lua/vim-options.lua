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

-- characters shortcuts
vim.api.nvim_set_keymap("n", "<leader>ll", "iλ<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>st", ":SupermavenStart<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>sp", ":SupermavenStop<CR>", { noremap = true, silent = true })

vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	group = "YankHighlight",
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 150 })
	end,
})
