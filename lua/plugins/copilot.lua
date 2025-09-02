-- ========================================================================== --
-- ==                           GITHUB COPILOT                             == --
-- ========================================================================== --
-- Configuração para o plugin oficial em Lua, que inclui suporte ao Chat.

return {
  {
    "github/Copilot.nvim",
    cmd = "Copilot",
    event = "InsertEnter", -- Carrega o plugin ao entrar no modo de inserção
    config = function()
      require("copilot").setup({
        -- O painel mostra múltiplas sugestões
        panel = {
          enabled = true,
          auto_refresh = true,
        },
        -- Sugestões inline (autocompletar)
        suggestion = {
          enabled = true,
          auto_trigger = true,
          -- Mapeamentos para as sugestões
          keymap = {
            accept = "<C-l>", -- Usar Ctrl+L para aceitar (evita conflitos com Tab)
            dismiss = "<C-e>", -- Usar Ctrl+E para dispensar
            next = "<M-]>",
            prev = "<M-[>",
          },
        },
        -- Desabilitar em certos tipos de arquivo
        filetypes = {
          yaml = false,
          markdown = true,
          help = false,
          gitcommit = false,
          gitrebase = false,
          ["."] = false,
        },
      })

      -- Atalhos para o Copilot Chat
      local keymap = vim.keymap
      -- Abrir o chat em um painel vertical
      keymap.set("n", "<leader>cc", function()
        require("copilot.panel").open({ layout = { position = "right", size = 0.5 } })
      end, { desc = "Copilot - Chat" })

      -- Usar o chat com o texto selecionado
      keymap.set("v", "<leader>cc", ":<C-u>Copilot chat<cr>", { desc = "Copilot - Chat com seleção" })
    end,
  },
}
