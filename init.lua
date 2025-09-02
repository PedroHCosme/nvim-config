-- ========================================================================== --
-- ==                             PONTO DE ENTRADA                           == --
-- ========================================================================== --
-- Este arquivo será o único ponto de entrada para a configuração.
-- Ele é responsável por carregar as opções base e inicializar o lazy.nvim.

-- Carrega as opções do editor
require("core.options")

-- Carrega os atalhos de teclado base
require("core.keymaps")

-- Bootstrap do lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Configura o lazy.nvim para carregar os plugins do diretório 'lua/plugins'
require("lazy").setup("plugins", {
  checker = {
    enabled = true,
    notify = true,
  },
  change_detection = {
    notify = true,
  },
})

-- Carrega e configura os comandos de tema APÓS o setup do lazy
require("core.colorscheme")
