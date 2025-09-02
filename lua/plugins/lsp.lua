-- = an======================================================================= --
-- ==                                  LSP                                 == --
-- ========================================================================== --
return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        -- CORREÇÃO 1: Nome do servidor para TypeScript/JavaScript corrigido aqui
        ensure_installed = {
          "lua_ls",
          "typescript-language-server", -- 'tsserver' foi renomeado para o nome correto do pacote do Mason
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("lspconfig.util").default_capabilities()

      -- Função a ser executada quando um servidor LSP é anexado a um buffer
      local on_attach = function(client, bufnr)
        local map = function(keys, func, desc)
          vim.keymap.set("n", keys, func, { buffer = bufnr, noremap = true, silent = true, desc = desc })
        end

        -- Atalhos do LSP
        map("gD", vim.lsp.buf.declaration, "Ir para declaração")
        map("gd", vim.lsp.buf.definition, "Ir para definição")
        map("K", vim.lsp.buf.hover, "Mostrar documentação (hover)")
        map("gi", vim.lsp.buf.implementation, "Ir para implementação")
        map("<leader>ca", vim.lsp.buf.code_action, "Ações de código")
        map("<leader>cr", vim.lsp.buf.rename, "Renomear")
      end

      -- Lista de servidores que o lspconfig irá configurar
      -- (aqui usamos os nomes que o lspconfig entende, como 'tsserver')
      local servers = { "lua_ls", "tsserver" }

      for _, server_name in ipairs(servers) do
        -- CORREÇÃO 2: 'setup_handlers' foi trocado por 'setup'
        lspconfig[server_name].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end
    end,
  },
}