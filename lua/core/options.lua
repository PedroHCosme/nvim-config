-- ========================================================================== --
-- ==                           EDITOR SETTINGS                            == --
-- ========================================================================== --

local opt = vim.opt -- Esta linha corrige o erro

-- aparência
opt.number = true -- mostrar número das linhas
opt.relativenumber = true -- mostrar número relativo das linhas
opt.signcolumn = "yes" -- sempre mostrar a coluna de sinais
opt.termguicolors = true -- habilitar cores true color

-- comportamento
opt.mouse = "a" -- habilitar o mouse
opt.wrap = true -- quebrar linhas longas
opt.breakindent = true -- manter a indentação na quebra de linha
opt.hlsearch = false -- não destacar buscas
opt.ignorecase = true -- ignorar maiúsculas/minúsculas na busca
opt.smartcase = true -- a menos que a busca contenha uma letra maiúscula

-- indentação
opt.tabstop = 2 -- tamanho do tab
opt.shiftwidth = 2 -- tamanho da indentação
opt.expandtab = true -- usar espaços em vez de tabs
opt.autoindent = true -- auto-indentar

-- outros
vim.g.mapleader = " " -- definir a tecla leader como espaço