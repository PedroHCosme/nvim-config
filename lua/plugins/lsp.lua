-- ========================================================================== --
-- ==                                 LSP                                  == --
-- ========================================================================== --
-- Configuração do Language Server Protocol (LSP).
-- A autocompletação é fornecida pelo GitHub Copilot.

return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- Gerenciador de servidores LSP
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      local lspconfig = require("lspconfig")
      local mason = require("mason")
      local mason_lspconfig = require("mason-lspconfig")

      -- Inicializar Mason para gerenciar LSPs
      mason.setup()

      -- Lista de servidores LSP para instalar automaticamente
      local servers = {
        "lua_ls",
        "cssls",
        "html",
        "tsserver",
        "pyright",
        "rust_analyzer",
        "gopls",
      }

      mason_lspconfig.setup({
        ensure_installed = servers,
      })

      -- Função a ser executada quando um servidor LSP é anexado a um buffer
      local on_attach = function(client, bufnr)
        local keymap = vim.keymap
        local opts = { noremap = true, silent = true, buffer = bufnr }

        -- Atalhos do LSP
        keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        keymap.set("n", "K", vim.lsp.buf.hover, opts)
        keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
        keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
        keymap.set("n", "gr", vim.lsp.buf.references, opts)
      end

      -- Configurar cada servidor LSP
      mason_lspconfig.setup_handlers({
        function(server_name)
          lspconfig[server_name].setup({
            on_attach = on_attach,
          })
        end,
      })
    end,
  },
}
