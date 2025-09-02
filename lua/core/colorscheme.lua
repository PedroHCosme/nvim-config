-- ========================================================================== --
-- ==                         GERENCIADOR DE TEMAS                         == --
-- ========================================================================== --

-- Função para definir o tema
local function setTheme(theme)
  -- Define o tema para o lualine, se ele estiver carregado
  local lualine_ok, lualine = pcall(require, "lualine")
  if lualine_ok then
    lualine.setup({
      options = {
        theme = theme,
        -- Mantém as outras opções do lualine
        icons_enabled = true,
        component_separators = "|",
        section_separators = "",
        disabled_filetypes = { statusline = { "NvimTree" } },
      },
    })
  end

  -- Define o colorscheme global
  vim.cmd("colorscheme " .. theme)
end

-- Cria comandos para trocar de tema
vim.api.nvim_create_user_command("Tokyonight", function()
  setTheme("tokyonight")
end, { desc = "Muda o tema para Tokyonight" })

vim.api.nvim_create_user_command("Kanagawa", function()
  setTheme("kanagawa-lotus") -- O tema do Kanagawa é 'kanagawa-wave'
end, { desc = "Muda o tema para Kanagawa" })
