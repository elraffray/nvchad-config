require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "rust_analyzer" }
vim.lsp.enable(servers)

vim.lsp.config('rust_analyzer', {
  -- Server-specific settings. See `:help lsp-quickstart`
  settings = {
    ['rust-analyzer'] = {
      cargo = {
        buildScripts = {
          enable = true
        }
      },
      procMacro = {
        enable = true
      }
    },
  },
})

-- read :h vim.lsp.config for changing options of lsp servers
