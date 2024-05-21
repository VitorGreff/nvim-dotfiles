return {
  "lukas-reineke/lsp-format.nvim",
  config = function()
    local on_attach = require("lsp-format").on_attach
    local lspconfig = require("lspconfig")
    require("lsp-format").setup({})

    lspconfig.jdtls.setup({ on_attach = on_attach })
    lspconfig.elixirls.setup({ on_attach = on_attach })
    lspconfig.emmet_ls.setup({ on_attach = on_attach })
    lspconfig.cssls.setup({ on_attach = on_attach })
    lspconfig.rust_analyzer.setup({ on_attach = on_attach })
    lspconfig.gleam.setup({ on_attach = on_attach })
    lspconfig.lua_ls.setup({ on_attach = on_attach })
    lspconfig.tsserver.setup({ on_attach = on_attach })
    lspconfig.html.setup({ on_attach = on_attach })
    lspconfig.gopls.setup({ on_attach = on_attach })
    lspconfig.pyright.setup({ on_attach = on_attach })
    lspconfig.clangd.setup({ on_attach = on_attach })
  end,
}
