-- ========================================================================== --
-- ==                    PLUGINS DE EDIÇÃO E UTILITÁRIOS                   == --
-- ========================================================================== --
return {
  -- Comentários
  {
    "numToStr/Comment.nvim",
    opts = {},
  },

  -- Guia de atalhos
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      require("which-key").setup({})

      -- Registrar menus para os atalhos com leader
      local wk = require("which-key")
      wk.register({
        f = { name = "[F]ind", _ = "which_key_ignore" },
        b = { name = "[B]uffer", _ = "which_key_ignore" },
        c = { name = "[C]opilot / [C]ode", _ = "which_key_ignore" }, -- Adicionado para agrupar Copilot e Code Actions
      }, { prefix = "<leader>" })
    end,
  },

  -- Outros plugins que você já tinha
  { "tpope/vim-surround" },
  { "wellle/targets.vim" },
  { "tpope/vim-repeat" },
  { "moll/vim-bbye" },
  { "akinsho/toggleterm.nvim", version = "*", opts = { open_mapping = [[<c-g>]], direction = "horizontal" } },
}
