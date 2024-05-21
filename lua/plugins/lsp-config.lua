return {
  {
    "Hrle97/nvim.diagnostic_virtual_text_config",
    config = function()
      require("nvim.diagnostic_virtual_text_config").setup({})
    end,
  },
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
        "marksman",  -- markdown
        "jdtls",     -- java
        "omnisharp", -- c#
        "elixirls",
        "emmet_ls",  -- jsx & tsx
        "jsonls",
        "cssls",
        "rust_analyzer",
        "lua_ls",
        "tsserver",
        "html",
        "gopls",
        "zls",
        "pyright",
        "clangd",
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

      lspconfig.marksman.setup({
        capabilities = capabilities,
      })

      lspconfig.jdtls.setup({
        capabilities = capabilities,
      })

      lspconfig.omnisharp.setup({
        capabilities = capabilities,
      })

      lspconfig.elixirls.setup({
        capabilities = capabilities,
        cmd = { "/home/greff/.local/share/nvim/mason/packages/elixir-ls/language_server.sh" },
      })

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

      lspconfig.zls.setup({
        capabilities = capabilities
      })

      lspconfig.pyright.setup({
        capabilities = capabilities
      })

      lspconfig.clangd.setup({
        capabilities = capabilities
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
