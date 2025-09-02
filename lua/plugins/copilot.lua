-- ========================================================================== --
-- ==                                COPILOT                               == --
-- ========================================================================== --

return {
  {
    "github/copilot.vim",
    -- As configurações são feitas via variáveis globais (vim.g)
    -- e não precisam de uma função 'config' para este plugin específico.
    init = function()
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
      vim.g.copilot_filetypes = {
        ["*"] = true,
      }
      -- O atalho para aceitar a sugestão é mapeado aqui
      -- Usar vim.api.nvim_set_keymap para compatibilidade
      vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { expr = true, noremap = true, silent = true })
    end,
    config = function()
        -- Atalho para o painel do Copilot
        vim.keymap.set("n", "<leader>cc", "<cmd>Copilot panel<cr>", { desc = "Abrir painel do Copilot" })
    end
  },
}
