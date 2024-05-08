return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
			ensure_installed = {
				"gopls",
				"rust_analyzer",
				"cssls",
				"html",
				"jsonls",
				"emmet_ls",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local capabilitiesE = vim.lsp.protocol.make_client_capabilities()
			capabilitiesE.textDocument.completion.completionItem.snippetSupport = true

			--[[
			lspconfig.tailwindcss.setup({
				capabilities = capabilities,
			})
      --]]

			lspconfig.emmet_ls.setup({
				capabilities = capabilitiesE,
				filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less" },
				init_options = {
					html = {
						options = {
							["bem.enabled"] = true,
						},
					},
				},
			})

			lspconfig.html.setup({
				capabilities = capabilities,
			})

			lspconfig.jsonls.setup({
				capabilities = capabilities,
			})

			lspconfig.cssls.setup({
				capabilities = capabilities,
			})

			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
			})

			lspconfig.gleam.setup({
				capabilities = capabilities,
			})

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})

			lspconfig.html.setup({
				capabilities = capabilities,
			})

			lspconfig.gopls.setup({
				capabilities = capabilities,
			})

			-- hover info
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			-- function definition
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			-- code actions
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
	{
		"Hrle97/nvim.diagnostic_virtual_text_config",
		config = function()
			require("nvim.diagnostic_virtual_text_config").setup({
			})
		end,
	},
}
