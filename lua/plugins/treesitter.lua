-- ========================================================================== --
-- ==                              TREESITTER                                == --
-- ========================================================================== --

return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        highlight = { enable = true },
        indent = { enable = true },
        textobjects = {
          select = {
            enable = true,
            lookahead = true,
            keymaps = {
              ["af"] = "@function.outer",
              ["if"] = "@function.inner",
              ["ac"] = "@class.outer",
              ["ic"] = "@class.inner",
            },
          },
        },
        ensure_installed = {
          "javascript", "typescript", "tsx", "lua", "python",
          "vim", "vimdoc", "css", "json", "html", "rust", "go",
        },
        auto_install = true, -- Instalar parsers automaticamente
      })
    end,
  },
}
