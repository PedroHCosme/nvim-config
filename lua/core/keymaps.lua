-- ========================================================================== --
-- ==                         ATALHOS DE TECLADO                             == --
-- ========================================================================== --
-- Atalhos que não dependem de plugins específicos

local keymap = vim.keymap

-- Navegação
keymap.set({ "n", "x", "o" }, "<leader>h", "^", { desc = "Ir para o início da linha" })
keymap.set({ "n", "x", "o" }, "<leader>l", "g_", { desc = "Ir para o fim da linha" })

-- Selecionar tudo
keymap.set("n", "<leader>a", ":keepjumps normal! ggVG<cr>", { desc = "Selecionar tudo", silent = true })

-- Atalhos para o clipboard do sistema
keymap.set({ "n", "x" }, "gy", '"+y', { desc = "Copiar para o clipboard do sistema" })
keymap.set({ "n", "x" }, "gp", '"+p', { desc = "Colar do clipboard do sistema" })

-- Deletar sem enviar para o clipboard
keymap.set({ "n", "x" }, "x", '"_x', { desc = "Deletar sem copiar" })
keymap.set({ "n", "x" }, "X", '"_d', { desc = "Deletar sem copiar" })

-- Salvar e gerenciar buffers
keymap.set("n", "<leader>w", "<cmd>write<cr>", { desc = "Salvar arquivo" })
keymap.set("n", "<leader>bq", "<cmd>bdelete<cr>", { desc = "Fechar buffer" })

-- Navegação entre janelas
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Mover para janela à esquerda" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Mover para janela abaixo" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Mover para janela acima" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Mover para janela à direita" })

-- Atalhos para gerenciamento de janelas
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Dividir janela verticalmente" }) -- sv = split vertical
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Dividir janela horizontalmente" }) -- sh = split horizontal
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Tornar janelas iguais" }) -- se = split equal
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "Fechar janela atual" }) -- sx = split close

-- Atalhos para gerenciamento de abas
keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "Nova aba" }) -- to = tab open
keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Fechar aba atual" }) -- tx = tab close
keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "Próxima aba" }) -- tn = tab next
keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "Aba anterior" }) -- tp = tab previous

-- Atalho para o NvimTree
keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { desc = "Abrir/Fechar o explorador de arquivos" })
