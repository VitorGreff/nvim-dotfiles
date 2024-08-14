return {
	-- {
	--   "Hrle97/nvim.diagnostic_virtual_text_config",
	--   config = function()
	--     require("nvim.diagnostic_virtual_text_config").setup({})
	--   end,
	-- },
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
			ensure_installed = {
				"elixirls",
				"emmet_ls", -- jsx & tsx
				"jsonls",
				"cssls",
				"rust_analyzer",
				"lua_ls",
				"tsserver",
				"html",
				"gopls",
				"pyright",
				"clangd",
				-- "tailwindcss",
				"angularls",
				"somesass_ls",
				"zls",
				"svelte",
				"marksman",
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

			lspconfig.elixirls.setup({
				capabilities = capabilities,
				cmd = { "/home/greff/.local/share/nvim/mason/packages/elixir-ls/language_server.sh" },
			})

			lspconfig.emmet_ls.setup({
				capabilities = capabilitiesE,
				filetypes = { "typescriptreact", "javascriptreact", "css", "sass", "scss", "less" },
				init_options = {
					html = {
						options = {
							["bem.enabled"] = true,
						},
					},
				},
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
				filetypes = { "html", "angular.html" },
				capabilities = capabilities,
			})

			lspconfig.gopls.setup({
				settings = {
					gopls = {
						analyses = {
							unusedparams = true,
						},
						staticcheck = true,
						gofumpt = true,
					},
				},
			})

			lspconfig.pyright.setup({
				capabilities = capabilities,
			})

			lspconfig.clangd.setup({
				capabilities = capabilities,
			})

			lspconfig.svelte.setup({
				capabilities = capabilities,
			})

			lspconfig.marksman.setup({
				capabilities = capabilities,
			})

			local project_library_path = "/usr/local/lib/node_modules/@angular/language-service"
			local cmd = {
				"ngserver",
				"--stdio",
				"--tsProbeLocations",
				project_library_path,
				"--ngProbeLocations",
				project_library_path,
			}
			require("lspconfig").angularls.setup({
				filetypes = { "typescript", "html", "typescriptreact", "typescript.tsx", "angular.html" },
				cmd = cmd,
				on_new_config = function(new_config, new_root_dir)
					new_config.cmd = cmd
				end,
			})

			lspconfig.somesass_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.zls.setup({
				capabilities = capabilities,
			})

			-- hover info
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			-- function definition
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			-- code actions
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
