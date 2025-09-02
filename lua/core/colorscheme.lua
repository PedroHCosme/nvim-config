-- ========================================================================== --
-- ==                         GERENCIADOR DE TEMAS                         == --
-- ========================================================================== --

-- Função para definir o tema
local function setTheme(theme, lualine_theme)
  lualine_theme = lualine_theme or theme
  -- Define o tema para o lualine, se ele estiver carregado
  local lualine_ok, lualine = pcall(require, "lualine")
  if lualine_ok then
    lualine.setup({
      options = {
        theme = lualine_theme,
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
  -- Garante que a variante escura seja carregada
  require("tokyonight").setup({ style = "night" })
  setTheme("tokyonight")
end, { desc = "Muda o tema para Tokyonight (escuro)" })

vim.api.nvim_create_user_command("TokyonightLight", function()
  -- Carrega a variante clara
  require("tokyonight").setup({ style = "day" })
  setTheme("tokyonight-day", "tokyonight") -- Usa o tema 'tokyonight' para lualine
end, { desc = "Muda o tema para Tokyonight (claro)" })

vim.api.nvim_create_user_command("Kanagawa", function()
  setTheme("kanagawa-wave")
end, { desc = "Muda o tema para Kanagawa" })

vim.api.nvim_create_user_command("Nightfox", function()
  setTheme("nightfox")
end, { desc = "Muda o tema para Nightfox" })

vim.api.nvim_create_user_command("Dayfox", function()
  setTheme("dayfox")
end, { desc = "Muda o tema para Dayfox (Nightfox claro)" })
