-- ========================================================================== --
-- ==                        PLUGINS DE INTERFACE                            == --
-- ========================================================================== --

return {
  -- Tema principal
  {
    "folke/tokyonight.nvim",
    lazy = false, -- Carregar sempre no início
    priority = 1000, -- Prioridade alta para garantir que o tema seja aplicado primeiro
    config = function()
      vim.cmd.colorscheme("tokyonight")
    end,
  },

  -- Ícones para a UI
  { "nvim-tree/nvim-web-devicons", lazy = true },

  -- Barra de status
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme = "tokyonight",
          icons_enabled = true,
          component_separators = "|",
          section_separators = "",
          disabled_filetypes = { statusline = { "NvimTree" } },
        },
      })
    end,
  },

  -- Barra de abas/buffers
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("bufferline").setup({
        options = {
          mode = "buffers",
          offsets = { { filetype = "NvimTree", text = "File Explorer", text_align = "center" } },
          separator_style = "thin",
          always_show_bufferline = true,
        },
        highlights = {
          buffer_selected = { italic = false },
          indicator_selected = {
            fg = { attribute = "fg", highlight = "Function" },
            italic = false,
          },
        },
      })
    end,
  },

  -- Linhas de indentação
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    config = function()
        require("ibl").setup({
        enabled = true,
        scope   = { enabled = false },
        indent  = { char = "▏" },
      })
    end,
  },
}