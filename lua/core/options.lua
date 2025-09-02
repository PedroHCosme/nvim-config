-- Configurações do editor
opt.number = true -- Mostrar números das linhas
opt.relativenumber = true -- Mostrar números relativos das linhas
opt.mouse = "a" -- Habilitar o mouse em todos os modos
opt.ignorecase = true -- Ignorar maiúsculas/minúsculas na busca
opt.smartcase = true -- Considerar maiúsculas/minúsculas se houver uma na busca
opt.hlsearch = false -- Não destacar permanentemente os resultados da busca
opt.wrap = false -- Desabilitar quebra de linha automática
opt.breakindent = true -- Manter a indentação em linhas quebradas
opt.tabstop = 2 -- Largura do tab
opt.shiftwidth = 2 -- Largura da indentação
opt.expandtab = true -- Usar espaços em vez de tabs
opt.signcolumn = "yes" -- Sempre mostrar a coluna de sinais (para LSP, Git, etc.)
opt.termguicolors = true -- Habilitar cores de 24-bit
opt.showmode = false -- Não mostrar o modo atual (a lualine fará isso)
opt.scrolloff = 8 -- Manter 8 linhas de contexto acima/abaixo do cursor

-- Highlight ao copiar (yank)
local aug = vim.api.nvim_create_augroup("user_cmds", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight on yank",
  group = aug,
  callback = function()
    vim.highlight.on_yank({ higroup = "Visual", timeout = 200 })
  end,
})

-- Comando para recarregar a configuração
vim.api.nvim_create_user_command("ReloadConfig", "source $MYVIMRC", {})
