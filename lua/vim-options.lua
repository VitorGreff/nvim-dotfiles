vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- vim.keymap.set("n", "<leader>w", function()
-- 	vim.lsp.buf.format() -- Format the buffer
-- 	vim.cmd("w!") -- Force write
-- end, { desc = "Force write and format" })

vim.keymap.set("n", "<leader>w", function()
  -- Check if the current buffer is a Go file
  if vim.bo.filetype == "go" then
    vim.lsp.buf.format()
    -- Organize imports
    vim.lsp.buf.code_action({ context = { only = { "source.organizeImports" } }, apply = true })
    -- format again to apply the changes
    vim.lsp.buf.format()
  else
    vim.lsp.buf.format()
  end

  -- Force write
  vim.cmd("w!")
end, { desc = "Force write, format, and organize imports (Go-specific)" })

vim.keymap.set("n", "<leader>q", ":q!<CR>", { desc = "Force quit" })

-- characters shortcuts
vim.api.nvim_set_keymap("n", "<leader>ll", "iλ<Esc>", { noremap = true, silent = true })

-- supermaven
vim.api.nvim_set_keymap("n", "<leader>st", ":SupermavenStart<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>sp", ":SupermavenStop<CR>", { noremap = true, silent = true })

vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  group = "YankHighlight",
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 150 })
  end,
})

vim.keymap.set("n", "<leader>e", function()
  vim.diagnostic.open_float(nil, { focus = false, scope = "cursor" })
end, { noremap = true, silent = true, desc = "Open diagnostic float" })

-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
--   underline = true,
--   virtual_text = false,
-- })
