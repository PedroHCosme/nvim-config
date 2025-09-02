-- ========================================================================== --
-- ==                              TELESCOPE                                 == --
-- ========================================================================== --

return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")

      telescope.setup({
        defaults = {
          path_display = { "truncate" },
          mappings = {
            i = {
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-j>"] = actions.move_selection_next,
              ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
            },
          },
        },
      })

      -- Carregar extensões
      telescope.load_extension("fzf")

      -- Atalhos do Telescope
      local keymap = vim.keymap
      keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Procurar arquivos" })
      keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Procurar por texto (grep)" })
      keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Procurar em buffers abertos" })
      keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Procurar ajuda" })
      keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", { desc = "Procurar arquivos recentes" })
    end,
  },
}
